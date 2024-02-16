FROM rocker/rstudio

COPY ./rocker_scripts/install_dexter.sh /rocker_scripts/install_dexter.sh
RUN /rocker_scripts/install_dexter.sh

COPY ./rocker_scripts/install_more.sh /rocker_scripts/install_more.sh
RUN /rocker_scripts/install_more.sh
