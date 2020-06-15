#' sf object of the current Chicago wards
#'
#' @details an sf dataset containing the geometry of wards in Chicago since 2015
#' (the last time a new city council was sworn in). Includes area, ID, and geometry.
#'
#' @format An sf object with 50 rows and 4 variables:
#' \describe{
#'   \item{shape_area}{area of ward in ? measurement}
#'   \item{ward}{id of ward}
#'   \item{geometry}{sfc multipolygon, crs = 4362}
#' }
#' @source \url{https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Wards-2015-/sp34-6z76}
"wards2019"

#' 2018-2019 CPS Progress report sf object
#'
#' A sf dataset containing the a selection of variables from CPS annual progress report.
#' @details Schools have been geolocated, with data (mostly) cleaned. This was a challenging dataset because of CPS
#' extremely sparse documentation
#'
#' @format An sf object with 660 rows and 55 variables:
#' \describe{
#'   \item{School_ID}{}
#'   \item{Short_Name}{}
#'   \item{Long_Name}{}
#'   ...
#'   \item{geometry}{sfc points, crs = 4362}
#' }
#' @source \url{https://data.cityofchicago.org/Education/Chicago-Public-Schools-School-Progress-Reports-SY1/dw27-rash}
"cpsPR2018_sf"

#' Cleaned sf SVI data on tract level
#'
#' @details A sf dataset containing selected variables from the CDCs Social Vulnerability Index.
#' Data is from the American Community Survey averaged between 2012-2016 and, accordingly, pure #s in variables
#' are estimated from this. I cleaned this down to a collection of variables that I thought
#' provided a good summary, but the original data is in data-raw with basic cleaning methods included.
#'
#' the documentation for this dataset is extensive:
#' https://svi.cdc.gov/Documents/Data/2016_SVI_Data/SVI2016Documentation.pdf
#'
#' @format An sf object with 801 rows and 14 variables:
#' \describe{
#'   \item{tractce10}{tract ID in numeric format (had to do some cleaning that made it no longer a 10-13 digit pin}
#'   \item{commarea}{numeric id of community area tract is in}
#'   \item{namelsad10}{?}
#'   \item{E_HU}{housing units estimate}
#'   \item{HH}{estimate of #of households}
#'   \item{E_POV}{number persons below poverty estimate}
#'   \item{E_UNEMP}{number civilians 16+ that are unemployed}
#'   \item{E_PCI}{per capita income estimate}
#'   \item{M_PCI}{margin of error on per capita income}
#'   \item{E_NOHSDIP}{persons 25+ that have no HS diploma}
#'   \item{MINORITY}{all persons except white, non hispanic, estimate}
#'   \item{E_LIMENG}{persons 5+ who speak Enligsh "less than well"}
#'   \item{R_PL_THEME1}{percentile ranking for socioeconomic theme summary - higher value is higher vulnerability}
#'   \item{geometry}{sfc polygon, crs = 4326}
#' }
#' @source \url{https://svi.cdc.gov/data-and-tools-download.html}
"chicago_svi"

#' sf object of divvy bike stations in Chicago
#'
#' @details A sf dataset containing information on each divvy bike station in Chicago metro area.
#' Updated Daily, most recent downloaded by me on May 13, it has daily information on each station
#' — could be fun/interesting to play with sequencing.
#'
#' @format An sf object with 608 rows and 13 variables:
#' \describe{
#'   \item{ID}{station ID}
#'   \item{Station.Name}{}
#'   \item{Address}{}
#'   \item{Total.Docks}{}
#'   \item{Docks.in.Service}{}
#'   \item{Status}{}
#'   \item{Location}{coordinates of station in (long, lat) format}
#'   \item{Historical.Wards.2003.2015}{}
#'   \item{Zip.Codes}{}
#'   \item{Community.Areas}{}
#'   \item{Census.Tracts}{}
#'   \item{Wards}{}
#'   \item{geometry}{sfc points,  crs = 4362}
#' }
#' @source \url{https://data.cityofchicago.org/Transportation/Divvy-Bicycle-Stations/bbyy-e7gq}
"divvy"

#' sf object of current CPD beats
#'
#' @details A sf dataset containing polygons and basic administrative info on police beats in Chicago.
#'
#' @format An sf object with 277 rows and 5 variables:
#' \describe{
#'   \item{beat}{beat ID #}
#'   \item{beat_num}{}
#'   \item{district}{police district}
#'   \item{sector}{}
#'   \item{geometry}{sfc polygon,  crs = 4362}
#' }
#' @source \url{https://data.cityofchicago.org/Public-Safety/Boundaries-Police-Beats-current-/aerh-rz74}
"police_beats2019"

#' sf object of Chicago community areas
#'
#' @details not much to say here, just polygons with neighborhood names and other
#' identifying information. Current since 2013.
#'
#' @format An sf object with 77 rows and 6 variables:
#' \describe{
#'   \item{area_num_1}{id number for CA}
#'   \item{commnity}{historic name of community}
#'   \item{perimeter}{}
#'   \item{shape_area}{geometry}
#'   \item{geometry}{sfc polygon,  crs = 4362}
#' }
#' @source \url{https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Community-Areas-current-/cauq-8yn6}
"ca_boundaries"

#'
#' @details
#' @format
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"cps_tiers"

#'
#' @details
#' @format
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"census_tracts_2010"

#'
#' @details
#' @format
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"cta_ridership"

#'
#' @details
#' @format
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"cta_stations"

#'
#' @details
#' @format
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"tif_sf"

#'
#' @details crimes, 2001 to present
#' @format csv, 7126314 observations of 22 variables.
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"crime"

#'
#' @details crimes, 2001 to present
#' @format sf object, 7126314 observations of 22 variables.
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"crime_geo"

#'
#' @details
#' @format
#' \describe{
#'   \item{}{}
#' }
#' @source \url{}
"divvy_trips"
