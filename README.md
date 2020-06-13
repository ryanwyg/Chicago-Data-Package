# Chicago Data Package

<!-- badges: start -->
<!-- badges: end -->

This is a continuation of Clyde Schwarb's Chicago Data Package project for GIS 3.

My name is Clyde Schwab, and I'm (currently) an undergraduate at the University of Chicago studying geography and environmental and urban studies. The goal of this package is multifaceted — to provide a starting point for those interested in learning geocomputation with R using real Chicago data or those interested in working on a Chicago-specific issue, but also to begin building a larger collection of civic data for academic and amateur, journalist and researcher, non-profit and concerned citizen alike. 

I've tried to provide a rough skeleton with some datasets that seemed important. While much of it has already been processed (the code for doing so has been provided in devplayground.R), I have also attempted to provide some basic steps for including further processed code. Cleaned datasets are available in /data, and I've included the unprocessed data in /data-raw. The data was primarily collected from the Chicago data portal (https://data.cityofchicago.org/), but also contains datasets from the CDC and Cook County. Additional documentation is available in /R. 

More immediately, there are some basic issues I want to resolve — first, finishing a few vignettes as a tutorial/intro to wrangling Chicago data, and a larger overview on good sources of data for the city. I also want to use RShiny to create an interactive way of viewing this and more data. I also am working on a function to aggregate data on the census level more effeciently, using the CPS Tier and SVI data as an example. 

I intend for this project to be ongoing, and am excited to see how it grows moving forward. Possible directions include separate, smaller datasets containing data surrounding things like criminal justice (think police misconduct records, shotspotter data, or prisoner reentry), environmental issues (lead and brownfields, raster data on polution), or education. I'm also especially interested in including further time sequenced data, which would be necessary for any substantive analysis, but the recent creation of the data portal poses problems here. I am now in the process of collecting interesting datasets from UChicago's academic establishment, and interested in expanding this to Chicago's other amazing institutions. 

<p><span>Datasets to be included in the package include (All accessed through SODA API):</span></p>
<ul>
<ul>
<li><span>Census Tracts 2010 (soon to be updated to 2020): Accessed <a href="https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Census-Tracts-2010/5jrd-6zik"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
<li><span>Boundaries - Community Areas (current): Accessed <a href="https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Community-Areas-current-/cauq-8yn6"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
<li><span>Boundaries - Police Beats (current): Accessed <a href="https://data.cityofchicago.org/Public-Safety/Boundaries-Police-Beats-current-/aerh-rz74"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
<li><span>Boundaries - Police Districts (current): Accessed <a href="https://data.cityofchicago.org/Public-Safety/Boundaries-Police-Districts-current-/fthy-xz3r"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
<li><span>Boundaries - Wards (2015-): Accessed <a href="https://data.cityofchicago.org/Facilities-Geographic-Boundaries/Boundaries-Wards-2015-/sp34-6z76"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
<li><span>Boundaries - Zoning Districts (current): Accessed <a href="https://data.cityofchicago.org/Community-Economic-Development/Boundaries-Zoning-Districts-current-/7cve-jgbp"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
<li><span>Affordable Rental Housing Developments (points) (2019): Accessed </span><span>here</span><span> as a </span><span>json</span><span> file;</span></li>
<li><span>Chicago Public Schools - School Progress Reports SY1617 (points, with information regarding community areas): Accessed <a href="https://data.cityofchicago.org/resource/cp7s-7gxg.json"><span>here</span></a> as a </span><span>json</span><span> file;</span></li>
<li><span>CTA - Ridership - Monthly Day-Type Averages &amp; Totals: Accessed <a href="https://data.cityofchicago.org/Transportation/CTA-Ridership-Bus-Routes-Monthly-Day-Type-Averages/bynn-gwxy"><span>here</span></a> as a </span><span>json</span><span> file;</span></li>
<li><span>CTA - 'L' (Rail) Stations: Accessed <a href="https://data.cityofchicago.org/Transportation/CTA-L-Rail-Stations-Shapefile/vmyy-m9qj"><span>here</span></a> as a </span><span>zip</span><span> file (points, with community area information) (will have to figure out a way to unzip and manage this dataset, possibly a new R script);</span></li>
<li><span>Census Data - Selected socioeconomic indicators in Chicago, 2008 &ndash; 2012 (by community area): Accessed <a href="https://data.cityofchicago.org/resource/kn9c-c2s2.json"><span>here</span></a> as a </span><span>json</span><span> file. This dataset is outdated, but is the only one that shows community-area level data. It is possible to use CPS data directly from census bureau or IPUMS, but they are not as detailed to the community area level;</span></li>
<li><span>Divvy Bicycle Stations (points, with community area info): Accessed <a href="https://data.cityofchicago.org/resource/bbyy-e7gq.json"><span>here</span></a> as a </span><span>json</span><span> file;</span></li>
<li><span>Tax Increment Financing (TIF) Projects (points): Accessed <a href="https://data.cityofchicago.org/Community-Economic-Development/Tax-Increment-Financing-TIF-Projects-Map/v3a3-hhqn"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
<li><span>311 Service Requests - Vacant and Abandoned Buildings (points, with community area information): Accessed <a href="https://data.cityofchicago.org/Service-Requests/311-Service-Requests-Vacant-and-Abandoned-Building/d9re-tmpw"><span>here</span></a> as a </span><span>geojson</span><span> file;</span></li>
</ul>
</ul>
<p><span>The above datasets are all original sets included in Clyde&rsquo;s Package, and I linked online API locations, and will update in the code. I also included an additional dataset below which I think is quite important:</span></p>
<ul>
<ul>
<li><span>Crimes - 2001 to Present (points, with temporal information, can aggregate by community area, police wards, beats): Accessed <a href="https://data.cityofchicago.org/Public-Safety/Crimes-Map/dfnk-7re6"><span>here</span></a> as a </span><span>json</span><span> file;</span></li>
<li><span>Divvy Trips (points, with beginning and end point info): Accessed <a href="https://data.cityofchicago.org/resource/fg6s-gzvg.json"><span>here</span></a> as a </span><span>json</span><span> file;</span></li>
</ul>
</ul>
<p><span>More datasets will be added after the completion of the first stage of project.</span></p>
<p><span>&nbsp;</span></p>


## Installation

I the project isn't yet available from CRAN, so you can download it directly from github:

``` r

library(devtools)
install_github("cschwab1/chicagodatapackage")
```

