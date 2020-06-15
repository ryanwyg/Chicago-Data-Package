##creating cook county sf object
census_tracts_2010 <- readOGR(dsn = "~/Documents/code/ChicagoPackage/data-raw/CensusTracts2010", "geo_export_8132126e-e716-4129-8a20-c6eb6d8147a0")
census_tracts_2010 <- st_as_sf(census_tracts_2010)
usethis::use_data(census_tracts_2010, overwrite = TRUE)

##Creating SVIIllinois
  #loading from csv
SVIIllinois2018 <- read.csv("~/Documents/code/ChicagoPackage/data-raw/SVIIllinois2018.csv")
  #cutting down to relevant variables and cleaning
SVIIllinois2018 <- select(SVIIllinois2018, "GEO_ID":"CENSUSAREA", "COUNTY", "E_TOTPOP", "E_HU", "HH", "E_POV", "E_UNEMP", "E_PCI",
                          "M_PCI", "E_NOHSDIP", "MINORITY", "E_LIMENG", "R_PL_THEME1")
cook_SVI <- SVIIllinois2018[which(SVIIllinois2018$COUNTY == "Cook County"), ]
cook_SVI <- cook_SVI[which(cook_SVI$R_PL_THEME1 > 0), ]
  #note: when merging census data with the tract shapefile, you will likely have to convert the tract ID of both files
  #use this method to do so
cook_SVI$TRACT <- as.factor(cook_SVI$TRACT)
cook_SVI$TRACT <- as.numeric(cook_SVI$TRACT)
census_tracts_2010$tractce10 <- as.numeric(census_tracts_2010$tractce10)
  #attempt 1
    #svi_chicago <- left_join(census_tracts_2010, cook_SVI, by = c("tractce10" = "TRACT"))
    #notes: unsuccessful
  #attempt 2
svi_shapes1 <- merge(census_tracts_2010, cook_SVI, by.x="tractce10", by.y="TRACT")
  #notes: successful first time round, not after, not sure why. Still managed to save before it broke. Always document your code kids.
  #testing merge using tmap
tm_shape(svi_chicago) + tm_fill("R_PL_THEME1")
tm_shape(svi_shapes1) + tm_polygons("R_PL_THEME1", palette = "Blues")
  #saving result
chicago_svi <- svi_shapes1
chicago_svi <- subset(chicago_svi, select = -c(2:6, 8:15))
usethis::use_data(chicago_svi, overwrite = TRUE)

##creating cps progress reports sf object
cpsPR2018 <- read.csv("~/Documents/code/ChicagoPackage/data-raw/CPSProgressReports2018.csv")
cpsPR2018_sf <- select(cpsPR2018, "School_ID":"Address", "Zip":"Website", "Student_Growth_Rating",
                       "Growth_Reading_Grades_Tested_Pct_ES", "Growth_Math_Grades_Tested_Pct_ES", "Student_Attainment_Rating",
                       "Culture_Climate_Rating", "School_Survey_Student_Response_Rate_Pct":"Healthy_School_Certification",
                       "School_Survey_Involved_Families":"One_Year_Dropout_Rate_Avg_Pct", "Mobility_Rate_Pct", "Chronic_Truancy_Pct",
                       "School_Latitude", "School_Longitude")
cpsPR2018_sf <- st_as_sf(cpsPR2018_sf, coords = c("School_Longitude", "School_Latitude"), crs = 4326)
usethis::use_data(cpsPR2018_sf, overwrite = TRUE)

##creating CPS tiers sf object
  #reading csv file
CPS_tiers <- read.csv("~/Documents/code/ChicagoPackage/data-raw/CPSTiers.csv")
CPS_tiers <- CPS_tiers[c(-3)]
  #because of how the census_tracts_2010$tractce10 data is set up as a factor, this is necessary to merge
CPS_tiers$TRACT <- as.factor(CPS_tiers$TRACT)
CPS_tiers$TRACT <- as.numeric(CPS_tiers$TRACT)
  #merging file with census_tracts_2010
cps_tiers <- merge(census_tracts_2010, CPS_tiers, by.x="tractce10", by.y="TRACT")
cps_tiers$Tier.2018 <- as.factor(cps_tiers$Tier.2018)
  #mapping them using tmaps to test
tm_shape(cps_tiers) + tm_fill(col = "Tier.2018", style = "cat", palette = "Blues")
  #saving file as sf object
usethis::use_data(cps_tiers)

##wrangling TIF data
tif_data <- read.csv("~/Documents/code/ChicagoPackage/data-raw/TifProjects.csv")
tif_data <- tif_data[!is.na(tif_data$LATITUDE), ]
tif_sf <- st_as_sf(tif_data, coords = c("LONGITUDE", "LATITUDE"), crs = 4326)
tif_sf <- tif_sf[c(-7)]
usethis::use_data(tif_sf, overwrite = TRUE)


##CA boundaries sf object
ca_boundaries <- readOGR(dsn = "~/Documents/code/ChicagoPackage/data-raw/CommunityAreaBoundaries", "geo_export_c5a7a172-ad6d-482c-a7e9-4c1bf839da93")
ca_boundaries <- st_as_sf(ca_boundaries)
ca_boundaries <- subset(ca_boundaries, select = c(2, 6:8, 9))
usethis::use_data(ca_boundaries, overwrite = TRUE)

##divvy stations wrangling
divvy <- read.csv("~/Documents/code/ChicagoPackage/data-raw/DivvyStations.csv")
divvy <- st_as_sf(divvy, coords = c("Longitude", "Latitude"), crs = 4326)
qtm(divvy)
usethis::use_data(divvy)

##ward boundaries
wards2019 <- readOGR(dsn = "~/Documents/code/ChicagoPackage/data-raw/WardBoundaries2019", "geo_export_9b0d5bf3-b742-48d6-90aa-36fabf031fc7")
wards2019 <- st_as_sf(wards2019)
wards2019 <- wards2019[c(-2)]
qtm(wards2019)
usethis::use_data(wards2019, overwrite = TRUE)

##police district boundaries
police_beats2019 <- readOGR(dsn = "~/Documents/code/ChicagoPackage/data-raw/PoliceBeats2019",
                            "geo_export_17485bfe-565a-4fca-9d2b-e0247af72ef5")
police_beats2019 <- st_as_sf(police_beats2019)
usethis::use_data(police_beats2019, overwrite = TRUE)

##zoning boundaries
zoning2019 <- readOGR(dsn = "~/Documents/code/ChicagoPackage/data-raw/ZoningBoundaries2019",
                  "geo_export_96c89504-2dfb-44c2-87ca-52408e1644fe")
zoning2019 <- st_as_sf(zoning2019)
usethis::use_data(zoning2019, compress = "xz", overwrite = TRUE)

##Ltrain lines
cta_stations <- st_read("CTA_RailStations.kml")
cta_ridership <- read.csv("CTARidershipAvgsMonth.csv")
usethis::use_data(cta_stations)
usethis::use_data(cta_ridership)

##crimes
crime <- read.csv("~/Desktop/chicagodatapackage-master/data-raw/Crimes_-_2001_to_present.csv")
crime <- as_tibble(crime) %>% filter(!is.na(crime$Latitude))
crime_geo <- sf::st_as_sf(crime, coords = c("Longitude", "Latitude"), crs = 4326)
usethis::use_data(crime)
usethis::use_data(crime_geo)

##divvy trips
trips <- read_csv("~/Desktop/chicagodatapackage-master/data-raw/Divvy_Trips.csv")
