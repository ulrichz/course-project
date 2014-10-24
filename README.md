course-project
==============

The code in file "run_analysis.R" reads the "Human Activity Recognition Using Smartphones Dataset" from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, extracted to the current working directory. Details about the data are provided in the containing README.txt.

In order to produce a tidy dataset with the average of each mean- and standard-derivation-variable for each activity and each subject, the script 
- reads training and test data for merging
- reads subject ids
- reads activity labels
- adds descriptive column names



Code-Book of tidy data set
----------------
After executing the code described above, the file tidy_dataset.txt contains a table of 180 datasets and 81 columns: 

Columns:
- activity: Type of activity (WALKING, WALKING_UPSTAIRS...)
- subject: Id of the subject

followed by 79 feature columns representing the mean values of the feature grouped by activity and subject: 
- tBodyAcc-mean()-X 
- tBodyAcc-mean()-Y 
- tBodyAcc-mean()-Z
- ... 

Further details about the underlying data can be found in the corresponding data set documentation. 