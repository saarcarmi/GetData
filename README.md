## Introduction
This README file explains my solution for the project of the course Getting and Cleaning Data.

##Files included in the solution:
<ol>
<li><b>Readme.MD</b> -- The file you are reading now</li>
<li><b>CodeBook.MD</b> -- explains the structure of the tidy dataset generated in this assignment .</li>
<li><b>run_analysis.r</b> -- R script to generate the dataset out of the UCI HAR Dataset.</li>

This assignment uses data <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ">here</a>

##How to run the script
First you should set your work directory to where the UCI HAR Dataset is available (unzipped).
Then run the script using the source method. You might need to provide exact file path to the ran_analysis.r script if it is not in the same folder.
source ("run_analysis.r")

##Output
The script will load the dataset into the variable called <b>humanActivityMeasurementMean</b>
Additionally, the script will dump the dataset as a text file called output.txt
The dataset includes 30 subjects X 6 activities  which is 180 rows and 81 columns (1 for subject, 1 activity and the rest for the feature means)

###Steps used to create the dataset
<ol>
<li> Decide which features should kept in the dataset. These are the features which have either "std" or "mean" (lower case) in the feature name. By examine the list of valus
   The script will analyse the existing feature from the dataset itself rather then have it hard coded.
   Only these columns will be read into the table
</li>

For the test and train sets the following is done separately. Please note that code uses a function to avoid code duplication
<li>The subject list for each measurement is read. </li>
<li>The activity for each measurement is read and is converted from id to the activity name.</li>
<li>Both columns are attached to the dataset</li>

<p>The train and test set are then combined.

Then, the measurements are aggregated per subject & activity and the mean of the features is calculated.
The columns are renamed for better clarify. The features' mean column name is "Mean_" followed by the original feature name so it can  reference to the code book of the original dataset. The Mean prefix is added to clarify this is a claculation of the original measurements.

Last but not least, the dataset is stored to the output.txt file.

Additional information about implementation is available in the comments inside the script itself


