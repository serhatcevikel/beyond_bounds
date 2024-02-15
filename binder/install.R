cranlist <- readLines('adabag','ade4','adegraphics','AppliedPredictiveModeling','archdata','arules','arulesViz','autoplotly','BBmisc','bcrypt','bigmemory','bit64','bookdown','broom','C50','car','caret','circlize','class','classInt','cluster','compareGroups','corrplot','corrr','countrycode','cowplot','D3partitionR','d3r','dat','DataExplorer','dataframeexplorer','dataPreparation','data.table','data.tree','DBI','dbplot','dbplyr','deepnet','dendextend','DescTools','devtools','disk.frame','dlookr','dm','DT','dtplyr','DTSg','dygraphs','e1071','egg','evclass','evd','factoextra','FactoMineR','fastcluster','fastDummies','feather','ff','fit.models','flexclust','flexdashboard','forecast','formattable','Formula','fpc','fst','gains','gamlss','gamlss.dist','gbm','gdtools','getPass','GGally','ggbeeswarm','ggcorrplot','ggExtra','ggforce','ggfortify','ggh4x','ggiraphExtra','ggmap','ggplotify','ggpubr','gmodels','GPArotation','gridExtra','gtools','h2o','HDclassif','heatmaply','Hmisc','htmlTable','httr','httr2','huxtable','imputeTS','ipred','IRdisplay','IRkernel','irr','ISLR','jqr','jsonlite','kableExtra','kernlab','klaR','knitr','ks','leaflet','leaps','lindia','listviewer','lme4','lmtest','magrittr','MASS','mboost','mclust','mctest','Metrics','mgcv','mice','microbenchmark','mlbench','mlflow','mlr','mlr3','mlr3verse','mmap','NbClust','nbconvertR','neuralnet','NeuralNetTools','nFactors','nlme','nnet','odbc','pander','parallelly','party','pheatmap','pipeR','pixiedust','plot3D','plot3Drgl','plotly','plotROC','plumber','plyr','ppcor','printr','pROC','psych','qs','Quandl','r2d3','radiant','randomcoloR','randomForest','rattle','RcppRoll','RCurl','reactR','readODS','readr','readxl','rebmix','RecordLinkage','repr','reshape2','revealjs','rgl','rhandsontable','rlist','rmarkdown','rms','ROCR','rpart','rpart.plot','rpivotTable','RSNNS','rsparkling','RSQLite','RWeka','scales','shiny','shinydashboard','shinydashboardPlus','shinyjs','shinylogs','shinyML','shinyRGL','shinyWidgets','showtext','sodium','sparcl','sparkline','sparklyr','sqldf','stargazer','svmpath','swirl','textTools','threejs','tidymodels','tidyquant','tidyverse','tidyxl','tree','TSrepr','units','vcd','vegan','VIM','visNetwork','visreg','widgetframe','WVPlots','XLConnect','xlsx','XML','xml2','xtable')
githublist <- readLines('ropensci/tabulizer')

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

