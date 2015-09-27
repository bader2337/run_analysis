library(dplyr)
#load all data files
activity.lables = read.table("./activity_labels.txt", stringsAsFactors = FALSE, col.names = c("id", "activity_name"))
features = read.table("./features.txt", stringsAsFactors = FALSE, col.names = c("id", "measure"))
subject.train = read.table("./train/subject_train.txt", stringsAsFactors = FALSE, col.names = c("subject_id"))
y.train = read.table("./train/y_train.txt", stringsAsFactors = FALSE, col.names = c("activity_id"))
x.train = read.table("./train/X_train.txt", stringsAsFactors = FALSE)
subject.test = read.table("./test/subject_test.txt", stringsAsFactors = FALSE, col.names = c("subject_id"))
y.test = read.table("./test/y_test.txt", stringsAsFactors = FALSE, col.names = c("activity_id"))
x.test = read.table("./test/X_test.txt", stringsAsFactors = FALSE)

#get column numbers and names of mean and std measures 
#by searching the measures column of the features table 
means = which(grepl("mean()", features$measure))
stds = which(grepl("std()", features$measure))
columns = c(means, stds)
columns = sort(columns)

col.names = features[columns,]$measure

#step 2 - extract the mean and std measures from x_test and x_train using 
#dplyr functionality
x.train = select(x.train, columns)
x.test = select(x.test, columns)

#step 4 - join x datasets rowwise and assign column names
x = rbind(x.train, x.test)
colnames(x) = col.names

#join y datasets rowwise
y = rbind(y.train, y.test)
subject = rbind(subject.train, subject.test)

#step 3 - assign descriptive activity names by merging y dataset with
#activity.lables
activity = merge(y, activity.lables, by.x = "activity_id", by.y = "id")

#step 1 (final) - merge all datasets into one large dataset
fullset = cbind(subject, activity, x)

#create summary dataset
summary = fullset %>% group_by(activity, subject) %>% summarize_each(funs(mean))

#write summary dataset
write.table(summary, file = "summary_run_data.txt", row.names = FALSE)

