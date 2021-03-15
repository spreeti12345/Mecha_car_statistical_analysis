# Statistical analysis using R 

## Overview 
AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team. I am helping Jeremy and his team to offer insights on the MechaCar's production to help the manufacturing team.
### Resources Used
MechaCar_MPG data - csv file
Suspension coil data -csv file
R and R studio -dpylr library

## Linear Regression to Predict MPG
After loading the miles per gallon dataset,we preformed a multiple linear regression to see if it could predict the miles per gallon (mpg) dependent variable by using the vehicle length, vehicle weight, spoiler angle, ground clearance, and all wheel drive (AWD) independent variables. By doing this, we wanted to answer three questions:

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

There were two variables that provided a non-random amount of variance: The vehicle length and the ground_clearance. Both of these have extremely small p-value meaning that they had a high level of significance. It also should be noted that the intercept as had a high level of significance meaning that there are still other factors contributing to the variance of the miles per gallon of the MechaCar.

Is the slope of the linear model considered to be zero? Why or why not?
The slope of the linear model is not considered to be zero. This is because the linear regression shows that some of the independent variables had a significant effect on the dependent variable. If none of the independent variables had an effect on the dependent variable then the linear regression would result in a near zero slope.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The main indicator of whether the linear model predicts the mpg of the MechaCar is the r-squared value. In this case, it is at 0.7149 mean that out of 100 instances, this model would approximately predict the mpg of the MechaCar correctly 71 times. This means that the model would be considered effective.


Here are the summary results from the linear regression.
Miles Per Gallon Linear Regression

![image](https://user-images.githubusercontent.com/74282781/111115939-83b52080-8522-11eb-81ff-f22b9e7cbc3e.png)


## Summary Statistics on Suspension Coils

In this section, I loaded in the suspension coils dataset. It was comprised of 150 different vehicles ID, 3 different lot numbers, and corresponding PSI levels for each vehicle. From there I created two summary tables to look at the mean, median, variance, and standard deviation of data. The first table looked at of the data as a whole, while the second table looked specific at each of the three different lots that the MechaCars were divided into. Here are the two tables.

### Total Summary Table

![image](https://user-images.githubusercontent.com/74282781/111116274-04741c80-8523-11eb-9582-bcbaf216959d.png)


 ### Lot Summary Table 
![image](https://user-images.githubusercontent.com/74282781/111116432-41401380-8523-11eb-8ef6-a5767cfae720.png)


By completing this analysis we can answer this question :

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Looking at the total summary, the current variance is approximately 76.23 PSI, which means that the design specification IS MET. When looking at the lots individuals, the first two lots  DOES meet the design specification at a varaince of approximately 1.14 PSI and 10.13 PSI respectfully, but the third lot DOES NOT. The lot 3 variance of ~ 220.01 PSI exceeds the design specification by almost double. Therefore, the manufacturing team should work with the cars in lots 1 and 2 compared to those in lot 3.

## T-Tests on Suspension Coils

We wanted to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.We used R's t.test()function to find four different p-values. 

Question:
Do any of the four groups have a statistically different mean from the population meam of 1,500 PSI?

Answer:

By using a significance level of 95%, meaning that 95% of the time this tests results would be true, we tested to see if any of the four groups had a statistical difference from the mean of 1,500 PSI. After running the tests, all four p-values where much greater than .05 which means we would fail to reject that THERE IS a statistical difference between the four groups and the population mean.

Here is a breakdown of each of the four tests:

All Three Lots Combined Test
![image](https://user-images.githubusercontent.com/74282781/111117528-dee81280-8524-11eb-9e74-0cc33408cd91.png)


Lot 1 Test

![image](https://user-images.githubusercontent.com/74282781/111117588-f4f5d300-8524-11eb-8e1a-aee91a306a85.png)


Lot 2 Test

![image](https://user-images.githubusercontent.com/74282781/111117619-ff17d180-8524-11eb-8dbb-d09fd88818ab.png)


Lot 3 Test

![image](https://user-images.githubusercontent.com/74282781/111117643-08a13980-8525-11eb-8009-c8220b61d500.png)


## Study Design: MechaCar vs Competition

Using the Resources we can also compare how the MechaCar performs with the competition. At this time, we wont use R studio but can walk through the process of completeing other analyses. Our four main questions are 

What metric or metrics are you going to test?

I think the consumer could potentially be interested in year of the car and city and highway fuel efficiency

What is the null hypothesis or alternative hypothesis?
Null Hyptothesis - All cars made before 2008 have same city and highway fuel efficiency
Alternate Hypothesis - All cars made before 2008 DO NOT have the same city and highway fuel efficiency

What statistical test would you use to test the hypothesis? And why?
We can test the hypotheses using two-sample t-Test. To visualise the analysis, we can use ggplot2 library and boxplot. It would show us the outliers, cars in the 25th and 75th percentiles and median.
We can also use linear regression- where the dependent variable is the fuel efficiency and the independent variable is the class.

What data is needed to run the statistical test?
Data from the files provided to us in this module (CSV) can be used. JSON files from opensources like 
https://www.epa.gov/compliance-and-fuel-economy-data/data-cars-used-testing-fuel-economy

We would need a dichotomous data type. Data must contain - highway , city mileage, and year the car was made.





The metrics I want to test are city and highway fuel efficiencies.
Null Hypothesis is that all of the cars in the same class have the same fuel efficienies. THe Alternative Hypothesis is that they are not all the same.
I would use an ANOVA test to complete this analysis for both types of fuel efficiencies. Also I would use the ggplot2 library to show the potential spread between different cars using a boxplot.
I would need fuel efficiency data from 50 individual cars to create a sample size of data for each car in the class type. For example, if there was 10 cars in the class type, I would have a top of 500 data points collected for each fuel efficiency type.
