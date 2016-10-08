.PHONY: all

all: report/report.pdf, eda-output.txt, regression.RData


report.pdf: report/report.Rmd, regression.RData, scatterplot-tv-sales.png
	library(knitr); knit()

data/regression.RData:
	cd code; Rscript regression-script.R


code/regression-script.R:


images/scatterplot-tv-sales.pdf:
	cd code; Rscript regression-script.R

data/eda-output.txt:
	cd code; Rscript eda-script.R





.PHONY: data

data:
	cd data; curl -o Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv


.PHONY: clean

clean:
	rm report/report.pdf
