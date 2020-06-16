## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
  # comment = "#>"
)

## -----------------------------------------------------------------------------
### load the relevant packages
#library(chicagodata) - not quite here yet! 
library(tmap)
library(sf)
library(rgeos)
library(rgdal)
library(spdep)
library(dplyr)

###download csv from the Chicago data portal and save it into the relevant working directory
#https://data.cityofchicago.org/Community-Economic-Development/Affordable-Rental-Housing-Developments/s6ha-ppgi

## -----------------------------------------------------------------------------
### loading the affordable housing csv into an sf object using csv_to_sf
#affordable_housing <- csv_to_sf("affordable_housing", "~/Downloads/Affordable_Rental_Housing_Developments", "Longitude", "Latitude", 4326)

## -----------------------------------------------------------------------------
###now lets load the svi data, an sf object by tract
#chicago_svi <- chicago_svi
#class(chicago_svi)

## -----------------------------------------------------------------------------
###now lets create a basic map using R_PL_THEME1, one of the SVI summary statistics, and the affordable housing units

#tm_shape(svi_shapes) + tm_polygons("R_PL_THEME1", palette = "Blues") + 
#tm_shape(affordable_housing) + tm_dots()

