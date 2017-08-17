# Description
Code Book for tidy data obtained from  'UCI HAR Dataset'

## Original (raw) data

Human Activity Recognition Using Smartphones Data Set 
Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

More details in
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones


## Creating the tidy datafile

1. Download de data from [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
2. Unzip the content in a directory <pathToData>
3. Set the R Working directory to the root of the extraction directory
```R
> setwd("<pathToData>") # data should be located under "<pathToData>/UCI HAR Dataset"
```
4. source the [run_analysis.R](./run_analysis.R) file script
```R
> source('<path>/run_analysis.R')
```
5. Execute the run_analysis function (an optional directory can be specified as argument)
```r
> tidy_data <- run_analysis()
```

### Cleaning of the data
The data consist on merge of traing data and test data, only measurements with mean and standard deviation were used.
Subject and activity information was used in order to average the metrics over these parameters.
 
## Description of the variables in the tiny_data.txt file
dimentions:	180 obs. of  88 variables:
 * subject                                   
     *integer* : subject id 
 * activity                                  
     *Factor w/ 6 levels*: LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS
 * mean(tBodyAcc-mean()-X)                   
     *numeric* : average value for each subject and activity
 * mean(tBodyAcc-mean()-Y)                   
     *numeric* : average value for each subject and activity
 * mean(tBodyAcc-mean()-Z)                   
     *numeric* : average value for each subject and activity
 * mean(tBodyAcc-std()-X)                    
     *numeric* : average value for each subject and activity
 * mean(tBodyAcc-std()-Y)                    
     *numeric* : average value for each subject and activity
 * mean(tBodyAcc-std()-Z)                    
     *numeric* : average value for each subject and activity
 * mean(tGravityAcc-mean()-X)                
     *numeric* : average value for each subject and activity
 * mean(tGravityAcc-mean()-Y)                
     *numeric* : average value for each subject and activity
 * mean(tGravityAcc-mean()-Z)                
     *numeric* : average value for each subject and activity
 * mean(tGravityAcc-std()-X)                 
     *numeric* : average value for each subject and activity
 * mean(tGravityAcc-std()-Y)                 
     *numeric* : average value for each subject and activity
 * mean(tGravityAcc-std()-Z)                 
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerk-mean()-X)               
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerk-mean()-Y)               
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerk-mean()-Z)               
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerk-std()-X)                
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerk-std()-Y)                
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerk-std()-Z)                
     *numeric* : average value for each subject and activity
 * mean(tBodyGyro-mean()-X)                  
     *numeric* : average value for each subject and activity
 * mean(tBodyGyro-mean()-Y)                  
     *numeric* : average value for each subject and activity
 * mean(tBodyGyro-mean()-Z)                  
     *numeric* : average value for each subject and activity
 * mean(tBodyGyro-std()-X)                   
     *numeric* : average value for each subject and activity
 * mean(tBodyGyro-std()-Y)                   
     *numeric* : average value for each subject and activity
 * mean(tBodyGyro-std()-Z)                   
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerk-mean()-X)              
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerk-mean()-Y)              
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerk-mean()-Z)              
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerk-std()-X)               
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerk-std()-Y)               
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerk-std()-Z)               
     *numeric* : average value for each subject and activity
 * mean(tBodyAccMag-mean())                  
     *numeric* : average value for each subject and activity
 * mean(tBodyAccMag-std())                   
     *numeric* : average value for each subject and activity
 * mean(tGravityAccMag-mean())               
     *numeric* : average value for each subject and activity
 * mean(tGravityAccMag-std())                
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerkMag-mean())              
     *numeric* : average value for each subject and activity
 * mean(tBodyAccJerkMag-std())               
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroMag-mean())                 
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroMag-std())                  
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerkMag-mean())             
     *numeric* : average value for each subject and activity
 * mean(tBodyGyroJerkMag-std())              
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-mean()-X)                   
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-mean()-Y)                   
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-mean()-Z)                   
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-std()-X)                    
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-std()-Y)                    
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-std()-Z)                    
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-meanFreq()-X)               
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-meanFreq()-Y)               
     *numeric* : average value for each subject and activity
 * mean(fBodyAcc-meanFreq()-Z)               
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-mean()-X)               
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-mean()-Y)               
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-mean()-Z)               
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-std()-X)                
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-std()-Y)                
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-std()-Z)                
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-meanFreq()-X)           
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-meanFreq()-Y)           
     *numeric* : average value for each subject and activity
 * mean(fBodyAccJerk-meanFreq()-Z)           
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-mean()-X)                  
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-mean()-Y)                  
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-mean()-Z)                  
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-std()-X)                   
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-std()-Y)                   
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-std()-Z)                   
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-meanFreq()-X)              
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-meanFreq()-Y)              
     *numeric* : average value for each subject and activity
 * mean(fBodyGyro-meanFreq()-Z)              
     *numeric* : average value for each subject and activity
 * mean(fBodyAccMag-mean())                  
     *numeric* : average value for each subject and activity
 * mean(fBodyAccMag-std())                   
     *numeric* : average value for each subject and activity
 * mean(fBodyAccMag-meanFreq())              
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyAccJerkMag-mean())          
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyAccJerkMag-std())           
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyAccJerkMag-meanFreq())      
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyGyroMag-mean())             
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyGyroMag-std())              
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyGyroMag-meanFreq())         
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyGyroJerkMag-mean())         
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyGyroJerkMag-std())          
     *numeric* : average value for each subject and activity
 * mean(fBodyBodyGyroJerkMag-meanFreq())     
     *numeric* : average value for each subject and activity
 * mean(angle(tBodyAccMean,gravity))         
     *numeric* : average value for each subject and activity
 * mean(angle(tBodyAccJerkMean),gravityMean))
     *numeric* : average value for each subject and activity
 * mean(angle(tBodyGyroMean,gravityMean))    
     *numeric* : average value for each subject and activity
 * mean(angle(tBodyGyroJerkMean,gravityMean))
     *numeric* : average value for each subject and activity
 * mean(angle(X,gravityMean))                
     *numeric* : average value for each subject and activity
 * mean(angle(Y,gravityMean))                
     *numeric* : average value for each subject and activity
 * mean(angle(Z,gravityMean))                
     *numeric* : average value for each subject and activity