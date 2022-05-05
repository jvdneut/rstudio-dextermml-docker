FROM rocker/rstudio
RUN R -e "install.packages(c('devtools', 'remotes'), repo = '$CRAN'); \
library(devtools); \
devtools::install_github('dexter-psychometrics/dexterMML')"
