#!/bin/sh

# R packages

#requirement FOR RJAVA …
# This section is required sometimes for some reason ...
#sudo cat JAVA_HOME="/usr/lib/jvm/java-8-oracle/jre" >> /etc/environment
#source /etc/environment
#echo $JAVA_HOME

sudo R CMD javareconf

mkdir ~/R_libs
export R_LIBS="~/R_libs"
Rscript R_packages.R
