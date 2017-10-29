# Scope
The following describes the variables in the output dataset, `UCI HAR Dataset - Means by Activity and Subject.txt`.  See the extracted UCI README and code books in the `/UCI HAR Dataset` directory for more information on native references.

# Note on Units
Units do not appear to be fully specified in the UCI README.txt or code books.  That said, there are known to be acceleration measures that are presumably ft/sec^2, m/sec^2, or g, and there are angular velocity measures that are presumably radians/sec.  There is one section in the README.txt file that implies that gravity measures are in g but this is in reference to a file that was not used in this project.  The units of measure for jerk and magnitude variables are wholly unknown.

# Variables
`activity` 
Type:  Factor

Levels: 1:6

Labels:   `WALKING`, `WALKING_UPSTAIRS`, `WALKING_DOWNSTAIRS`, `SITTING`, `STANDING`, `LAYING`

Unit:  None/nominal


`subject`

Type:  Factor

Levels: 1:30

Labels:   Level as character, `1`, `2`, ..., `30`

Unit:  None/nominal


`timeseriesbodyaccelerationmeanxdimension`                          
UCI Base Variable:  tBodyAcc-mean()-X
UCI Type:  Time series
UCI Measure:  Body acceleration
UCI Aggregate:  Mean
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyaccelerationmeanydimension`
UCI Base Variable:  tBodyAcc-mean()-Y
UCI Type:  Time series
UCI Measure:  Body acceleration
UCI Aggregate:  Mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyaccelerationmeanzdimension`  
UCI Base Variable:  tBodyAcc-mean()-Z
UCI Type:  Time series
UCI Measure:  Body acceleration
UCI Aggregate:  Mean
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyaccelerationstandarddeviationxdimension`  
UCI Base Variable:  tBodyAcc-std()-X
UCI Type:  Time series
UCI Measure:  Body acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyaccelerationstandarddeviationydimension`             
UCI Base Variable:  tBodyAcc-std()-Y
UCI Type:  Time Series
UCI Measure:  Body acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyaccelerationstandarddeviationzdimension`             
UCI Base Variable:  tBodyAcc-std()-Z 
UCI Type:  Time series
UCI Measure:  Body acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesgravityaccelerationmeanxdimension`                       
UCI Base Variable:  tGravityAcc-mean()-X
UCI Type:  Time series
UCI Measure:  Gravity acceleration
UCI Aggregate:  Mean
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesgravityaccelerationmeanydimension`                       
UCI Base Variable:  tGravityAcc-mean()-Y
UCI Type:  Time series
UCI Measure:  Gravity acceleration
UCI Aggregate:  Mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesgravityaccelerationmeanzdimension`                       
UCI Base Variable:  tGravityAcc-mean()-Z
UCI Type:  Time series
UCI Measure:  Gravity acceleration
UCI Aggregate:  Mean
UCI Dimension:  Z                                  
Output File Aggregate:  Mean

`timeseriesgravityaccelerationstandarddeviationxdimension`          
UCI Base Variable:  tGravityAcc-std()-X
UCI Type:  Time series
UCI Measure:  Gravity acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesgravityaccelerationstandarddeviationydimension`          
UCI Base Variable:  tGravityAcc-std()-Y
UCI Type:  Time series
UCI Measure:  Gravity acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesgravityaccelerationstandarddeviationzdimension`          
UCI Base Variable:  tGravityAcc-std()-Z
UCI Type:  Time series
UCI Measure:  Gravity acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkmeanxdimension`                      
UCI Base Variable:  tBodyAccJerk-mean()-X
UCI Type:  Time series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Mean
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkmeanydimension`                      
UCI Base Variable:  tBodyAccJerk-mean()-Y
UCI Type:  Time series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkmeanzdimension`                      
UCI Base Variable:  tBodyAccJerk-mean()-Z
UCI Type:  Time series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Mean
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkstandarddeviationxdimension`         
UCI Base Variable:  tBodyAccJerk-std()-X
UCI Type:  Time series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkstandarddeviationydimension`         
UCI Base Variable:  tBodyAccJerk-std()-Y
UCI Type:  Time series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkstandarddeviationzdimension`         
UCI Base Variable:  tBodyAccJerk-std()-Z
UCI Type:  Time series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitymeanxdimension`                       
UCI Base Variable:  tBodyGyro-mean()-X
UCI Type:  Time series
UCI Measure:  Body angular velocity
UCI Aggregate:  Mean
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitymeanydimension`                       
UCI Base Variable:  tBodyGyro-mean()-Y
UCI Type:  Time series
UCI Measure:  Body angular velocity
UCI Aggregate:  Mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitymeanzdimension`                       
UCI Base Variable:  tBodyGyro-mean()-Z
UCI Type:  Time series
UCI Measure:  Body angular velocity
UCI Aggregate:  Mean
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitystandarddeviationxdimension`          
UCI Base Variable:  tBodyGyro-std()-X
UCI Type:  Time series
UCI Measure:  Body angular velocity
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitystandarddeviationydimension`          
UCI Base Variable:  tBodyGyro-std()-Y
UCI Type:  Time series
UCI Measure:  Body angular velocity
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitystandarddeviationzdimension`          
UCI Base Variable:  tBodyGyro-std()-Z
UCI Type:  Time series
UCI Measure:  Body angular velocity
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkmeanxdimension`                   
UCI Base Variable:  tBodyGyroJerk-mean()-X
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk
UCI Aggregate:  mean
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkmeanydimension`                   
UCI Base Variable:  tBodyGyroJerk-mean()-Y
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk
UCI Aggregate:  Mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkmeanzdimension`                   
UCI Base Variable:  tBodyGyroJerk-mean()-Z
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk
UCI Aggregate:  Mean
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkstandarddeviationxdimension`      
UCI Base Variable:  tBodyGyroJerk-std()-X
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkstandarddeviationydimension`      
UCI Base Variable:  tBodyGyroJerk-std()-Y
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkstandarddeviationzdimension`      
UCI Base Variable:  tBodyGyroJerk-std()-Z
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`timeseriesbodyaccelerationmagnitudemean`                           
UCI Base Variable:  tBodyAccMag-mean()
UCI Type:  Time Series
UCI Measure:  Body acceleration magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesbodyaccelerationmagnitudestandarddeviation`              
UCI Base Variable:  tBodyAccMag-std()
UCI Type:  Time series
UCI Measure:  Body acceleration magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesgravityaccelerationmagnitudemean`                        
UCI Base Variable:  tGravityAccMag-mean()
UCI Type:  Time series
UCI Measure:  Gravity acceleration magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesgravityaccelerationmagnitudestandarddeviation`           
UCI Base Variable:  tGravityAccMag-std()
UCI Type:  Time series
UCI Measure:  Gravity acceleration magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkmagnitudemean`                       
UCI Base Variable:  tBodyAccJerkMag-mean()
UCI Type:  Time series
UCI Measure:  Body acceleration jerk magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesbodyaccelerationjerkmagnitudestandarddeviation`          
UCI Base Variable:  tBodyAccJerkMag-std()
UCI Type:  Time series
UCI Measure:  Body acceleration jerk magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitymagnitudemean`                        
UCI Base Variable:  tBodyGyroMag-mean()
UCI Type:  Time series
UCI Measure:  Body angular velocity magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesbodyangularvelocitymagnitudestandarddeviation`           
UCI Base Variable:  tBodyGyroMag-std()
UCI Type:  Time series
UCI Measure:  Body angular velocity magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkmagnitudemean`                    
UCI Base Variable:  tBodyGyroJerkMag-mean()
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`timeseriesbodyangularvelocityjerkmagnitudestandarddeviation`       
UCI Base Variable:  tBodyGyroJerkMag-std()
UCI Type:  Time series
UCI Measure:  Body angular velocity jerk magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationmeanxdimension`                       
UCI Base Variable:  fBodyAcc-mean()-X
UCI Type:  Fourier series
UCI Measure:  Body acceleration
UCI Aggregate:  Mean
UCI Dimension:  X
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationmeanydimension`                       
UCI Base Variable:  fBodyAcc-mean()-Y
UCI Type:  Fourier series
UCI Measure:  Body acceleration
UCI Aggregate:  Mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationmeanzdimension`                       
UCI Base Variable:  fBodyAcc-mean()-Z
UCI Type:  Fourier series
UCI Measure:  Body acceleration
UCI Aggregate:  Mean
UCI Dimension:  Z
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationstandarddeviationxdimension`          
UCI Base Variable:  fBodyAcc-std()-X
UCI Type:  Fourier series
UCI Measure:  Body acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationstandarddeviationydimension`          
UCI Base Variable:  fBodyAcc-std()-Y
UCI Type:  Fourier series
UCI Measure:  Body acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationstandarddeviationzdimension`          
UCI Base Variable:  fBodyAcc-std()-Z
UCI Type:  Fourier series
UCI Measure:  Body acceleration
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationjerkmeanxdimension`                   
UCI Base Variable:  fBodyAccJerk-mean()-X
UCI Type:  Fourier series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Mean
UCI Dimension:  X
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationjerkmeanydimension`                   
UCI Base Variable:  fBodyAccJerk-mean()-Y
UCI Type:  Fourier series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationjerkmeanzdimension`                   
UCI Base Variable:  fBodyAccJerk-mean()-Z
UCI Type:  Fourier series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Mean
UCI Dimension:  Z
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationjerkstandarddeviationxdimension`      
UCI Base Variable:  fBodyAccJerk-std()-X
UCI Type:  Fourier series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationjerkstandarddeviationydimension`      
UCI Base Variable:  fBodyAccJerk-std()-Y
UCI Type:  Fourier series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationjerkstandarddeviationzdimension`      
UCI Base Variable:  fBodyAccJerk-std()-Z
UCI Type:  Fourier series
UCI Measure:  Body acceleration jerk
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`fourierseriesbodyangularvelocitymeanxdimension`                    
UCI Base Variable:  fBodyGyro-mean()-X
UCI Type:  Fourier series
UCI Measure:  Body angular velocity
UCI Aggregate:  Mean
UCI Dimension:  X
Output File Aggregate:  Mean

`fourierseriesbodyangularvelocitymeanydimension`                    
UCI Base Variable:  fBodyGyro-mean()-Y
UCI Type:  Fourier series
UCI Measure:  Body angular velocity
UCI Aggregate:  Mean
UCI Dimension:  Y
Output File Aggregate:  Mean

`fourierseriesbodyangularvelocitymeanzdimension`                    
UCI Base Variable:  fBodyGyro-mean()-Z
UCI Type:  Fourier series
UCI Measure:  Body angular velocity
UCI Aggregate:  Mean
UCI Dimension:  Z
Output File Aggregate:  Mean

`fourierseriesbodyangularvelocitystandarddeviationxdimension`       
UCI Base Variable:  fBodyGyro-std()-X
UCI Type:  Fourier series
UCI Measure:  Body angular velocity
UCI Aggregate:  Standard deviation
UCI Dimension:  X
Output File Aggregate:  Mean

`fourierseriesbodyangularvelocitystandarddeviationydimension`       
UCI Base Variable:  fBodyGyro-std()-Y
UCI Type:  Fourier series
UCI Measure:  Body angular velocity
UCI Aggregate:  Standard deviation
UCI Dimension:  Y
Output File Aggregate:  Mean

`fourierseriesbodyangularvelocitystandarddeviationzdimension`       
UCI Base Variable:  fBodyGyro-std()-Z
UCI Type:  Fourier series
UCI Measure:  Body angular velocity
UCI Aggregate:  Standard deviation
UCI Dimension:  Z
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationmagnitudemean`                        
UCI Base Variable:  fBodyAccMag-mean()
UCI Type:  Fourier series
UCI Measure:  Body acceleration magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`fourierseriesbodyaccelerationmagnitudestandarddeviation`           
UCI Base Variable:  fBodyAccMag-std()
UCI Type:  Fourier series
UCI Measure:  Body acceleration magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`fourierseriesbodybodyaccelerationjerkmagnitudemean`                
UCI Base Variable:  fBodyBodyAccJerkMag-mean()
UCI Type:  Fourier series
UCI Measure:  Body body (?) acceleration jerk magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`fourierseriesbodybodyaccelerationjerkmagnitudestandarddeviation`   
UCI Base Variable:  fBodyBodyAccJerkMag-std()
UCI Type:  Fourier series
UCI Measure:  Body body (?) acceleration jerk magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`fourierseriesbodybodyangularvelocitymagnitudemean`                 
UCI Base Variable:  fBodyBodyGyroMag-mean()
UCI Type:  Fourier series
UCI Measure:  Body body (?) angular velocity magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

`fourierseriesbodybodyangularvelocitymagnitudestandarddeviation`    
UCI Base Variable:  fBodyBodyGyroMag-std()
UCI Type:  Fourier series
UCI Measure:  Body body (?) angular velocity magnitude
UCI Aggregate:  Standard deviation
UCI Dimension:  <None>
Output File Aggregate:  Mean

`fourierseriesbodybodyangularvelocityjerkmagnitudemean`             
UCI Base Variable:  fBodyBodyGyroJerkMag-mean() 
UCI Type:  Fourier series
UCI Measure:  Body body (?) angular velocity magnitude
UCI Aggregate:  Mean
UCI Dimension:  <None>
Output File Aggregate:  Mean

