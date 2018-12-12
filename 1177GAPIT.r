source("http://www.bioconductor.org/biocLite.R")
biocLite("multtest")

install.packages("gplots")
install.packages("LDheatmap")
install.packages("genetics")
install.packages("ape")
install.packages("EMMREML")
install.packages("scatterplot3d") #The downloaded link at:  http://cran.r-project.org/package=scatterplot3d

library(multtest)
library(gplots)
library(LDheatmap)
library(genetics)
library(ape)
library(EMMREML)
library(compiler) #this library is already installed in R
library("scatterplot3d")


source("http://zzlab.net/GAPIT/gapit_functions.txt")
source("http://zzlab.net/GAPIT/emma.txt")


setwd("I:\\GWAS RECENT\\1196_1177过程文件库\\1177 no x no 0\\")


#Step 1: Set working directory and import data
myY <- read.table("1177traits.txt", head  = TRUE)
myG <- read.table("1177genetype_hapmapcp1_18.txt" , head = FALSE)


#Step 2: Run GAPIT
myGAPIT <- GAPIT(
  Y=myY,
  G=myG,
  PCA.total=3
)