library(tidyverse)
library(sf)

dc_boundary <- read_csv("./data/dc-boundary/Washington_DC_Boundary.csv")


# geojson

dc_boundary_geo1 <- geojsonio::geojson_read("./data/dc-boundary/Washington_DC_Boundary.geojson")


dc_boundary_geo2 <- geojsonR::FROM_GeoJson("./data/dc-boundary/Washington_DC_Boundary.geojson")


# shapefile

dc_boundary_shapefile <- read_sf("./data/dc-boundary/Washington_DC_Boundary.shp")
dc_boundary_shapefile |>
  glimpse()
