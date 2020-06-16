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

## -----------------------------------------------------------------------------
# Seeing the properties of the community area dataset
head(ca_boundaries)

# Plotting community areas, by the area
tm_shape(ca_boundaries) + tm_polygons("shape_area", palette = "Greens") +
  tm_layout(main.title = "Community Areas")

## -----------------------------------------------------------------------------
# Again, properties
head(census_tracts_2010)

# Plotting census tracts, by their community areas
tm_shape(census_tracts_2010) + tm_polygons("commarea", palette = "Set3") +
  tm_layout(main.title = "2010 Census Tracts")
# We notice that there is a warning message, saying that there are more levels of community areas than the color palette, which is fine. As a result, some areas are grouped using the same color, resulting in larger areas.

## -----------------------------------------------------------------------------
# Same procedures as before
head(police_beats2019)
tm_shape(police_beats2019) + tm_polygons("beat", palette = "Accent") +
  tm_layout(main.title = "Police Beats")

## -----------------------------------------------------------------------------
# Same procedures as before
head(wards2019)
tm_shape(wards2019) + tm_polygons("ward", palette = "Paired") +
  tm_layout(main.title = "Police Wards")

