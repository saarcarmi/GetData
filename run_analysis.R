#run_analysis.R

#First let's find what are the features we are intetested in. These are those which have "mean" or "std" in their name
#To do so, read the features files and search for relevant lines and filter the feature list for the interesting ones
features <- read.table ("features.txt", col.names =c("ID", "Name") )
interestingFeatureID <- c(grep ("mean", features$Name, ignore.case = F), grep ("std", features$Name))
interestingFeatures <- features[interestingFeatureID,]

#"Extracts only the measurements on the mean and standard deviation for each measurement. "
#In order to read only the specific columns we setup a vector of 561 NULLs corresponding to the 561 features in each vector
columnsToRead <- rep("NULL", 561)
#And now set the interesting features/columns to "numeric" so they will be read
columnsToRead[interestingFeatureID] <- "numeric"


#Read the activities label to set the activity name later on
activityLabels <- read.table ("activity_labels.txt", col.names = c("ID", "Label"))

#The readDataSet function can handle te test and train data - seperatly.
#the folder input parameter should be either "test" or "train" as per the file strcuture
#the result is the tidy data set
readDataSet <- function (folder){
     #set some file names
     dataFileName <- paste (folder, "/X_", folder, ".txt", sep="")
     activitiesFilename <- paste (folder, "/Y_", folder, ".txt", sep="")
     subjectsFilename <- paste (folder, "/subject_", folder, ".txt", sep="")
     
     #read the data (only the relevant columns)
     data<-read.table (dataFileName, colClasses = columnsToRead)
     
     #Appropriately labels the data set with descriptive variable names. The variable names are according to the 
     #the feature names in the raw data explanations
     names(data) <- interestingFeatures$Name
     
     #read the activity id as factor 
     activities <- read.table (activitiesFilename, col.names = "activity", colClasses = "factor")
     #set the activity name as the level so taht we get "descriptive activity names to name the activities in the data set"
     levels(activities$activity)<- tolower(activityLabels$Label)
     
     #read the subject for the records
     subject <- read.table (subjectsFilename, col.names = "subject", colClasses = "factor")
     #combine the data to a single data frame and return it
     cbind (subject, activities, data)
}

#read the test and train data separat7ly
testData  <- readDataSet ("test")
trainData  <- readDataSet ("train")

#Merges the training and the test sets to create one data set.
humanActivity<- rbind(testData, trainData)
#Create the second dataset which holds the mean for each messurement for each activity/subject
humanActivityMeasurementMean<-aggregate(humanActivity[,c(-1,-2)],by=list(humanActivity$subject, humanActivity$activity), mean)
#Change the group columns to a readable column name and add Mean_ prefix to the rest of the columns
names(humanActivityMeasurementMean) <- c("Subject", "Activity", paste ("Mean_", names(d2)[c(-1,-2)], sep=""))

#Write the output file
write.table (humanActivityMeasurementMean, "output.txt", row.names=FALSE)