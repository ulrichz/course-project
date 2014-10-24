setwd("~/coursera/datascience/gettingandcleaningdata/project/UCI HAR Dataset/")

df <- rbind(
	cbind(
		read.table("test/subject_test.txt"), 
		read.table("test/y_test.txt"),
		read.table("test/X_test.txt")),
	cbind(
		read.table("train/subject_train.txt"), 
		read.table("train/y_train.txt"),
		read.table("train/X_train.txt")))
		
# Add descriptive names
names(df) <- c("subject", "activity", as.character(features[[2]]))

# Remove duplicated columns
df <- df[, !duplicated(colnames(df))]

# To name descriptive our activities...
activity_labels <- (read.table("activity_labels.txt"))[[2]]	
df$activity = as.factor(df$activity)
levels(df$activity) <- activity_labels

tbl <- tbl_df(df)

# Select only mean and standard derivations 
tbl_mean_std <- select(tbl, c(1,2,grep("mean|std", colnames(tbl))))

tbl_mean_std %>%
	group_by(activity, subject) %>%
	summarise_each(funs(mean), -(1:2)) %>%
	write.table("../tidy_dataset.txt", row.names=FALSE)