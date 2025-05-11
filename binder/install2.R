#!/bin/env R

cranlist <- c('AER','babynames','ckanr','cvms','dataverse','dbscan','dm','dslabs','fields','fueleconomy','gapminder','ggstatsplot','here','htm2txt','janeaustenr','Lahman','leaflet.extras','leaflet.extras2','maps','mosaicData','MultiRNG','pdftools','plm','renv','rjson','RKaggle','rsconnect','sentimentr','trialr','ucimlrepo','WDI','wooldridge','yarrr')

cranlist2 <- c('ggstatsplot')

githublist <- c('trinker/textreadr','cmartin/ggConvexHull','TileDB-Inc/shinybg')

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

