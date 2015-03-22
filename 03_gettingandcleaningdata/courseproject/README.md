Project for Getting and Cleaning Data

Parameters for the project

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement.
Uses descriptive activity names to name the activities in the data set.
Appropriately labels the data set with descriptive activity names.
Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Good luck!
Steps to reproduce this project

Open the R script run_analysis.r using a text editor.
Change the parameter of the setwd function call to the working directory/folder (i.e., the folder where these the R script file is saved).
Run the R script run_analysis.r. It calls the R Markdown file, run_analysis.Rmd, which contains the bulk of the code.
Outputs produced

==================================================================
Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit?degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

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

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

1 tBodyAcc-mean()-X
2 tBodyAcc-mean()-Y
3 tBodyAcc-mean()-Z
4 tBodyAcc-std()-X
5 tBodyAcc-std()-Y
6 tBodyAcc-std()-Z
7 tBodyAcc-mad()-X
8 tBodyAcc-mad()-Y
9 tBodyAcc-mad()-Z
10 tBodyAcc-max()-X
11 tBodyAcc-max()-Y
12 tBodyAcc-max()-Z
13 tBodyAcc-min()-X
14 tBodyAcc-min()-Y
15 tBodyAcc-min()-Z
16 tBodyAcc-sma()
17 tBodyAcc-energy()-X
18 tBodyAcc-energy()-Y
19 tBodyAcc-energy()-Z
20 tBodyAcc-iqr()-X
21 tBodyAcc-iqr()-Y
22 tBodyAcc-iqr()-Z
23 tBodyAcc-entropy()-X
24 tBodyAcc-entropy()-Y
25 tBodyAcc-entropy()-Z
26 tBodyAcc-arCoeff()-X,1
27 tBodyAcc-arCoeff()-X,2
28 tBodyAcc-arCoeff()-X,3
29 tBodyAcc-arCoeff()-X,4
30 tBodyAcc-arCoeff()-Y,1
31 tBodyAcc-arCoeff()-Y,2
32 tBodyAcc-arCoeff()-Y,3
33 tBodyAcc-arCoeff()-Y,4
34 tBodyAcc-arCoeff()-Z,1
35 tBodyAcc-arCoeff()-Z,2
36 tBodyAcc-arCoeff()-Z,3
37 tBodyAcc-arCoeff()-Z,4
38 tBodyAcc-correlation()-X,Y
39 tBodyAcc-correlation()-X,Z
40 tBodyAcc-correlation()-Y,Z
41 tGravityAcc-mean()-X
42 tGravityAcc-mean()-Y
43 tGravityAcc-mean()-Z
44 tGravityAcc-std()-X
45 tGravityAcc-std()-Y
46 tGravityAcc-std()-Z
47 tGravityAcc-mad()-X
48 tGravityAcc-mad()-Y
49 tGravityAcc-mad()-Z
50 tGravityAcc-max()-X
51 tGravityAcc-max()-Y
52 tGravityAcc-max()-Z
53 tGravityAcc-min()-X
54 tGravityAcc-min()-Y
55 tGravityAcc-min()-Z
56 tGravityAcc-sma()
57 tGravityAcc-energy()-X
58 tGravityAcc-energy()-Y
59 tGravityAcc-energy()-Z
60 tGravityAcc-iqr()-X
61 tGravityAcc-iqr()-Y
62 tGravityAcc-iqr()-Z
63 tGravityAcc-entropy()-X
64 tGravityAcc-entropy()-Y
65 tGravityAcc-entropy()-Z
66 tGravityAcc-arCoeff()-X,1
67 tGravityAcc-arCoeff()-X,2
68 tGravityAcc-arCoeff()-X,3
69 tGravityAcc-arCoeff()-X,4
70 tGravityAcc-arCoeff()-Y,1
71 tGravityAcc-arCoeff()-Y,2
72 tGravityAcc-arCoeff()-Y,3
73 tGravityAcc-arCoeff()-Y,4
74 tGravityAcc-arCoeff()-Z,1
75 tGravityAcc-arCoeff()-Z,2
76 tGravityAcc-arCoeff()-Z,3
77 tGravityAcc-arCoeff()-Z,4
78 tGravityAcc-correlation()-X,Y
79 tGravityAcc-correlation()-X,Z
80 tGravityAcc-correlation()-Y,Z
81 tBodyAccJerk-mean()-X
82 tBodyAccJerk-mean()-Y
83 tBodyAccJerk-mean()-Z
84 tBodyAccJerk-std()-X
85 tBodyAccJerk-std()-Y
86 tBodyAccJerk-std()-Z
87 tBodyAccJerk-mad()-X
88 tBodyAccJerk-mad()-Y
89 tBodyAccJerk-mad()-Z
90 tBodyAccJerk-max()-X
91 tBodyAccJerk-max()-Y
92 tBodyAccJerk-max()-Z
93 tBodyAccJerk-min()-X
94 tBodyAccJerk-min()-Y
95 tBodyAccJerk-min()-Z
96 tBodyAccJerk-sma()
97 tBodyAccJerk-energy()-X
98 tBodyAccJerk-energy()-Y
99 tBodyAccJerk-energy()-Z
100 tBodyAccJerk-iqr()-X
101 tBodyAccJerk-iqr()-Y
102 tBodyAccJerk-iqr()-Z
103 tBodyAccJerk-entropy()-X
104 tBodyAccJerk-entropy()-Y
105 tBodyAccJerk-entropy()-Z
106 tBodyAccJerk-arCoeff()-X,1
107 tBodyAccJerk-arCoeff()-X,2
108 tBodyAccJerk-arCoeff()-X,3
109 tBodyAccJerk-arCoeff()-X,4
110 tBodyAccJerk-arCoeff()-Y,1
111 tBodyAccJerk-arCoeff()-Y,2
112 tBodyAccJerk-arCoeff()-Y,3
113 tBodyAccJerk-arCoeff()-Y,4
114 tBodyAccJerk-arCoeff()-Z,1
115 tBodyAccJerk-arCoeff()-Z,2
116 tBodyAccJerk-arCoeff()-Z,3
117 tBodyAccJerk-arCoeff()-Z,4
118 tBodyAccJerk-correlation()-X,Y
119 tBodyAccJerk-correlation()-X,Z
120 tBodyAccJerk-correlation()-Y,Z
121 tBodyGyro-mean()-X
122 tBodyGyro-mean()-Y
123 tBodyGyro-mean()-Z
124 tBodyGyro-std()-X
125 tBodyGyro-std()-Y
126 tBodyGyro-std()-Z
127 tBodyGyro-mad()-X
128 tBodyGyro-mad()-Y
129 tBodyGyro-mad()-Z
130 tBodyGyro-max()-X
131 tBodyGyro-max()-Y
132 tBodyGyro-max()-Z
133 tBodyGyro-min()-X
134 tBodyGyro-min()-Y
135 tBodyGyro-min()-Z
136 tBodyGyro-sma()
137 tBodyGyro-energy()-X
138 tBodyGyro-energy()-Y
139 tBodyGyro-energy()-Z
140 tBodyGyro-iqr()-X
141 tBodyGyro-iqr()-Y
142 tBodyGyro-iqr()-Z
143 tBodyGyro-entropy()-X
144 tBodyGyro-entropy()-Y
145 tBodyGyro-entropy()-Z
146 tBodyGyro-arCoeff()-X,1
147 tBodyGyro-arCoeff()-X,2
148 tBodyGyro-arCoeff()-X,3
149 tBodyGyro-arCoeff()-X,4
150 tBodyGyro-arCoeff()-Y,1
151 tBodyGyro-arCoeff()-Y,2
152 tBodyGyro-arCoeff()-Y,3
153 tBodyGyro-arCoeff()-Y,4
154 tBodyGyro-arCoeff()-Z,1
155 tBodyGyro-arCoeff()-Z,2
156 tBodyGyro-arCoeff()-Z,3
157 tBodyGyro-arCoeff()-Z,4
158 tBodyGyro-correlation()-X,Y
159 tBodyGyro-correlation()-X,Z
160 tBodyGyro-correlation()-Y,Z
161 tBodyGyroJerk-mean()-X
162 tBodyGyroJerk-mean()-Y
163 tBodyGyroJerk-mean()-Z
164 tBodyGyroJerk-std()-X
165 tBodyGyroJerk-std()-Y
166 tBodyGyroJerk-std()-Z
167 tBodyGyroJerk-mad()-X
168 tBodyGyroJerk-mad()-Y
169 tBodyGyroJerk-mad()-Z
170 tBodyGyroJerk-max()-X
171 tBodyGyroJerk-max()-Y
172 tBodyGyroJerk-max()-Z
173 tBodyGyroJerk-min()-X
174 tBodyGyroJerk-min()-Y
175 tBodyGyroJerk-min()-Z
176 tBodyGyroJerk-sma()
177 tBodyGyroJerk-energy()-X
178 tBodyGyroJerk-energy()-Y
179 tBodyGyroJerk-energy()-Z
180 tBodyGyroJerk-iqr()-X
181 tBodyGyroJerk-iqr()-Y
182 tBodyGyroJerk-iqr()-Z
183 tBodyGyroJerk-entropy()-X
184 tBodyGyroJerk-entropy()-Y
185 tBodyGyroJerk-entropy()-Z
186 tBodyGyroJerk-arCoeff()-X,1
187 tBodyGyroJerk-arCoeff()-X,2
188 tBodyGyroJerk-arCoeff()-X,3
189 tBodyGyroJerk-arCoeff()-X,4
190 tBodyGyroJerk-arCoeff()-Y,1
191 tBodyGyroJerk-arCoeff()-Y,2
192 tBodyGyroJerk-arCoeff()-Y,3
193 tBodyGyroJerk-arCoeff()-Y,4
194 tBodyGyroJerk-arCoeff()-Z,1
195 tBodyGyroJerk-arCoeff()-Z,2
196 tBodyGyroJerk-arCoeff()-Z,3
197 tBodyGyroJerk-arCoeff()-Z,4
198 tBodyGyroJerk-correlation()-X,Y
199 tBodyGyroJerk-correlation()-X,Z
200 tBodyGyroJerk-correlation()-Y,Z
201 tBodyAccMag-mean()
202 tBodyAccMag-std()
203 tBodyAccMag-mad()
204 tBodyAccMag-max()
205 tBodyAccMag-min()
206 tBodyAccMag-sma()
207 tBodyAccMag-energy()
208 tBodyAccMag-iqr()
209 tBodyAccMag-entropy()
210 tBodyAccMag-arCoeff()1
211 tBodyAccMag-arCoeff()2
212 tBodyAccMag-arCoeff()3
213 tBodyAccMag-arCoeff()4
214 tGravityAccMag-mean()
215 tGravityAccMag-std()
216 tGravityAccMag-mad()
217 tGravityAccMag-max()
218 tGravityAccMag-min()
219 tGravityAccMag-sma()
220 tGravityAccMag-energy()
221 tGravityAccMag-iqr()
222 tGravityAccMag-entropy()
223 tGravityAccMag-arCoeff()1
224 tGravityAccMag-arCoeff()2
225 tGravityAccMag-arCoeff()3
226 tGravityAccMag-arCoeff()4
227 tBodyAccJerkMag-mean()
228 tBodyAccJerkMag-std()
229 tBodyAccJerkMag-mad()
230 tBodyAccJerkMag-max()
231 tBodyAccJerkMag-min()
232 tBodyAccJerkMag-sma()
233 tBodyAccJerkMag-energy()
234 tBodyAccJerkMag-iqr()
235 tBodyAccJerkMag-entropy()
236 tBodyAccJerkMag-arCoeff()1
237 tBodyAccJerkMag-arCoeff()2
238 tBodyAccJerkMag-arCoeff()3
239 tBodyAccJerkMag-arCoeff()4
240 tBodyGyroMag-mean()
241 tBodyGyroMag-std()
242 tBodyGyroMag-mad()
243 tBodyGyroMag-max()
244 tBodyGyroMag-min()
245 tBodyGyroMag-sma()
246 tBodyGyroMag-energy()
247 tBodyGyroMag-iqr()
248 tBodyGyroMag-entropy()
249 tBodyGyroMag-arCoeff()1
250 tBodyGyroMag-arCoeff()2
251 tBodyGyroMag-arCoeff()3
252 tBodyGyroMag-arCoeff()4
253 tBodyGyroJerkMag-mean()
254 tBodyGyroJerkMag-std()
255 tBodyGyroJerkMag-mad()
256 tBodyGyroJerkMag-max()
257 tBodyGyroJerkMag-min()
258 tBodyGyroJerkMag-sma()
259 tBodyGyroJerkMag-energy()
260 tBodyGyroJerkMag-iqr()
261 tBodyGyroJerkMag-entropy()
262 tBodyGyroJerkMag-arCoeff()1
263 tBodyGyroJerkMag-arCoeff()2
264 tBodyGyroJerkMag-arCoeff()3
265 tBodyGyroJerkMag-arCoeff()4
266 fBodyAcc-mean()-X
267 fBodyAcc-mean()-Y
268 fBodyAcc-mean()-Z
269 fBodyAcc-std()-X
270 fBodyAcc-std()-Y
271 fBodyAcc-std()-Z
272 fBodyAcc-mad()-X
273 fBodyAcc-mad()-Y
274 fBodyAcc-mad()-Z
275 fBodyAcc-max()-X
276 fBodyAcc-max()-Y
277 fBodyAcc-max()-Z
278 fBodyAcc-min()-X
279 fBodyAcc-min()-Y
280 fBodyAcc-min()-Z
281 fBodyAcc-sma()
282 fBodyAcc-energy()-X
283 fBodyAcc-energy()-Y
284 fBodyAcc-energy()-Z
285 fBodyAcc-iqr()-X
286 fBodyAcc-iqr()-Y
287 fBodyAcc-iqr()-Z
288 fBodyAcc-entropy()-X
289 fBodyAcc-entropy()-Y
290 fBodyAcc-entropy()-Z
291 fBodyAcc-maxInds-X
292 fBodyAcc-maxInds-Y
293 fBodyAcc-maxInds-Z
294 fBodyAcc-meanFreq()-X
295 fBodyAcc-meanFreq()-Y
296 fBodyAcc-meanFreq()-Z
297 fBodyAcc-skewness()-X
298 fBodyAcc-kurtosis()-X
299 fBodyAcc-skewness()-Y
300 fBodyAcc-kurtosis()-Y
301 fBodyAcc-skewness()-Z
302 fBodyAcc-kurtosis()-Z
303 fBodyAcc-bandsEnergy()-1,8
304 fBodyAcc-bandsEnergy()-9,16
305 fBodyAcc-bandsEnergy()-17,24
306 fBodyAcc-bandsEnergy()-25,32
307 fBodyAcc-bandsEnergy()-33,40
308 fBodyAcc-bandsEnergy()-41,48
309 fBodyAcc-bandsEnergy()-49,56
310 fBodyAcc-bandsEnergy()-57,64
311 fBodyAcc-bandsEnergy()-1,16
312 fBodyAcc-bandsEnergy()-17,32
313 fBodyAcc-bandsEnergy()-33,48
314 fBodyAcc-bandsEnergy()-49,64
315 fBodyAcc-bandsEnergy()-1,24
316 fBodyAcc-bandsEnergy()-25,48
317 fBodyAcc-bandsEnergy()-1,8
318 fBodyAcc-bandsEnergy()-9,16
319 fBodyAcc-bandsEnergy()-17,24
320 fBodyAcc-bandsEnergy()-25,32
321 fBodyAcc-bandsEnergy()-33,40
322 fBodyAcc-bandsEnergy()-41,48
323 fBodyAcc-bandsEnergy()-49,56
324 fBodyAcc-bandsEnergy()-57,64
325 fBodyAcc-bandsEnergy()-1,16
326 fBodyAcc-bandsEnergy()-17,32
327 fBodyAcc-bandsEnergy()-33,48
328 fBodyAcc-bandsEnergy()-49,64
329 fBodyAcc-bandsEnergy()-1,24
330 fBodyAcc-bandsEnergy()-25,48
331 fBodyAcc-bandsEnergy()-1,8
332 fBodyAcc-bandsEnergy()-9,16
333 fBodyAcc-bandsEnergy()-17,24
334 fBodyAcc-bandsEnergy()-25,32
335 fBodyAcc-bandsEnergy()-33,40
336 fBodyAcc-bandsEnergy()-41,48
337 fBodyAcc-bandsEnergy()-49,56
338 fBodyAcc-bandsEnergy()-57,64
339 fBodyAcc-bandsEnergy()-1,16
340 fBodyAcc-bandsEnergy()-17,32
341 fBodyAcc-bandsEnergy()-33,48
342 fBodyAcc-bandsEnergy()-49,64
343 fBodyAcc-bandsEnergy()-1,24
344 fBodyAcc-bandsEnergy()-25,48
345 fBodyAccJerk-mean()-X
346 fBodyAccJerk-mean()-Y
347 fBodyAccJerk-mean()-Z
348 fBodyAccJerk-std()-X
349 fBodyAccJerk-std()-Y
350 fBodyAccJerk-std()-Z
351 fBodyAccJerk-mad()-X
352 fBodyAccJerk-mad()-Y
353 fBodyAccJerk-mad()-Z
354 fBodyAccJerk-max()-X
355 fBodyAccJerk-max()-Y
356 fBodyAccJerk-max()-Z
357 fBodyAccJerk-min()-X
358 fBodyAccJerk-min()-Y
359 fBodyAccJerk-min()-Z
360 fBodyAccJerk-sma()
361 fBodyAccJerk-energy()-X
362 fBodyAccJerk-energy()-Y
363 fBodyAccJerk-energy()-Z
364 fBodyAccJerk-iqr()-X
365 fBodyAccJerk-iqr()-Y
366 fBodyAccJerk-iqr()-Z
367 fBodyAccJerk-entropy()-X
368 fBodyAccJerk-entropy()-Y
369 fBodyAccJerk-entropy()-Z
370 fBodyAccJerk-maxInds-X
371 fBodyAccJerk-maxInds-Y
372 fBodyAccJerk-maxInds-Z
373 fBodyAccJerk-meanFreq()-X
374 fBodyAccJerk-meanFreq()-Y
375 fBodyAccJerk-meanFreq()-Z
376 fBodyAccJerk-skewness()-X
377 fBodyAccJerk-kurtosis()-X
378 fBodyAccJerk-skewness()-Y
379 fBodyAccJerk-kurtosis()-Y
380 fBodyAccJerk-skewness()-Z
381 fBodyAccJerk-kurtosis()-Z
382 fBodyAccJerk-bandsEnergy()-1,8
383 fBodyAccJerk-bandsEnergy()-9,16
384 fBodyAccJerk-bandsEnergy()-17,24
385 fBodyAccJerk-bandsEnergy()-25,32
386 fBodyAccJerk-bandsEnergy()-33,40
387 fBodyAccJerk-bandsEnergy()-41,48
388 fBodyAccJerk-bandsEnergy()-49,56
389 fBodyAccJerk-bandsEnergy()-57,64
390 fBodyAccJerk-bandsEnergy()-1,16
391 fBodyAccJerk-bandsEnergy()-17,32
392 fBodyAccJerk-bandsEnergy()-33,48
393 fBodyAccJerk-bandsEnergy()-49,64
394 fBodyAccJerk-bandsEnergy()-1,24
395 fBodyAccJerk-bandsEnergy()-25,48
396 fBodyAccJerk-bandsEnergy()-1,8
397 fBodyAccJerk-bandsEnergy()-9,16
398 fBodyAccJerk-bandsEnergy()-17,24
399 fBodyAccJerk-bandsEnergy()-25,32
400 fBodyAccJerk-bandsEnergy()-33,40
401 fBodyAccJerk-bandsEnergy()-41,48
402 fBodyAccJerk-bandsEnergy()-49,56
403 fBodyAccJerk-bandsEnergy()-57,64
404 fBodyAccJerk-bandsEnergy()-1,16
405 fBodyAccJerk-bandsEnergy()-17,32
406 fBodyAccJerk-bandsEnergy()-33,48
407 fBodyAccJerk-bandsEnergy()-49,64
408 fBodyAccJerk-bandsEnergy()-1,24
409 fBodyAccJerk-bandsEnergy()-25,48
410 fBodyAccJerk-bandsEnergy()-1,8
411 fBodyAccJerk-bandsEnergy()-9,16
412 fBodyAccJerk-bandsEnergy()-17,24
413 fBodyAccJerk-bandsEnergy()-25,32
414 fBodyAccJerk-bandsEnergy()-33,40
415 fBodyAccJerk-bandsEnergy()-41,48
416 fBodyAccJerk-bandsEnergy()-49,56
417 fBodyAccJerk-bandsEnergy()-57,64
418 fBodyAccJerk-bandsEnergy()-1,16
419 fBodyAccJerk-bandsEnergy()-17,32
420 fBodyAccJerk-bandsEnergy()-33,48
421 fBodyAccJerk-bandsEnergy()-49,64
422 fBodyAccJerk-bandsEnergy()-1,24
423 fBodyAccJerk-bandsEnergy()-25,48
424 fBodyGyro-mean()-X
425 fBodyGyro-mean()-Y
426 fBodyGyro-mean()-Z
427 fBodyGyro-std()-X
428 fBodyGyro-std()-Y
429 fBodyGyro-std()-Z
430 fBodyGyro-mad()-X
431 fBodyGyro-mad()-Y
432 fBodyGyro-mad()-Z
433 fBodyGyro-max()-X
434 fBodyGyro-max()-Y
435 fBodyGyro-max()-Z
436 fBodyGyro-min()-X
437 fBodyGyro-min()-Y
438 fBodyGyro-min()-Z
439 fBodyGyro-sma()
440 fBodyGyro-energy()-X
441 fBodyGyro-energy()-Y
442 fBodyGyro-energy()-Z
443 fBodyGyro-iqr()-X
444 fBodyGyro-iqr()-Y
445 fBodyGyro-iqr()-Z
446 fBodyGyro-entropy()-X
447 fBodyGyro-entropy()-Y
448 fBodyGyro-entropy()-Z
449 fBodyGyro-maxInds-X
450 fBodyGyro-maxInds-Y
451 fBodyGyro-maxInds-Z
452 fBodyGyro-meanFreq()-X
453 fBodyGyro-meanFreq()-Y
454 fBodyGyro-meanFreq()-Z
455 fBodyGyro-skewness()-X
456 fBodyGyro-kurtosis()-X
457 fBodyGyro-skewness()-Y
458 fBodyGyro-kurtosis()-Y
459 fBodyGyro-skewness()-Z
460 fBodyGyro-kurtosis()-Z
461 fBodyGyro-bandsEnergy()-1,8
462 fBodyGyro-bandsEnergy()-9,16
463 fBodyGyro-bandsEnergy()-17,24
464 fBodyGyro-bandsEnergy()-25,32
465 fBodyGyro-bandsEnergy()-33,40
466 fBodyGyro-bandsEnergy()-41,48
467 fBodyGyro-bandsEnergy()-49,56
468 fBodyGyro-bandsEnergy()-57,64
469 fBodyGyro-bandsEnergy()-1,16
470 fBodyGyro-bandsEnergy()-17,32
471 fBodyGyro-bandsEnergy()-33,48
472 fBodyGyro-bandsEnergy()-49,64
473 fBodyGyro-bandsEnergy()-1,24
474 fBodyGyro-bandsEnergy()-25,48
475 fBodyGyro-bandsEnergy()-1,8
476 fBodyGyro-bandsEnergy()-9,16
477 fBodyGyro-bandsEnergy()-17,24
478 fBodyGyro-bandsEnergy()-25,32
479 fBodyGyro-bandsEnergy()-33,40
480 fBodyGyro-bandsEnergy()-41,48
481 fBodyGyro-bandsEnergy()-49,56
482 fBodyGyro-bandsEnergy()-57,64
483 fBodyGyro-bandsEnergy()-1,16
484 fBodyGyro-bandsEnergy()-17,32
485 fBodyGyro-bandsEnergy()-33,48
486 fBodyGyro-bandsEnergy()-49,64
487 fBodyGyro-bandsEnergy()-1,24
488 fBodyGyro-bandsEnergy()-25,48
489 fBodyGyro-bandsEnergy()-1,8
490 fBodyGyro-bandsEnergy()-9,16
491 fBodyGyro-bandsEnergy()-17,24
492 fBodyGyro-bandsEnergy()-25,32
493 fBodyGyro-bandsEnergy()-33,40
494 fBodyGyro-bandsEnergy()-41,48
495 fBodyGyro-bandsEnergy()-49,56
496 fBodyGyro-bandsEnergy()-57,64
497 fBodyGyro-bandsEnergy()-1,16
498 fBodyGyro-bandsEnergy()-17,32
499 fBodyGyro-bandsEnergy()-33,48
500 fBodyGyro-bandsEnergy()-49,64
501 fBodyGyro-bandsEnergy()-1,24
502 fBodyGyro-bandsEnergy()-25,48
503 fBodyAccMag-mean()
504 fBodyAccMag-std()
505 fBodyAccMag-mad()
506 fBodyAccMag-max()
507 fBodyAccMag-min()
508 fBodyAccMag-sma()
509 fBodyAccMag-energy()
510 fBodyAccMag-iqr()
511 fBodyAccMag-entropy()
512 fBodyAccMag-maxInds
513 fBodyAccMag-meanFreq()
514 fBodyAccMag-skewness()
515 fBodyAccMag-kurtosis()
516 fBodyBodyAccJerkMag-mean()
517 fBodyBodyAccJerkMag-std()
518 fBodyBodyAccJerkMag-mad()
519 fBodyBodyAccJerkMag-max()
520 fBodyBodyAccJerkMag-min()
521 fBodyBodyAccJerkMag-sma()
522 fBodyBodyAccJerkMag-energy()
523 fBodyBodyAccJerkMag-iqr()
524 fBodyBodyAccJerkMag-entropy()
525 fBodyBodyAccJerkMag-maxInds
526 fBodyBodyAccJerkMag-meanFreq()
527 fBodyBodyAccJerkMag-skewness()
528 fBodyBodyAccJerkMag-kurtosis()
529 fBodyBodyGyroMag-mean()
530 fBodyBodyGyroMag-std()
531 fBodyBodyGyroMag-mad()
532 fBodyBodyGyroMag-max()
533 fBodyBodyGyroMag-min()
534 fBodyBodyGyroMag-sma()
535 fBodyBodyGyroMag-energy()
536 fBodyBodyGyroMag-iqr()
537 fBodyBodyGyroMag-entropy()
538 fBodyBodyGyroMag-maxInds
539 fBodyBodyGyroMag-meanFreq()
540 fBodyBodyGyroMag-skewness()
541 fBodyBodyGyroMag-kurtosis()
542 fBodyBodyGyroJerkMag-mean()
543 fBodyBodyGyroJerkMag-std()
544 fBodyBodyGyroJerkMag-mad()
545 fBodyBodyGyroJerkMag-max()
546 fBodyBodyGyroJerkMag-min()
547 fBodyBodyGyroJerkMag-sma()
548 fBodyBodyGyroJerkMag-energy()
549 fBodyBodyGyroJerkMag-iqr()
550 fBodyBodyGyroJerkMag-entropy()
551 fBodyBodyGyroJerkMag-maxInds
552 fBodyBodyGyroJerkMag-meanFreq()
553 fBodyBodyGyroJerkMag-skewness()
554 fBodyBodyGyroJerkMag-kurtosis()
555 angle(tBodyAccMean,gravity)
556 angle(tBodyAccJerkMean),gravityMean)
557 angle(tBodyGyroMean,gravityMean)
558 angle(tBodyGyroJerkMean,gravityMean)
559 angle(X,gravityMean)
560 angle(Y,gravityMean)
561 angle(Z,gravityMean)

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING


Preliminaries

Load packages.

packages <- c("data.table", "reshape2")
sapply(packages, require, character.only = TRUE, quietly = TRUE)
## data.table   reshape2 
##       TRUE       TRUE
Set path.

path <- getwd()
path
## [1] "C:/Users/chanb/Documents/Repositories/Coursera/GettingAndCleaningData/Project"
Get the data

Download the file. Put it in the Data folder. This was already done on 2014-04-11; save time and don't evaluate again.

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
f <- "Dataset.zip"
if (!file.exists(path)) {
    dir.create(path)
}
download.file(url, file.path(path, f))
Unzip the file. This was already done on 2014-04-11; save time and don't evaluate again.

executable <- file.path("C:", "Program Files (x86)", "7-Zip", "7z.exe")
parameters <- "x"
cmd <- paste(paste0("\"", executable, "\""), parameters, paste0("\"", file.path(path, 
    f), "\""))
system(cmd)
The archive put the files in a folder named UCI HAR Dataset. Set this folder as the input path. List the files here.

pathIn <- file.path(path, "UCI HAR Dataset")
list.files(pathIn, recursive = TRUE)
##  [1] "activity_labels.txt"                         
##  [2] "features.txt"                                
##  [3] "features_info.txt"                           
##  [4] "README.txt"                                  
##  [5] "test/Inertial Signals/body_acc_x_test.txt"   
##  [6] "test/Inertial Signals/body_acc_y_test.txt"   
##  [7] "test/Inertial Signals/body_acc_z_test.txt"   
##  [8] "test/Inertial Signals/body_gyro_x_test.txt"  
##  [9] "test/Inertial Signals/body_gyro_y_test.txt"  
## [10] "test/Inertial Signals/body_gyro_z_test.txt"  
## [11] "test/Inertial Signals/total_acc_x_test.txt"  
## [12] "test/Inertial Signals/total_acc_y_test.txt"  
## [13] "test/Inertial Signals/total_acc_z_test.txt"  
## [14] "test/subject_test.txt"                       
## [15] "test/X_test.txt"                             
## [16] "test/y_test.txt"                             
## [17] "train/Inertial Signals/body_acc_x_train.txt" 
## [18] "train/Inertial Signals/body_acc_y_train.txt" 
## [19] "train/Inertial Signals/body_acc_z_train.txt" 
## [20] "train/Inertial Signals/body_gyro_x_train.txt"
## [21] "train/Inertial Signals/body_gyro_y_train.txt"
## [22] "train/Inertial Signals/body_gyro_z_train.txt"
## [23] "train/Inertial Signals/total_acc_x_train.txt"
## [24] "train/Inertial Signals/total_acc_y_train.txt"
## [25] "train/Inertial Signals/total_acc_z_train.txt"
## [26] "train/subject_train.txt"                     
## [27] "train/X_train.txt"                           
## [28] "train/y_train.txt"
See the README.txt file in C:/Users/chanb/Documents/Repositories/Coursera/GettingAndCleaningData/Project for detailed information on the dataset.

For the purposes of this project, the files in the Inertial Signals folders are not used.

Read the files

Read the subject files.

dtSubjectTrain <- fread(file.path(pathIn, "train", "subject_train.txt"))
dtSubjectTest <- fread(file.path(pathIn, "test", "subject_test.txt"))
Read the activity files. For some reason, these are called label files in the README.txt documentation.

dtActivityTrain <- fread(file.path(pathIn, "train", "Y_train.txt"))
dtActivityTest <- fread(file.path(pathIn, "test", "Y_test.txt"))
Read the data files. fread seems to be giving me some trouble reading files. Using a helper function, read the file with read.table instead, then convert the resulting data frame to a data table. Return the data table.

fileToDataTable <- function(f) {
    df <- read.table(f)
    dt <- data.table(df)
}
dtTrain <- fileToDataTable(file.path(pathIn, "train", "X_train.txt"))
dtTest <- fileToDataTable(file.path(pathIn, "test", "X_test.txt"))
Merge the training and the test sets

Concatenate the data tables.

dtSubject <- rbind(dtSubjectTrain, dtSubjectTest)
setnames(dtSubject, "V1", "subject")
dtActivity <- rbind(dtActivityTrain, dtActivityTest)
setnames(dtActivity, "V1", "activityNum")
dt <- rbind(dtTrain, dtTest)
Merge columns.

dtSubject <- cbind(dtSubject, dtActivity)
dt <- cbind(dtSubject, dt)
Set key.

setkey(dt, subject, activityNum)
Extract only the mean and standard deviation

Read the features.txt file. This tells which variables in dt are measurements for the mean and standard deviation.

dtFeatures <- fread(file.path(pathIn, "features.txt"))
setnames(dtFeatures, names(dtFeatures), c("featureNum", "featureName"))
Subset only measurements for the mean and standard deviation.

dtFeatures <- dtFeatures[grepl("mean\\(\\)|std\\(\\)", featureName)]
Convert the column numbers to a vector of variable names matching columns in dt.

dtFeatures$featureCode <- dtFeatures[, paste0("V", featureNum)]
head(dtFeatures)
##    featureNum       featureName featureCode
## 1:          1 tBodyAcc-mean()-X          V1
## 2:          2 tBodyAcc-mean()-Y          V2
## 3:          3 tBodyAcc-mean()-Z          V3
## 4:          4  tBodyAcc-std()-X          V4
## 5:          5  tBodyAcc-std()-Y          V5
## 6:          6  tBodyAcc-std()-Z          V6
dtFeatures$featureCode
##  [1] "V1"   "V2"   "V3"   "V4"   "V5"   "V6"   "V41"  "V42"  "V43"  "V44" 
## [11] "V45"  "V46"  "V81"  "V82"  "V83"  "V84"  "V85"  "V86"  "V121" "V122"
## [21] "V123" "V124" "V125" "V126" "V161" "V162" "V163" "V164" "V165" "V166"
## [31] "V201" "V202" "V214" "V215" "V227" "V228" "V240" "V241" "V253" "V254"
## [41] "V266" "V267" "V268" "V269" "V270" "V271" "V345" "V346" "V347" "V348"
## [51] "V349" "V350" "V424" "V425" "V426" "V427" "V428" "V429" "V503" "V504"
## [61] "V516" "V517" "V529" "V530" "V542" "V543"
Subset these variables using variable names.

select <- c(key(dt), dtFeatures$featureCode)
dt <- dt[, select, with = FALSE]
Use descriptive activity names

Read activity_labels.txt file. This will be used to add descriptive names to the activities.

dtActivityNames <- fread(file.path(pathIn, "activity_labels.txt"))
setnames(dtActivityNames, names(dtActivityNames), c("activityNum", "activityName"))
Label with descriptive activity names

Merge activity labels.

dt <- merge(dt, dtActivityNames, by = "activityNum", all.x = TRUE)
Add activityName as a key.

setkey(dt, subject, activityNum, activityName)
Melt the data table to reshape it from a short and wide format to a tall and narrow format.

dt <- data.table(melt(dt, key(dt), variable.name = "featureCode"))
Merge activity name.

dt <- merge(dt, dtFeatures[, list(featureNum, featureCode, featureName)], by = "featureCode", 
    all.x = TRUE)
Create a new variable, activity that is equivalent to activityName as a factor class. Create a new variable, feature that is equivalent to featureName as a factor class.

dt$activity <- factor(dt$activityName)
dt$feature <- factor(dt$featureName)
Seperate features from featureName using the helper function grepthis.

grepthis <- function(regex) {
    grepl(regex, dt$feature)
}
## Features with 2 categories
n <- 2
y <- matrix(seq(1, n), nrow = n)
x <- matrix(c(grepthis("^t"), grepthis("^f")), ncol = nrow(y))
dt$featDomain <- factor(x %*% y, labels = c("Time", "Freq"))
x <- matrix(c(grepthis("Acc"), grepthis("Gyro")), ncol = nrow(y))
dt$featInstrument <- factor(x %*% y, labels = c("Accelerometer", "Gyroscope"))
x <- matrix(c(grepthis("BodyAcc"), grepthis("GravityAcc")), ncol = nrow(y))
dt$featAcceleration <- factor(x %*% y, labels = c(NA, "Body", "Gravity"))
x <- matrix(c(grepthis("mean()"), grepthis("std()")), ncol = nrow(y))
dt$featVariable <- factor(x %*% y, labels = c("Mean", "SD"))
## Features with 1 category
dt$featJerk <- factor(grepthis("Jerk"), labels = c(NA, "Jerk"))
dt$featMagnitude <- factor(grepthis("Mag"), labels = c(NA, "Magnitude"))
## Features with 3 categories
n <- 3
y <- matrix(seq(1, n), nrow = n)
x <- matrix(c(grepthis("-X"), grepthis("-Y"), grepthis("-Z")), ncol = nrow(y))
dt$featAxis <- factor(x %*% y, labels = c(NA, "X", "Y", "Z"))
Check to make sure all possible combinations of feature are accounted for by all possible combinations of the factor class variables.

r1 <- nrow(dt[, .N, by = c("feature")])
r2 <- nrow(dt[, .N, by = c("featDomain", "featAcceleration", "featInstrument", 
    "featJerk", "featMagnitude", "featVariable", "featAxis")])
r1 == r2
## [1] TRUE
Yes, I accounted for all possible combinations. feature is now redundant.

Create a tidy data set

Create a data set with the average of each variable for each activity and each subject.

setkey(dt, subject, activity, featDomain, featAcceleration, featInstrument, 
    featJerk, featMagnitude, featVariable, featAxis)
dtTidy <- dt[, list(count = .N, average = mean(value)), by = key(dt)]
Make codebook.

knit("makeCodebook.Rmd", output = "codebook.md", encoding = "ISO8859-1", quiet = TRUE)
## [1] "codebook.md"
markdownToHTML("codebook.md", "codebook.html")
Tidy dataset file DatasetHumanActivityRecognitionUsingSmartphones.txt (tab-delimited text)
Codebook file codebook.md (Markdown)
