# Files Water Scarcity Gürbetal

The folders represent three different R-Projects, which were used during this thesis

---

### 01_input_data
Analysis of existing data & baseflow analysis

- **00_data**  
  Gridded meteo data for Gürbe catchment (mean per variable for catchment area)  

  **Not provided data:**  
  - Meteo data: from IDAweb, MeteoSwiss  
  - Streamflow data: Muelchi et al. 2022  
    [Link to paper](https://rmets.onlinelibrary.wiley.com/doi/full/10.1002/gdj3.117)

- **01_graphs**  
  Various corresponding graphs

- **02_skripts**  
  Various scripts, each for analysis of different aspects of existing data

---

### 02_water stress index
Calculation of the Water Stress Index

- **Calculation Industry & Industrial Water Need:**  
  `water_demand.xlsx`

- **00_data**  
  - `bafu_ch18`: Input variables from BAFU CH2018 project (for Gürbe catchment)  
  - `bev`: Population & FTE data  
  - `irrigation`: Table of crop coefficients

- **01_graphs**  
  All graphs created during the Master’s thesis  
  - **Boxplots**: Various boxplots of input & output variables  
  - **com_brunner**: Plots comparing results to Brunner et al. 2019 results  
  - **lines_irrigation**: Line plots of variables relevant for irrigation calculation  
  - **regime_plot**: Regime plots comparing old & new WSI levels  
  - **scatter_und_histo**: Scatterplots and histograms of the single months/years distribution

- **02_skripts**  
  All scripts used to calculate the Water Stress Index and create graphs.  
  The relevant order to get the WSI list:  
  1. `functions.R`  
  2. `Penman_Monteith.R`  
  3. `drinking_and_industrial_water.R`  
  4. `livestock_water_demand.R`  
  5. `Q347_ecology_demand.R`  
  6. `preparation_Crop_coefficients.R`  
  7. `Calculate_Actual_Irrigation_Water_Need.R`  
  8. `water_stress_index.R`  

  After running these, you should have the WSI list and be able to recreate all plots, etc.

- **03_tables**  
  Various output tables from the R-project, saved as a backup

---

### 03_BAFUCH2018
Data manipulation of gridded BAFU CH2018 data

- **netCDF** → table catchment means

### Interview Transkripte
Folder containing transcripts of interview / notes of talks
	
R-Workspace/.RData files can be sent on request
