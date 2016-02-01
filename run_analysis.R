

#Load dplyr package.
library(dplyr)


#Load the data into R.
#The variable 'uci' is to be tailored to the preferences of the user.
uci <- "./Johns_Hopkins_Data_Science_Certificate/03_Getting_and_Cleaning_Data/Quizzes_and_Programming_Assignments/Project/UCI_HAR_Dataset/"

xtrain <- read.table(paste0(uci,"train/X_train.txt"))
ytrain <- read.table(paste0(uci,"train/y_train.txt"))
strain <- read.table(paste0(uci,"train/subject_train.txt"))

xtest <- read.table(paste0(uci,"test/X_test.txt"))
ytest <- read.table(paste0(uci,"test/y_test.txt"))
stest <- read.table(paste0(uci,"test/subject_test.txt"))


#Merge the data. ("STEP 1" OF COURSERA INSTRUCTIONS)
train <- cbind(strain,ytrain,xtrain)
test  <- cbind(stest,ytest,xtest)
data  <- rbind(train,test)


#Select the columns that contain means and standard deviations. (STEP 2)
#The file "features.txt" contains the names of the columns, so this file was
#loaded into R, and the variable names were used.
data.colnames <- read.table(paste0(uci,"features.txt"))
data.colnames <- c("subject","activity",as.character(data.colnames$V2))
colnames(data) <- data.colnames

cols1 <- grepl("([Mm][Ee][Aa][Nn]|[Ss][Tt][Aa][Nn][Dd][Aa][Rr][Dd]|[Ss][Tt][Dd])",colnames(data))
cols2 <- grepl("\\(\\)",colnames(data))
cols3 <- grepl("subject|activity",colnames(data))
data  <- data[,cols1&cols2|cols3]


#Use descriptive activity names in the "activity" column. (STEP 3)
data.actnames <- read.table(paste0(uci,"activity_labels.txt"))
data.actnames <- data.actnames$V2
data$activity <- data.actnames[data$activity]


#Appropriately label the data set with descriptive variable names. (STEP 4)
#The code for STEP 2 above largely does this, but further descriptiveness can be added.
#Some abbreviation was retained to keep variable name lengths manageable.
domain <- substring(colnames(data),1,1)
axis   <- substring(colnames(data),nchar(colnames(data))-1,nchar(colnames(data)))
mean   <- grepl("mean\\(\\)",colnames(data))
std    <- grepl("std\\(\\)",colnames(data))
wtd    <- grepl("meanFreq\\(\\)",colnames(data))
body   <- grepl("Body",colnames(data))
grav   <- grepl("Gravity",colnames(data))
acc    <- grepl("Acc",colnames(data))
gryo   <- grepl("Gyro",colnames(data))
jerk   <- grepl("Jerk",colnames(data))
mag    <- grepl("Mag",colnames(data))

domain <- paste0(ifelse(domain=="t","TimeDomain",""),ifelse(domain=="f","FreqDomain",""))
axis   <- paste0(ifelse(axis=="-X","AlongXAxis",""),
                 ifelse(axis=="-Y","AlongYAxis",""),
                 ifelse(axis=="-Z","AlongZAxis",""))
stat   <- paste0(ifelse(mean,"Mean",""),ifelse(std,"StdDev",""),ifelse(wtd,"WtdAvg",""))
bg     <- paste0(ifelse(body,"Body",""),ifelse(grav,"Gravity",""))
motion <- paste0(ifelse(acc,"Acceleration",""),ifelse(gryo,"AngVel",""))
jerk   <- ifelse(jerk,"Jerk","")
mag    <- ifelse(mag,"MagnitudeOf","")

colnames(data)      <- paste0(stat,"Of",mag,bg,motion,jerk,"Signal",axis,"In",domain)
colnames(data)[1:2] <- c("subject","activity")


#Create a tidy second data set with the average of each variable for each activity
#and each subject. (STEP 5)
tidy <- data %>%
  group_by(subject,activity) %>%
  summarise_each(funs(mean))
