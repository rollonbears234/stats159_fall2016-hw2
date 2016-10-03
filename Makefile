.PHONY: all


.PHONY: data

data:
	cd data; curl -o Advertising.csv http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv


.PHONY: clean

clean:
	rm report/report.Rmd
	rm report/report.pdf
