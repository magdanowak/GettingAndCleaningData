#Getting and Cleaning Data PROJECT

library(reshape2)


features <- read.table("./data/features.txt", stringsAsFactors=FALSE)
activity <- read.table("./data/activity_labels.txt", stringsAsFactors=FALSE)


xtest <- read.table("./data/test/X_test.txt")
ytest <- read.table("./data/test/y_test.txt")
subjecttest <- read.table("./data/test/subject_test.txt")

xtrain <- read.table("./data/train/X_train.txt")
ytrain <- read.table("./data/train/y_train.txt")
subjecttrain <- read.table("./data/train/subject_train.txt")

## Merging test and train sets for X

X <- rbind.data.frame(xtest,xtrain)

names(X) <- features[,2]

## Merging test and train sets for Y

Y <- rbind.data.frame(ytest,ytrain)

Y[,1] <- factor(Y[,1],labels=activity[,2])
names(Y) <- "activity"

## Merging test and train sets for subjects

Subject <- rbind.data.frame(subjecttest,subjecttrain)
names(Subject)<- "subject"

## Merging X, Y and subjects data into one dataset
DATA <- cbind.data.frame(Subject, Y, X)

## Choosing columns with mean and std measurements
mean_std_cols = which(grepl(pattern = "mean\\(\\)|std\\(\\)", 
                                   x = names(DATA),
                                ignore.case=FALSE))

#Subsetting only the mean and std columns
DATA <- DATA[,c(1:2,mean_std_cols)]


#Creating tidy data sets with averages for each variable by subject/activity 
tidy_DATA <- melt(DATA, id.vars = c("subject","activity"))
tidy_DATA <-dcast(tidy_DATA, subject + activity ~ variable, mean)
names(tidy_DATA) = gsub("\\(\\)", "", names(tidy_DATA))
names(tidy_DATA) = gsub("BodyBody", "Body", names(tidy_DATA))

#Writing the txt file

write.table(tidy_DATA,"tidy_data.txt",row.names=FALSE)