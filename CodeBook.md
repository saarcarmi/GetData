### Introduction
This is a description of the tidy dataset HumanActivityMeasurementMean.<br>
The data is based on "Human Activity Recognition Using Smartphones Dataset".<br>
The HumanActivityMeasurementMean dataset contains for each subject and activity the Mean of each feature messaurements which was recorded in the original dataset.

### Columns
<b>Subject</b><br>
	factor with level of 1..30 representing the subject who was measured.
	
<b>Activity</b><br>
	The type of activity during which the measurements where taken
	facor with the levels
	<ul>
	<li>walking</li>
		<li> walking_upstairs </li>
		 <li>walking_downstairs </li>
		 <li>sitting </li>
		 <li>standing </li>
		 <li>laying</li>
 </ul>
 
Following the first two columns there is a set of columns holding the Mean of the features' measurements.<br>
Each column hold the Mean of a single feature.
The columns names have the structure Mean_FEATURE-NAME, where the FEATURE-NAME is corresponding to the feature name in the original dataset.<br>
Please refer to the feature.txt file of the "Human Activity Recognition Using Smartphones Dataset" for additional information about the feature themselves.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Below is the list of available columns. The number indicates the column ordinal number in the dataset and is followed by the column name.
All columns are of class numeric.


3	<b>Mean_tBodyAcc-Mean()-X</b>

4	<b>Mean_tBodyAcc-Mean()-Y</b>

5	<b>Mean_tBodyAcc-Mean()-Z</b>

6             <b>Mean_tGravityAcc-Mean()-X</b>

7             <b>Mean_tGravityAcc-Mean()-Y</b>


8             <b>Mean_tGravityAcc-Mean()-Z</b>


9            <b>Mean_tBodyAccJerk-Mean()-X</b>


10           <b>Mean_tBodyAccJerk-Mean()-Y</b>

11           <b>Mean_tBodyAccJerk-Mean()-Z</b>

12              <b>Mean_tBodyGyro-Mean()-X</b>


13              <b>Mean_tBodyGyro-Mean()-Y</b>

14              <b>Mean_tBodyGyro-Mean()-Z</b>


15          <b>Mean_tBodyGyroJerk-Mean()-X</b>

16          <b>Mean_tBodyGyroJerk-Mean()-Y</b>

17          <b>Mean_tBodyGyroJerk-Mean()-Z</b>

18              <b>Mean_tBodyAccMag-Mean()</b>

19           <b>Mean_tGravityAccMag-Mean()</b>

20          <b>Mean_tBodyAccJerkMag-Mean()</b>

21             <b>Mean_tBodyGyroMag-Mean()</b>

22         <b>Mean_tBodyGyroJerkMag-Mean()</b>

23               <b>Mean_fBodyAcc-Mean()-X</b>

24               <b>Mean_fBodyAcc-Mean()-Y</b>

25               <b>Mean_fBodyAcc-Mean()-Z</b>

26           <b>Mean_fBodyAcc-MeanFreq()-X</b>

27           <b>Mean_fBodyAcc-MeanFreq()-Y</b>

28           <b>Mean_fBodyAcc-MeanFreq()-Z</b>

29           <b>Mean_fBodyAccJerk-Mean()-X</b>

30           <b>Mean_fBodyAccJerk-Mean()-Y</b>

31           <b>Mean_fBodyAccJerk-Mean()-Z</b>

32       <b>Mean_fBodyAccJerk-MeanFreq()-X</b>

33       <b>Mean_fBodyAccJerk-MeanFreq()-Y</b>

34       <b>Mean_fBodyAccJerk-MeanFreq()-Z</b>

35              <b>Mean_fBodyGyro-Mean()-X</b>

36              <b>Mean_fBodyGyro-Mean()-Y</b>

37              <b>Mean_fBodyGyro-Mean()-Z</b>

38          <b>Mean_fBodyGyro-MeanFreq()-X</b>

39          <b>Mean_fBodyGyro-MeanFreq()-Y</b>

40          <b>Mean_fBodyGyro-MeanFreq()-Z</b>

41              <b>Mean_fBodyAccMag-Mean()</b>

42          <b>Mean_fBodyAccMag-MeanFreq()</b>

43      <b>Mean_fBodyBodyAccJerkMag-Mean()</b>

44  <b>Mean_fBodyBodyAccJerkMag-MeanFreq()</b>

45         <b>Mean_fBodyBodyGyroMag-Mean()</b>

46     <b>Mean_fBodyBodyGyroMag-MeanFreq()</b>

47     <b>Mean_fBodyBodyGyroJerkMag-Mean()</b>

48 <b>Mean_fBodyBodyGyroJerkMag-MeanFreq()</b>

49                <b>Mean_tBodyAcc-std()-X</b>

50                <b>Mean_tBodyAcc-std()-Y</b>

51                <b>Mean_tBodyAcc-std()-Z</b>

52             <b>Mean_tGravityAcc-std()-X</b>

53             <b>Mean_tGravityAcc-std()-Y</b>

54             <b>Mean_tGravityAcc-std()-Z</b>

55            <b>Mean_tBodyAccJerk-std()-X</b>

56            <b>Mean_tBodyAccJerk-std()-Y</b>	

57            <b>Mean_tBodyAccJerk-std()-Z</b>

58               <b>Mean_tBodyGyro-std()-X</b>

59               <b>Mean_tBodyGyro-std()-Y</b>

60               <b>Mean_tBodyGyro-std()-Z</b>

61           <b>Mean_tBodyGyroJerk-std()-X</b>

62           <b>Mean_tBodyGyroJerk-std()-Y</b>

63           <b>Mean_tBodyGyroJerk-std()-Z</b>

64               <b>Mean_tBodyAccMag-std()</b>

65            <b>Mean_tGravityAccMag-std()</b>

66           <b>Mean_tBodyAccJerkMag-std()</b>

67              <b>Mean_tBodyGyroMag-std()</b>

 68          <b>Mean_tBodyGyroJerkMag-std()</b>

69                <b>Mean_fBodyAcc-std()-X</b>

70                <b>Mean_fBodyAcc-std()-Y</b>

71                <b>Mean_fBodyAcc-std()-Z</b>

72            <b>Mean_fBodyAccJerk-std()-X</b>

73            <b>Mean_fBodyAccJerk-std()-Y</b>

74            <b>Mean_fBodyAccJerk-std()-Z</b>

75               <b>Mean_fBodyGyro-std()-X</b>

76               <b>Mean_fBodyGyro-std()-Y</b>

77               <b>Mean_fBodyGyro-std()-Z</b>

78               <b>Mean_fBodyAccMag-std()</b>

79       <b>Mean_fBodyBodyAccJerkMag-std()</b>

80          <b>Mean_fBodyBodyGyroMag-std()</b>

81     <b>Mean_fBodyBodyGyroJerkMag-std()</b>
