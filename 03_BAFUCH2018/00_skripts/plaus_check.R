## check plausibility means 
rhires <- read.csv("rhires_data_daily_mean.csv")

t1 <- rhires[year(rhires$date)>1990&year(rhires$date)<2021,]
t1_mean_pr <- aggregate(t1$precip, by=list(month(t1$date)), FUN = mean)
plot(t1_mean_pr$Group.1,t1_mean_pr$x,type="l",ylab="mean daily pr [mm]",
     xlab="month (legend: black=obs rhires; blue=mod)", ylim=c(0,6),lwd=2, main = "1991-2020: precip Catchment Gürbe")

t1ch18 <- ch18_precip_means[year(ch18_precip_means$
                              day)>1990&year(ch18_precip_means$day)<2021,]
for(i in 2:dim(t1ch18)[2]){
  line <- aggregate(t1ch18[,i],by=list(month(t1ch18$day)), FUN = mean)
  lines(line[,1],line[,2],col="blue")
}

lines(t1_mean_pr$Group.1,t1_mean_pr$x,lwd=2,col="black")
rm(t1,rhires,t1ch18,line)



### --- 
t1_mean_t <- aggregate(t1$temp, by=list(month(t1$date)), FUN = mean)
plot(t1_mean_t$Group.1,t1_mean_t$x,type="l",ylab="mean daily t [C°]",
     xlab="month (legend: black=obs TabsD; blue=mod)", ylim=c(-5,20),lwd=2, main = "1991-2020: Temperature Catchment Gürbe")

t1ch18t <- ch18_temp_means[year(ch18_temp_means$
                                   day)>1990&year(ch18_temp_means$day)<2021,]
for(i in 2:dim(t1ch18t)[2]){
  line <- aggregate(t1ch18t[,i],by=list(month(t1ch18t$day)), FUN = mean, na.rm=T)
  lines(line[,1],line[,2],col="blue")
}

lines(t1_mean_t$Group.1,t1_mean_t$x,lwd=2,col="black")




apply(ch18_temp_means,MARGIN = 2,FUN = mean, na.rm=T)

ch18_temp_means[is.nan(ch18_temp_means[,66]),66]

ch18_temp_means[,66] %>% as.character() %>% as.numeric()# %>% mean()



# belp <- read.table("C:/Users/Simon/OneDrive - Universitaet Bern/03_Masterarbeit/data/00_rproject/water_scarcity_guerbe/00_data/meteodaten/belp/BEP_data.txt",
#            header = T,sep = ";",dec = ".")
# belp$time <- ymd(belp$time)
# belp$precip <- belp$precip %>% as.numeric()
# 
# line_belp <- aggregate(belp$precip,by=list(month(belp$time)),FUN=mean,na.rm=T)
# lines(line_belp[,1],line_belp[,2],col="red")
# --> zu geringer Zeitraum, Resultate nicht relevant


