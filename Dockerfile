FROM jupyter/r-notebook:59b402ce701d


RUN R -e "install.packages('sp', dependencies=TRUE, repos='http://cran.rstudio.com/')"
