Chicago Data Package
====================

<!-- badges: start --> <!-- badges: end -->

My name is Ryan Wang, and I am a Master’s student at the Univeristy of
Chicago, concentrating on quantitative methods of social analyses. For
this project, I further developed an open Chicago data package from a
past GIS 3 class.

This is a continuation of Clyde Schwarb’s Chicago Data Package
(<a href="https://github.com/cschwab1/chicagodatapackage" class="uri">https://github.com/cschwab1/chicagodatapackage</a>)
project for GIS 3. Clyde is an undergraduate at the University of
Chicago studying geography and environmental and urban studies. A year
ago, Clyde initated this project to “provide a starting point for those
interested in learning geocomputation with R using real Chicago data”,
and “building a larger collection of civic data for academic and
amateur, journalist and researcher, non-profit and concerned citizens
alike.” Some most commonly used datasets were provided in the original
package, along with initial processing code and vignettes from Clyde. I
completed documentation of datasets and added two new datasets, Crime -
from 2001 to present, and Divvy Trips.

Cleaned datasets are available in /data, and original data is included
the unprocessed data in /data-raw. The data was primarily collected from
the Chicago data portal
(<a href="https://data.cityofchicago.org/" class="uri">https://data.cityofchicago.org/</a>),
but also contains datasets from the CDC and Cook County. Additional
documentation is available in /R.

Installation
------------

The project is not yet available from CRAN, so you can download it
directly from github:

``` r
library(devtools)
install_github("ryanwyg/Chicago-Data-Package")
```

The installation might take several minutes depending on your internet
connection, as some of the datasets in this pacakge are large.

Datasets Included
-----------------

<p>
Datasets to be included in the package include (All accessed through
SODA API):
</p>
<ul>
<ul>
<li>
Census Tracts 2010 (soon to be updated to 2020): Accessed
<a href="https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Census-Tracts-2010/5jrd-6zik">here</a>
as a geojson file;
</li>
<li>
Boundaries - Community Areas (current): Accessed
<a href="https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Community-Areas-current-/cauq-8yn6">here</a>
as a geojson file;
</li>
<li>
Boundaries - Police Beats (current): Accessed
<a href="https://data.cityofchicago.org/Public-Safety/Boundaries-Police-Beats-current-/aerh-rz74">here</a>
as a geojson file;
</li>
<li>
Boundaries - Police Districts (current): Accessed
<a href="https://data.cityofchicago.org/Public-Safety/Boundaries-Police-Districts-current-/fthy-xz3r">here</a>
as a geojson file;
</li>
<li>
Boundaries - Wards (2015-): Accessed
<a href="https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Wards-2015-/sp34-6z76">here</a>
as a geojson file;
</li>
<li>
Boundaries - Zoning Districts (current): Accessed
<a href="https://data.cityofchicago.org/Community-Economic-Development/Boundaries-Zoning-Districts-current-/7cve-jgbp">here</a>
as a geojson file;
</li>
<li>
Affordable Rental Housing Developments (points) (2019): Accessed here as
a json file;
</li>
<li>
Chicago Public Schools - School Progress Reports SY1617 (points, with
information regarding community areas): Accessed
<a href="https://data.cityofchicago.org/resource/cp7s-7gxg.json">here</a>
as a json file;
</li>
<li>
CTA - Ridership - Monthly Day-Type Averages & Totals: Accessed
<a href="https://data.cityofchicago.org/Transportation/CTA-Ridership-Bus-Routes-Monthly-Day-Type-Averages/bynn-gwxy">here</a>
as a json file;
</li>
<li>
CTA - ‘L’ (Rail) Stations: Accessed
<a href="https://data.cityofchicago.org/Transportation/CTA-L-Rail-Stations-Shapefile/vmyy-m9qj">here</a>
as a zip file (points, with community area information) (will have to
figure out a way to unzip and manage this dataset, possibly a new R
script);
</li>
<li>
Census Data - Selected socioeconomic indicators in Chicago, 2008 – 2012
(by community area): Accessed
<a href="https://data.cityofchicago.org/resource/kn9c-c2s2.json">here</a>
as a json file. This dataset is outdated, but is the only one that shows
community-area level data. It is possible to use CPS data directly from
census bureau or IPUMS, but they are not as detailed to the community
area level;
</li>
<li>
Divvy Bicycle Stations (points, with community area info): Accessed
<a href="https://data.cityofchicago.org/resource/bbyy-e7gq.json">here</a>
as a json file;
</li>
<li>
Tax Increment Financing (TIF) Projects (points): Accessed
<a href="https://data.cityofchicago.org/Community-Economic-Development/Tax-Increment-Financing-TIF-Projects-Map/v3a3-hhqn">here</a>
as a geojson file;
</li>
<li>
311 Service Requests - Vacant and Abandoned Buildings (points, with
community area information): Accessed
<a href="https://data.cityofchicago.org/Service-Requests/311-Service-Requests-Vacant-and-Abandoned-Building/d9re-tmpw">here</a>
as a geojson file;
</li>
</ul>
</ul>
<p>
The above datasets are all original sets included in Clyde’s Package,
and I linked online API locations, and will update in the code. I also
included an additional dataset below which I think is quite important:
</p>
<ul>
<ul>
<li>
Crimes - 2001 to Present (points, with temporal information, can
aggregate by community area, police wards, beats): Accessed
<a href="https://data.cityofchicago.org/Public-Safety/Crimes-Map/dfnk-7re6">here</a>
as a json file;
</li>
<li>
Divvy Trips (points, with beginning and end point info): Accessed
<a href="https://data.cityofchicago.org/resource/fg6s-gzvg.json">here</a>
as a json file;
</li>
</ul>
</ul>
<p>
More datasets will be added after the completion of the first stage of
project.
</p>

The Chicago Data Explorer
-------------------------

This is a flexdashboard app with RShiny code incorporated. This app uses
the data and functionalities in this package itself and it intends to be
a tool for initial assessment of the Chicago data, aiming to quickly
guide interests for further data discovery.

The app is currently published on the RShiny server here:
<a href="https://ryanwyg.shinyapps.io/ChicagoDataExplorer/#section-the-maps" class="uri">https://ryanwyg.shinyapps.io/ChicagoDataExplorer/#section-the-maps</a>
![Image of Data Explorer
App](https://github.com/ryanwyg/Chicago-Data-Package/blob/master/ChicagoDataExplorer.png)

The app is made into two sections, a spatial data explorer section (“The
Maps”) and a non-spatial data explorer section(“The Tables”). Both use
sidebars to select specific variables of interest, and has the
functionality for downloading the data.

Known Issues
------------

### Data Package
The "Crime" and "Divvy Trips" datasets are very large and not supported on Github.

### Data Explorer App
Irrelevant selection is currently not greyed out in visualization tab (e.g. "Year" slider is always there yet only one dataset would utilize this functionality);
Scrolling is buggy in the data table visualization (second tab);
App is not optimized for mobile.

Future Improvements
-------------------

This project is ongoing and future functionalities will come soon,
mainly being expansions in the data. You can come back and explore
updates through the Data Explorer, which is constantly updated with new
datasets from the city’s data portal. I plan to expand further with more
sections for different categories of data, just like how the data portal
websites classifies the data (“Buildings”, “Community”, “Education”
etc.) Please do check back for updates.
