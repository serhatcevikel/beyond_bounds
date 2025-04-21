#!/bin/env R

cranlist <- c('AER','babynames','ckanr','dataverse','dbscan','dm','dslabs','fueleconomy','gapminder','ggstatsplot','here','htm2txt','janeaustenr','Lahman','leaflet.extras','leaflet.extras2','maps','mosaicData','pdftools','plm','renv','rjson','RKaggle','rsconnect','sentimentr','ucimlrepo','WDI','wooldridge','yarrr')

cranlist2 <- c('ggstatsplot')

githublist <- c('trinker/textreadr')

cranlist2 <- intersect(cranlist2, cranlist)
cranlist <- setdiff(cranlist, cranlist2)

## cran packages
for (package in cranlist)
{ 
    if (!require(package, character.only = T, quietly = T))
    {
        install.packages(package, repo = "https://packagemanager.posit.co/cran/2025-04-19")
    }
}

for (package in cranlist2)
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

