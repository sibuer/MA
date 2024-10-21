# MA


The 3 R-Projects

-----------------------------------------------------------------------
01_input_data----------------------------------------------------------
analysis of existing data & baseflow analysis

00_data
gridded meteo data Gürbe catchment (mean per variable for ctm. area)

not provided data: 
	meteo data: from IDAweb, meteosuisse
	streamflow data: Muelchi et al. 2022; 
		https://rmets.onlinelibrary.wiley.com/doi/full/10.1002/gdj3.117

01_graphs
various corresponding graphs

02_skripts
various skripts, each for analysis of different aspect of 
	existing data


------------------------------------------------------------------------
02_water stress index --------------------------------------------------

Calculation Industry & industrial water need:
water_demand.xlsx

00_data
bafu_ch18: input variables from BAFU CH2018 project (for Gürbe ctm)
bev: population & FTE data
irrigation: table of crop coefficients

01_graphs
all graphs created during MA
	boxplots: div. boxplots of input & output variables
	com_brunner: plots comparing my results to Brunner et al. 
		2019 results
	lines_irrigation: lineplots of variables relevant for 
		irrigation calculation
	regime_plot: regime plots comparing old & new WSI levels
	scatter_und_histo: scatterplots and histogram of the single 
		months/years distribution

02_skripts
all scripts used to calculate water stress index and create graphs
relevant order to recieve WSI-list: 
	1. functions.R
	2. Penman_Monteith.R
	3. drinking_and_industrial_water.R
	4. livestock_water_demand.R
	5. Q347_ecology_demand.R
	6. preparation_Crop_coefficients.R
	7. Calculate Actual Irrigation Water Need.R
	8. water_stress_index.R
After that, you have the WSI List and should be able to recreate all plots etc. 

03_tables
div. outuput tables from R-project, saved as backup


------------------------------------------------------------------------
03_BAFUCH2018 ----------------------------------------------------------

Data Manipulation of gridded BAFU CH2018 data
netCDF -> table catchment means


------------------------------------------------------------------------------
Interview Transkripte --------------------------------------------------------
Folder containing transcripts of interview / notes of talks
	
R-Workspace/.RData files can be sent on request
