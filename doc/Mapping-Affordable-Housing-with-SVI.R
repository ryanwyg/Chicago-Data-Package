## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE
  # comment = "#>"
)

## -----------------------------------------------------------------------------
### load the relevant packages
library(ChicagoPackage)
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
afhouse <- read.csv("https://data.cityofchicago.org/api/views/s6ha-ppgi/rows.csv?accessType=DOWNLOAD")
afhouse <- dplyr::filter(afhouse, !is.na(Latitude))
affordable_housing <- sf::st_as_sf(afhouse, coords = c("Longitude", "Latitude"), crs = 4326)

## -----------------------------------------------------------------------------
###now lets load the svi data, an sf object by tract
chicago_svi <- chicago_svi
class(chicago_svi)

## -----------------------------------------------------------------------------
###now lets create a basic map using R_PL_THEME1, one of the SVI summary statistics, and the affordable housing units

tm_shape(chicago_svi) + tm_polygons("R_PL_THEME1", palette = "Blues") + 
tm_shape(affordable_housing) + tm_dots()

