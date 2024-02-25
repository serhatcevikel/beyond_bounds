#!/bin/env R

cranlist <- c('dm','htm2txt','pdftools')

githublist <- c('trinker/textreadr')

## cran packages
for (package in cranlist)
{ 
    if (!require(package, character.only = T, quietly = T))
    {
        install.packages(package)
    }
}

for (package in githublist)
{ 
    if (!require(package, character.only = T, quietly = T))
    {
        devtools::install_github(package)
    }
}

