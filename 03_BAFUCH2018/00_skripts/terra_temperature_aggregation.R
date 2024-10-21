library(sf) 
library(ncdf4)
library(terra)
library(RColorBrewer)
library(dplyr)

## -- shp 
# Load the shapefile and set its CRS to EPSG 2056, then transform to EPSG 4326
ezg <- vect("C:/Users/Simon/OneDrive - Universitaet Bern/03_Masterarbeit/data/Karte/geodaten/shape_ezg/CH-0103.shp")

## -- prepare data frame 
ts <- seq(ymd("1981-01-01"),ymd("2099-12-31"),by=1)
ch18_temp_means <- data.frame(day=ts)


#### -- for-loop 
## -- raster
# set path and filename
ncpath <- "D:/Klimdaten/CH2018/"
for (i in 1:66) {
  ncname <- list.files(ncpath)[i]
  
  ncfname <- paste(ncpath, ncname, sep="")
  dname <- "temp"  # temp = temperature
  
  # read in raster
  pr_raster <- rast(ncfname)
  
  # extract mean precip in ezg 
  new_col <- extract(pr_raster,ezg, fun = mean, na.rm=T)%>% as.numeric()
  # -> achtung: erster Eintrag ist ID-Bez aus Shapefile 
  new_col <- new_col[2:length(new_col)]
  
  # add to df
  name_col <- gsub(".nc","",ncname)
  ch18_temp_means[[name_col]] <- new_col
  
  print(paste( Sys.time(),"--------",ncname,"; added to the dataframe (",i,"/66)"))
}

colnames(ch18_temp_means) <- gsub("-",replacement = "_", names(ch18_temp_means))
write.table(ch18_temp_means,"temp_daily_means_stand.csv",sep = ";",dec = ".")

