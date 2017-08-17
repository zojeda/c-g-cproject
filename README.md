# 3. Getting and cleaning data - course project

## Description

In order to generate a tidy dataset like in the assignment you should source the [run_analysis.R] file in with R.

```r
> source('<path>/run_analysis.R')
> tidy_data <- run_analysis()
> write.table(tidy_data, 'tidy_data.txt', row.names = FALSE) # this command was used to generate the file included in this repository
```
The function can take an optional parameter to the 'UCI HAR Dataset' directory. The default value asumes that it is in the workspace under a directory named './UCI HAR Dataset' 

## Files
* [run_analysis.R] R code defining a function that should be used to generate the tidy dataset.
* [CodeBook.md](./CodeBook.md) Code Book with details regarding the generated dataset with the above function
* [tidy_data.txt](./tidy_data.txt) a dataset generated with the [run_analysis.R] and saved with write.table(data, 'tidy_dataset.txt', row.names = FALSE) 

[run_analysis.R]:./run_analysis.R