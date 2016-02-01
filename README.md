================================================================================
This README file is based off the README file that was part of the original
project materials.


================================================================================
The experiments have been carried out with a group of 30 volunteers within an
age bracket of 19-48 years. Each person performed six activities (WALKING,
WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
velocity at a constant rate of 50Hz. The experiments have been video-recorded to
label the data manually. The obtained dataset has been randomly partitioned into
two sets, where 70% of the volunteers was selected for generating the training
data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying
noise filters and then sampled in fixed-width sliding windows of 2.56 sec and
50% overlap (128 readings/window). The sensor acceleration signal, which has
gravitational and body motion components, was separated using a Butterworth
low-pass filter into body acceleration and gravity. The gravitational force is
assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained
by calculating variables from the time and frequency domain.
See 'codebook.txt' for more details. 


The github repository includes the following files:
================================================================================
- 'README.txt'

- 'cobebook.txt': Shows information abou the variables in the data set.

- 'run_analysis.R': r file that processes the data according to the instructions
  of the project to produce the final dataset.


================================================================================
Data Processing in R Script

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

  
License (largely identical to License section of the original README):
================================================================================
Use of the original dataset in publications must be acknowledged by referencing
the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L.
Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass
Hardware-Friendly Support Vector Machine. International Workshop of Ambient
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

The original dataset is distributed AS-IS and no responsibility implied or
explicit can be addressed to the authors or their institutions for its use or
misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
