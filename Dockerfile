## Start with the shiny docker image
FROM rocker/tidyverse:latest

MAINTAINER "Sam Abbott" sam.abbott@fundingcircle.com

RUN apt-get install -y \
    texlive-latex-recommended \
    texlive-fonts-extra \
    texinfo \
    libqpdf-dev \
    && apt-get clean

ADD . /home/rstudio/DockerAtFC

## Get github packages
RUN Rscript -e 'devtools::install_github('yihui/xaringan')`