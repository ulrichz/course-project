course-project
==============

The code in file "run_analysis.R" reads the "Human Activity Recognition Using Smartphones Dataset" from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, extracted to the current working directory. 

The aim is to produce a tidy dataset with the average of each variable for each activity and each subject. Details about the data are provided in the containing README.txt.

Code-Book of tidy data set
====
After executing the code described above, the file tidydata.txt contains a table of 180 datasets and 81 columns: 

Colums:
- activity: Type of activity (WALKING, WALKING_UPSTAIRS...)
- subject: Id of the subject

followed by 79 feature columns representing the mean values of the feature grouped by activity and subject: 
- tBodyAcc-mean()-X 
- tBodyAcc-mean()-Y 
- tBodyAcc-mean()-Z
- ... 


