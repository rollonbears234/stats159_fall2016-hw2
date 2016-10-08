.PHONY: all

all: report/report.pdf, data/eda-output.txt, data/regression.RData

data/regression.RData:
	cd code; Rscript regression-script.R

data/eda-output.txt:
	cd code; Rscript eda-script.R

report/report.pdf: data/regression.RData
	cd report; R -e "rmarkdown::render('report.Rmd')"


.PHONY: data

data:
	cd data; curl -o Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv


.PHONY: clean

clean:
	rm report/report.pdf
