library(dplyr)

run_analysis <- function(uciHARDatasetDir='UCI HAR Dataset') {
  features <- read.table(paste0(uciHARDatasetDir ,'/features.txt'))
  labels <- read.table(paste0(uciHARDatasetDir, '/activity_labels.txt'))
  
  # 1. Merging  the training and the test sets to create one data set
  getMerged <- function (entry) {
    entry_test <- read.table(paste0(uciHARDatasetDir, '/test/', entry, '_test.txt'))
    entry_train <- read.table(paste0(uciHARDatasetDir, '/train/', entry, '_train.txt'))
    entry <- rbind(entry_test, entry_train)
    rm(entry_test)
    rm(entry_train)
    entry
  }
  
  ## subject
  subject <- getMerged('subject')
  
  ## X
  X <- getMerged('X')
  
  ## y
  y <- getMerged('y')
  
  # 2. extracting mean and std values
  extracted_features_indexes <- grep("[Mm]ean|[Ss]td", features[[2]])
  X_extracted <- X[, extracted_features_indexes]
  features_extracted <- features[extracted_features_indexes, 2]
  
  # 4. using desciptive variable names
  colnames(X_extracted) <- features_extracted
  
  # 3. using descriptive activity names
  activity <- labels[y$V1, 2]
  
  # 4. final data
  data <- cbind(activity, X_extracted)
  data <- cbind(subject, data)
  colnames(data)[1] <- "subject"
  
  # 5. Averages by subject and activity
  featureColumns <- as.character(features_extracted)
  by_subject <- data %>%
    group_by(subject, activity) %>%
    summarise_at(featureColumns, mean, na.rm = TRUE)
  colnames(by_subject)[3:length( colnames(by_subject) )] <- paste0('mean(', featureColumns, ')')
  
  by_subject
}
