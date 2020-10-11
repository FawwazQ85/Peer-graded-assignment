fileName <- "C:/Users/fawwa/OneDrive/Documents/RStudio/datasciencecoursera/Getting and Cleaning Data/Week 4/Peer-graded-assignment/Assignment.zip"
# checking file
if (!file.exists(fileName)) {
        DataUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
        download.file(DataUrl, fileName, method = "curl")
}

# checking folder
if(!file.exists("UCI HAR Dataset")) {
        unzip(fileName)
}