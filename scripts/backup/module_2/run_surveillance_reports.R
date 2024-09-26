

# About this script ----------------------------------------------
# Purpose: To run the surveillance_report.Rmd script to produce multiple reports
# Author: YOUR NAME
# Date last updated: DATE
# Contact: YOUR EMAIL


# Instructions:
# 1) Ensure you have an RProject created in your course directory
# 2) Ensure your surveillance_report.RMD is located in the scripts folder
# 3) Ensure your surveillance linelist cleaned data is located in the "data"/"clean" subfolder
# 4) Ensure you have a district params in your YAML section of the surveillance_report.RMD
# 5) Ensure you filter your surveillance linelist in the surveillance_report.RMD using params$district
# 6) Decide whether you would like to run the reports with date stamp or time stamp in file names
# 7) Select the for loops from below

# Load packages  ----------------------------------------------

# The pacman package will install each package if necessary,
# and load it for use in the current session

pacman::p_load(
  rio,          # for importing data
  here,         # for locating files
  janitor,      # for data cleaning
  lubridate,    # for dates and times
  tidyverse     # for data management and visualization
)


# Import data ----------------------------------------------

surv <- import(here("data", "clean", "linelist_combined_20141201.rds")) # cleaned surveillance linelist

districts <- unique(surv$district) %>% na.omit()


# Render command ----------------------------------------------------------
# Render one reportWithout specified params

# with date
# this uses a "backup" Rmd. Modify the file path to use your own.
rmarkdown::render(
  input = here("scripts", "backup", "module_2", "surveillance_report.Rmd"),
  output_file = here("outputs", str_glue("surveillance_report_{format(Sys.Date(), format = '%Y%m%d')}.html"))
)


# with time
# this uses a "backup" Rmd. Modify the file path to use your own.
rmarkdown::render(
  input = here("scripts", "backup", "module_2", "surveillance_report.Rmd"),
  output_file = here("outputs", str_glue("surveillance_report_{format(Sys.time(), format = '%Y%m%d_%H%M%S_%Z')}.html"))
)

## With specified params and for loops
### Using Sys.Date() in file name
# Note d is an item place holder and the name (d) is arbitrary. The for loop will loop through districts, replacing the d in the for loop with the next district value in the district vector every time we loop through the for loop.

for(d in districts){  # open with curly bracket

  rmarkdown::render(
    input = here("scripts",  "backup", "module_2", "surveillance_report.Rmd"),
    output_file = here("outputs", str_glue("surveillance_report_{d}_{format(Sys.Date(), format = '%Y%m%d')}.html")),
    params = list(district = d)
  )
}  # close with curly bracket



### Using Sys.time() in file name
# Note d is an item place holder and the name (d) is arbitrary. The for loop will loop through districts, replacing the d in the for loop with the next district value in the district vector every time we loop through the for loop.

for(d in districts){  # open with curly bracket

  rmarkdown::render(
    input = here("scripts", "backup", "module_2", "surveillance_report.Rmd"),
    output_file = here("outputs", str_glue("surveillance_report_{d}_{format(Sys.time(), format = '%Y%m%d_%H%M%S_%Z')}.html")),
    params = list(district = d)
  )
}  # close with curly bracket



