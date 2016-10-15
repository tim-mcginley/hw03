# declaring phony targets
.PHONY: all clean data tests eda regression report

# all
all: report eda regression session

# session info and library
session:
	Rscript code/scripts/session-info-script.R

#clean report html
clean:
	rm -f report/report.pdf report/report.html images/*.png

#test functions to check regression functions
test:
	Rscript code/test-that.R

# EDA
eda:
	Rscript code/scripts/eda-script.R data/Advertising.csv

# Regression script
regression:
	Rscript code/scripts/regression-script.R data/Advertising.csv


#data download
data:
	curl -o Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv; mv Advertising.csv data/

#final report html
report:
	Rscript -e 'library(rmarkdown); render("report/report.Rmd", c("html_document", "pdf_document"))'
