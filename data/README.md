#### This is the Data used throughout the project. The main data set will be Advertising.csv



> credit goes to Gareth James, Daniela Witten, Trevor Hastie and Robert Tibshirani
> The data can be found [here](http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv)

##### Advertising
Contains information about TV and Sales. We will use a linear regression to see if there is a relationships between TVs and the sales


##### Regression.RData
This holds the information from running the linear approximation function on the Advertising. We will use this information to get a regression line.


### More information
- Data Files:
    + `Advertising.csv` is the main data set. This file is downloaded from
    `http://www-bcf.usc.edu/~gareth/ISL/Advertising.csv`.
    + `eda-output.txt` is a text file containing the summary statistics of
    `TV` and `Sales`. This file should be produced via `sink()` from the
    `eda-script.R` file.
    + `regression.RData` is an R's binary format file containing the regression
    objects obtained when running `regression-script.R`. This file should be
    produced via `save()` from the `regression-script.R` file.
