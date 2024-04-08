#!/bin/env R

if ("h2o" %in% rownames(installed.packages())) { remove.packages("h2o") }
if ("rsparkling" %in% rownames(installed.packages())) { remove.packages("rsparkling") }
options(timeout = 600)
install.packages("h2o", type = "source", repos = "http://h2o-release.s3.amazonaws.com/h2o/rel-3.44.0/3/R")
install.packages("rsparkling", type = "source", repos = "http://h2o-release.s3.amazonaws.com/sparkling-water/spark-3.0/3.44.0.3-1-3.0/R")

install.packages("BiocManager")
BiocManager::install()
BiocManager::install("BiocParallel")

cranlist <- c('graphframes', 'doFuture', 'future.callr', 'future.tests', 'mirai')

## cran packages
for (package in cranlist)
{ 
    if (!require(package, character.only = T, quietly = T))
    {
        install.packages(package)
    }
}

