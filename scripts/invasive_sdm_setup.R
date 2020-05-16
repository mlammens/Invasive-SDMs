## ******************************************************************** ##
## invasive_sdm_setup.R
##
## Author: Matthew Aiello-Lammens
## Date Created: 2020-05-16
##
## Purpose:
## Setup directories and spatial extent for Invasive SDM project
##
## ******************************************************************** ##

## Call required pacages
library(spocc)
library(spThin)
library(dismo)
library(rgeos)
library(ENMeval)
library(dplyr)
library(raster)
library(sp)
library(maptools)
library(rgdal)
library(ggplot2)
library(GGally)
library(maps)
library(rasterVis)

## ******************************************************************** ##
## Define the Extent of the area that I am working with. 
## This is an extent that will be used in all of my studies, but is 
## defined here. These values essentially define
## what I refer to as "northeast North America" and are based on the extent
## of *Frangula alnus*, excluding outliers in Wyoming and Tennessee

## Long
## Min = -96.61 -> -97
## Max = -63.00 -> -62

## Lat
## Min = 38.60 -> 38 deg
## Max = 47.82 -> 48 deg
xmin <- -97.5
xmax <- -62.5
ymin <- 38.5
ymax <- 48.5

## Create and `extent` object based on these values
falnus.extent <- extent( xmin, xmax, ymin, ymax )


## ******************************************************************** ##
## Define paths to important directories layers are currently stored in

# From:
GIS_LOCAL_DIR <- "~/Dropbox/gis_layers_local/"
GIS_DB_DIR <- "~/Google Drive/gis_layers/"
HYDE_DIR <- "~/Dropbox/gis_layers_local/Hyde/"
NRC_DIR <- "~/Dropbox/gis_layers_local/NRC_Climate/"

