Codebook with descriptions about Dataset
=========================================

**The dataset includes the following files:**


- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

**Description of Tidy Dataset**

**Dimension**

The dataset has 180 rows and 68 columns with 66 variables and activity, subject labels. Each row shows respective average mean with respect to the variables. 

**Selection of Data**

- 'mean()': Mean value
- 'std()': Standard deviation

Variables with these two functions are selected for Tidy Dataset in this project. all the values under 66 variables are **Numeric** .

**Activity and Subject Labels**

Subject is defined by 1 to 30. Activity are defined from previously provided Data file as follows:

- WALKING
- WALKING_UPSTAIRS
- WALKING_DOWNSTAIRS
- SITTING
- STANDING
- LAYING

**All the Variables included in the data set including Activity and Subject labels. **

1. "activity"    
2. "subject"    
3. "timeBodyAccMean-X"                 
4. "timeBodyAccMean-Y"   
5. "timeBodyAccMean-Z"  
6. "timeBodyAcc-std-X"                 
7. "timeBodyAcc-std-Y"  
8. "timeBodyAcc-std-Z"  
9. "timeGravityAccMean-X"  
10. "timeGravityAccMean-Y"  
11. "timeGravityAccMean-Z"  
12. "timeGravityAcc-std-X"              
13. "timeGravityAcc-std-Y"  
14. "timeGravityAcc-std-Z"  
15. "timeBodyAccJerkMean-X"  
16. "timeBodyAccJerkMean-Y"  
17. "timeBodyAccJerkMean-Z"  
18. "timeBodyAccJerk-std-X"             
19. "timeBodyAccJerk-std-Y"  
20. "timeBodyAccJerk-std-Z"  
21. "timeBodyGyroMean-X"                
22. "timeBodyGyroMean-Y"  
23. "timeBodyGyroMean-Z"   
24. "timeBodyGyro-std-X"                
25. "timeBodyGyro-std-Y" 
26. "timeBodyGyro-std-Z"  
27. "timeBodyGyroJerkMean-X"              
28. "timeBodyGyroJerkMean-Y"  
29. "timeBodyGyroJerkMean-Z"  
30. "timeBodyGyroJerk-std-X"            
31. "timeBodyGyroJerk-std-Y"  
32. "timeBodyGyroJerk-std-Z"  
33. "timeBodyAccMagnitudeMean"            
34. "timeBodyAccMagnitudeSD"      
35. "timeGravityAccMagnitudeMean"   
36. "timeGravityAccMagnitudeSD"         
37. "timeBodyAccJerkMagnitudeMean"    
38. "timeBodyAccJerkMagnitudeSD"  
39. "timeBodyGyroMagnitudeMean"         
40. "timeBodyGyroMagnitudeSD"   
41. "timeBodyGyroJerkMagnitudeMean"    
42. "timeBodyGyroJerkMagnitudeSD"       
43. "frequencyBodyAccMean-X"   
44. "frequencyBodyAccMean-Y"   
45. "frequencyBodyAccMean-Z"              
46. "frequencyBodyAcc-std-X"     
47. "frequencyBodyAcc-std-Y"     
48. "frequencyBodyAcc-std-Z"             
49. "frequencyBodyAccJerkMean-X"   
50. "frequencyBodyAccJerkMean-Y"  
51. "frequencyBodyAccJerkMean-Z"         
52. "frequencyBodyAccJerk-std-X"  
53. "frequencyBodyAccJerk-std-Y"   
54. "frequencyBodyAccJerk-std-Z"         
55. "frequencyBodyGyroMean-X"   
56. "frequencyBodyGyroMean-Y"   
57. "frequencyBodyGyroMean-Z"           
58. "frequencyBodyGyro-std-X"  
59. "frequencyBodyGyro-std-Y"  
60. "frequencyBodyGyro-std-Z"           
61. "frequencyBodyAccMagnitudeMean"  
62. "frequencyBodyAccMagnitudeSD"           
63. "frequencyBodyAccJerkMagnitudeMean"   
64. "frequencyBodyAccJerkMagnitudeSD"    
65. "frequencyBodyGyroMagnitudeMean"   
66. "frequencyBodyGyroMagnitudeSD"         
67. "frequencyBodyGyroJerkMagnitudeMean"   
68. "frequencyBodyGyroJerkMagnitudeSD"   
