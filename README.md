## run_analysis

This script reads datafiles obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The datasets, which are seperated into training and testing sets for a machine learning algorithm, are joined columnwise and rowwise to create an large dataset. That dataset is filtered to only show average and standard deviation measurements of each measure. 
##
The script then writes a summary dataset and outputs the file "summary_run_data.txt"


For a description of the data files and the variables within the files, please see codebook.md.
