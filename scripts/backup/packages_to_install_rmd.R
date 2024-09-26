
# Essential R packages for Applied Epi's advanced R Markdown course
# Offered by Applied Epi (www.appliedepi.org)

# INSTRUCTIONS:
# 1. Ensure you have a good internet connection.
# 2. Highlight ALL of the text & code in this R script (this entire document).
# 3. Click the "Run" button in the upper-right corner of this pane.
# 4. R will run for some time as it downloads the R packages to your computer.
#    You will see it processing the downloads in the "Console" below.
#    If you see the word "warning" that is generally OK.
#    If you see the word "error", something is wrong.
# 5. After the downloads finish (the ">" appears again in the Console),
#    test it by pasting the below text in the Console and pressing Enter:
#    library(tidyverse)
#    There should be no error message.
# 6. Contact your instructor with questions


# Below are R commands that automatically install the R packages

# Ensures the package "pacman" is installed
install.packages("pacman")


# Downloads and installs packages (if they are not already installed)
#####################################################################
pacman::p_load(

     # project and file management
     #############################
     here,     # file paths relative to R project root folder
     rio,      # import/export of many types of data

     # package install and management
     ################################
     remotes,  # install from github

     # general data management
     #########################
     tidyverse,    # includes many packages for tidy data wrangling and presentation
     skimr,        # data exploration
     epikit,       # useful epi functions
     lubridate,    # dates and times
     stringr,      # handling characters

     # tables and statistics
     #######################
     janitor,      # tables and data cleaning
     gtsummary,    # making descriptive and statistical tables

     # plots - general
     #################
     #ggplot2,         # included in tidyverse
     cowplot,          # combining plots
     RColorBrewer,     # color scales
     gghighlight,      # highlight a subset
     tsibble,          # epiweeks
     viridis,          # colorblind-friendly scales
     scales,           # helper functions
     apyramid,         # age and sex pyramids

     # routine reports
     #################
     rmarkdown,        # produce PDFs, Word Documents, Powerpoints, and HTML files

     # tables for presentation
     #########################
     knitr,             # R Markdown report generation and html tables
     flextable,         # HTML tables
     officer,           # formatting

     # advanced plotting
     crosstalk,     # put data in the right format for HTML widgets
     DT,            # handles Data Tables in flexdashboard
     plotly,        # create interactive plots along with ggplot
     leaflet,       # create interactive plots
     sf,            # putting data in the right format to create maps
     tmap,          # create interactive maps
     epicontacts,   # data manipulation and analysis for contact tracing data
     visNetwork,    # visualize contact networks
     xts,           # plot time series
     dygraphs,      # create interactive timer series plots

     # R Markdown slides
     xaringan,          # more advanced package for creating RMD slides
     xaringanthemer     # for styling presentations
)
