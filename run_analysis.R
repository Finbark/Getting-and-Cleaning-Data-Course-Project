library(data.table)

#Download file if necassery and unzip.
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip")
unzip(zipfile="./data/Dataset.zip",exdir="./data")

#Load test and training data and then combine
d1 <- cbind(data.table::fread('./data/UCI HAR Dataset/test/y_test.txt'), data.table::fread('./data/UCI HAR Dataset/test/subject_test.txt'), data.table::fread('./data/UCI HAR Dataset/test/X_test.txt'))
d2 <- cbind(data.table::fread('./data/UCI HAR Dataset/train/y_train.txt'), data.table::fread('./data/UCI HAR Dataset/train/subject_train.txt'), data.table::fread('./data/UCI HAR Dataset/train/X_train.txt'))
d1 <- rbind(d1, d2)
rm(d2)

#Assign column names.
col_names <- data.table::fread('features.txt')
colnames(d1) <- c('Activity', 'Subject', col_names$V2)

#Extract only the mean and standard deviation columns.
std_mean_index <- sort(c(1, 2, grep('std\\(\\)$', colnames(d1)), grep('mean\\(\\)', colnames(d1))))
d1 <- d1[, ..std_mean_index]

#Assign meaningful names to the activity column.
d1$activity <- gsub(1, 'walking', d1$activity)
d1$activity <- gsub(2, 'walking upstairs', d1$activity)
d1$activity <- gsub(3, 'walking downstairs', d1$activity)
d1$activity <- gsub(4, 'sitting', d1$activity)
d1$activity <- gsub(5, 'standing', d1$activity)
d1$activity <- gsub(6, 'laying', d1$activity)

#Assign meaningful variable names.
colnames(d1) <- gsub('-mean\\(\\)(-)?', ' mean ', colnames(d1))
colnames(d1) <- gsub('-std\\(\\)', ' std', colnames(d1))
colnames(d1) <- gsub('^f', 'FFT ', colnames(d1))
colnames(d1) <- gsub('^t', '', colnames(d1))

#Create second data set for the average of each variable for each activity and each subject. 
tidy_data <- aggregate(. ~Subject + Activity, d1, mean)
tidy_data <- tidy_data[order(tidy_data$Subject, tidy_data$Activity),]
write.table(tidy_data, "TidySet.txt", row.name=FALSE)



