FROM rstudio/plumber

COPY /plumber.R /plumber.R
COPY /R /R
COPY /renv.lock /renv.lock

RUN Rscript -e 'install.packages("renv")'
RUN Rscript -e 'renv::restore()'

EXPOSE 8000

ENTRYPOINT ["R", "-e", "pr <- plumber::plumb('/plumber.R'); pr$run(host='0.0.0.0', port=8000)"]
