================================================================================
This codebook is based off the file 'features_info.txt' that was part of the
original project materials.


================================================================================
Original Experimental Study Design

Note that this section (largely borrowed from the original file) describes
variables included in the original data set but not the set produced by
run_analysis.R.

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals
(prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they
were filtered using a median filter and a 3rd order low pass Butterworth filter
with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration
signal was then separated into body and gravity acceleration signals
(tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter
with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the
magnitude of these three-dimensional signals were calculated using the Euclidean
norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag,
tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag,
fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain
signals). 

These signals were used to estimate variables of the feature vector for each
pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.


================================================================================
Data Processing

All of the data processing is done in the R script 'run_analysis.R'. It produces
a table with 180 rows and 81 columns. Each row represents the data for a given
subject performing one of the six activities of the study. The first two columns
denote the subject and activity. The other columns contain data related to
measurements taken in the original study. Of these measurements, only those that
represent means and standard deviations of signals were retained. These columns
were then averaged across each subject-activity combination to yield with values
contained in the final tidy data set. The variables that represent (linear)
acceleration are in standard gravity units of 'g' while the angular velocity
variables are in units of radian/sec.

Note that the variable 'uci' is to be altered to suit the directory preferred by
the user.

The columns are as follows:
 [1] "subject"   - the individual participant of the study                                               
 [2] "activity"  - the activity genereating the signals (see the README for a list)                                               
 [3] "MeanOfBodyAccelerationSignalAlongXAxisInTimeDomain"       
 [4] "MeanOfBodyAccelerationSignalAlongYAxisInTimeDomain"       
 [5] "MeanOfBodyAccelerationSignalAlongZAxisInTimeDomain"       
 [6] "StdDevOfBodyAccelerationSignalAlongXAxisInTimeDomain"     
 [7] "StdDevOfBodyAccelerationSignalAlongYAxisInTimeDomain"     
 [8] "StdDevOfBodyAccelerationSignalAlongZAxisInTimeDomain"     
 [9] "MeanOfGravityAccelerationSignalAlongXAxisInTimeDomain"    
[10] "MeanOfGravityAccelerationSignalAlongYAxisInTimeDomain"    
[11] "MeanOfGravityAccelerationSignalAlongZAxisInTimeDomain"    
[12] "StdDevOfGravityAccelerationSignalAlongXAxisInTimeDomain"  
[13] "StdDevOfGravityAccelerationSignalAlongYAxisInTimeDomain"  
[14] "StdDevOfGravityAccelerationSignalAlongZAxisInTimeDomain"  
[15] "MeanOfBodyAccelerationJerkSignalAlongXAxisInTimeDomain"   
[16] "MeanOfBodyAccelerationJerkSignalAlongYAxisInTimeDomain"   
[17] "MeanOfBodyAccelerationJerkSignalAlongZAxisInTimeDomain"   
[18] "StdDevOfBodyAccelerationJerkSignalAlongXAxisInTimeDomain" 
[19] "StdDevOfBodyAccelerationJerkSignalAlongYAxisInTimeDomain" 
[20] "StdDevOfBodyAccelerationJerkSignalAlongZAxisInTimeDomain" 
[21] "MeanOfBodyAngVelSignalAlongXAxisInTimeDomain"             
[22] "MeanOfBodyAngVelSignalAlongYAxisInTimeDomain"             
[23] "MeanOfBodyAngVelSignalAlongZAxisInTimeDomain"             
[24] "StdDevOfBodyAngVelSignalAlongXAxisInTimeDomain"           
[25] "StdDevOfBodyAngVelSignalAlongYAxisInTimeDomain"           
[26] "StdDevOfBodyAngVelSignalAlongZAxisInTimeDomain"           
[27] "MeanOfBodyAngVelJerkSignalAlongXAxisInTimeDomain"         
[28] "MeanOfBodyAngVelJerkSignalAlongYAxisInTimeDomain"         
[29] "MeanOfBodyAngVelJerkSignalAlongZAxisInTimeDomain"         
[30] "StdDevOfBodyAngVelJerkSignalAlongXAxisInTimeDomain"       
[31] "StdDevOfBodyAngVelJerkSignalAlongYAxisInTimeDomain"       
[32] "StdDevOfBodyAngVelJerkSignalAlongZAxisInTimeDomain"       
[33] "MeanOfMagnitudeOfBodyAccelerationSignalInTimeDomain"      
[34] "StdDevOfMagnitudeOfBodyAccelerationSignalInTimeDomain"    
[35] "MeanOfMagnitudeOfGravityAccelerationSignalInTimeDomain"   
[36] "StdDevOfMagnitudeOfGravityAccelerationSignalInTimeDomain" 
[37] "MeanOfMagnitudeOfBodyAccelerationJerkSignalInTimeDomain"  
[38] "StdDevOfMagnitudeOfBodyAccelerationJerkSignalInTimeDomain"
[39] "MeanOfMagnitudeOfBodyAngVelSignalInTimeDomain"            
[40] "StdDevOfMagnitudeOfBodyAngVelSignalInTimeDomain"          
[41] "MeanOfMagnitudeOfBodyAngVelJerkSignalInTimeDomain"        
[42] "StdDevOfMagnitudeOfBodyAngVelJerkSignalInTimeDomain"      
[43] "MeanOfBodyAccelerationSignalAlongXAxisInFreqDomain"       
[44] "MeanOfBodyAccelerationSignalAlongYAxisInFreqDomain"       
[45] "MeanOfBodyAccelerationSignalAlongZAxisInFreqDomain"       
[46] "StdDevOfBodyAccelerationSignalAlongXAxisInFreqDomain"     
[47] "StdDevOfBodyAccelerationSignalAlongYAxisInFreqDomain"     
[48] "StdDevOfBodyAccelerationSignalAlongZAxisInFreqDomain"     
[49] "WtdAvgOfBodyAccelerationSignalAlongXAxisInFreqDomain"     
[50] "WtdAvgOfBodyAccelerationSignalAlongYAxisInFreqDomain"     
[51] "WtdAvgOfBodyAccelerationSignalAlongZAxisInFreqDomain"     
[52] "MeanOfBodyAccelerationJerkSignalAlongXAxisInFreqDomain"   
[53] "MeanOfBodyAccelerationJerkSignalAlongYAxisInFreqDomain"   
[54] "MeanOfBodyAccelerationJerkSignalAlongZAxisInFreqDomain"   
[55] "StdDevOfBodyAccelerationJerkSignalAlongXAxisInFreqDomain" 
[56] "StdDevOfBodyAccelerationJerkSignalAlongYAxisInFreqDomain" 
[57] "StdDevOfBodyAccelerationJerkSignalAlongZAxisInFreqDomain" 
[58] "WtdAvgOfBodyAccelerationJerkSignalAlongXAxisInFreqDomain" 
[59] "WtdAvgOfBodyAccelerationJerkSignalAlongYAxisInFreqDomain" 
[60] "WtdAvgOfBodyAccelerationJerkSignalAlongZAxisInFreqDomain" 
[61] "MeanOfBodyAngVelSignalAlongXAxisInFreqDomain"             
[62] "MeanOfBodyAngVelSignalAlongYAxisInFreqDomain"             
[63] "MeanOfBodyAngVelSignalAlongZAxisInFreqDomain"             
[64] "StdDevOfBodyAngVelSignalAlongXAxisInFreqDomain"           
[65] "StdDevOfBodyAngVelSignalAlongYAxisInFreqDomain"           
[66] "StdDevOfBodyAngVelSignalAlongZAxisInFreqDomain"           
[67] "WtdAvgOfBodyAngVelSignalAlongXAxisInFreqDomain"           
[68] "WtdAvgOfBodyAngVelSignalAlongYAxisInFreqDomain"           
[69] "WtdAvgOfBodyAngVelSignalAlongZAxisInFreqDomain"           
[70] "MeanOfMagnitudeOfBodyAccelerationSignalInFreqDomain"      
[71] "StdDevOfMagnitudeOfBodyAccelerationSignalInFreqDomain"    
[72] "WtdAvgOfMagnitudeOfBodyAccelerationSignalInFreqDomain"    
[73] "MeanOfMagnitudeOfBodyAccelerationJerkSignalInFreqDomain"  
[74] "StdDevOfMagnitudeOfBodyAccelerationJerkSignalInFreqDomain"
[75] "WtdAvgOfMagnitudeOfBodyAccelerationJerkSignalInFreqDomain"
[76] "MeanOfMagnitudeOfBodyAngVelSignalInFreqDomain"            
[77] "StdDevOfMagnitudeOfBodyAngVelSignalInFreqDomain"          
[78] "WtdAvgOfMagnitudeOfBodyAngVelSignalInFreqDomain"          
[79] "MeanOfMagnitudeOfBodyAngVelJerkSignalInFreqDomain"        
[80] "StdDevOfMagnitudeOfBodyAngVelJerkSignalInFreqDomain"      
[81] "WtdAvgOfMagnitudeOfBodyAngVelJerkSignalInFreqDomain"
