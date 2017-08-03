Coursera Getting and Cleaning Data Course Project
This is the course project for the Getting and Cleaning Data Coursera course. The R script, run_analysis.R, does the following:

    Download the dataset if it does not already exist in the working directory 
      (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
      (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)
    Load the activity and feature info
    Loads both the training and test datasets, keeping only those columns which reflect a mean or standard deviation
    Loads the activity and subject data for each dataset, and merges those columns with the dataset 
      (name the activities in the data set and labels the data set with descriptive variable names)
    Merges the two datasets
    Creates a tidy dataset that consists of the average (mean) value of each variable for each subject and activity pair.

The end result is shown in the file Tidy.txt.
