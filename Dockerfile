FROM rocker/tidyverse:4.0.0

COPY --chown=rstudio data_penguins.csv summarise_penguins.R /home/rstudio/
