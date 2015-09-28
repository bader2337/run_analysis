## run_analysis

This script reads datafiles obtained from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip. The datasets, which are seperated into training and testing sets for a machine learning algorithm, are joined columnwise and rowwise to create a large dataset. That dataset is filtered to only show average and standard deviation data of each measure. 
##
The script then writes a summary dataset and outputs the file "summary_run_data.txt"
##
For a description of the data files, the variables within the files, and the output file, please see codebook.md.
