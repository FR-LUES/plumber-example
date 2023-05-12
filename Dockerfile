FROM rstudio/plumber

COPY /plumber.R /plumber.R
COPY /R /R
COPY /renv.lock /renv.lock

RUN Rscript -e 'install.packages("renv")'
RUN Rscript -e 'renv::restore()'

EXPOSE 8000

CMD ["R", "-e", "plumber::pr('plumber.R') |> plumber::pr_run(port = 8000)"]
