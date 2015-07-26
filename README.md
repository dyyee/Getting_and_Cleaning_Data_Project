

#STEP TO RUN run_analysis.R SCRIPT
1. Download the data as per assignment required from following URL.
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

2. Unzip the downloaded file.

3. Download the run_analysis.R script from following URL.

4. Save run_analysis.R script in the above unzipped folder.                
   Note: It should be same level with activity_labels.txt, features.txt and features_info.txt files
  

5. Install reshape2 package by executing following code
	```
	install.packages("reshape2") 
    ```
   This is because this script required reshape2 library to execute the code.                
   If you have installed reshape2 package, you can skip this step.

6. Set the working directory the above unzipped directory.                
   Example,
```setwd("C:/Users/Kenny/Desktop/UCI HAR Dataset")```
   
7. Open and execute run_analysis.R script in RStudio.

8. Upon the code executed, you shall see "Execution Completed" in the console

9. The tidy_wearable_activity_data.txt file is created in the working directory folder.


