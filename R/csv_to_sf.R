#' converts a csv file with geometry to sf object
#'
#' @param name you want for the sf object (string).
#' @param dataset path for dataset being transformed (string).
#' @param long_name name of the longitude column from your file (string).
#' @param lat_name name of latitude column from your file (string).
#' @param espg espg of your dataset (integer).
#'
#' @return sf object
#' @export
#'
#' @examples
#' csv_to_sf("affordable_housing",
#' "~/Documents/code/chicagodatapackage/chicagodatapackage/data-raw/AffordableHousingDevelopments.csv",
#' "Longitude", "Latitude", 4326)
#'
csv_to_sf <- function(name, dataset, long_name, lat_name, espg){
  name <- read.csv(dataset)
  name <- sf::st_as_sf(name, coords = c(long_name, lat_name), crs = espg)
}
