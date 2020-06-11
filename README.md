# Mecha Car Analysis

### Background
A few weeks after starting his new role, Jeremy is approached by upper management to help with a special project. 
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles. 
There are a number of issues surrounding the vehicle’s specifications and manufacturing process that are blocking 
the manufacturing team from proceeding. AutosRUs’ upper management has called on Jeremy and the data analytics team 
to help analyze the production data in order to justify some last-minute design decisions. With Jeremy’s help, 
the launch of the MechaCar should be one of the most successful product launches in the company’s history.

From the upper management team, Jeremy received two datasets:

The results of an mpg testing dataset of 50 potential prototype MechaCars.
The MechaCar prototypes were produced using multiple design specifications to identify 
ideal vehicle performance. Multiple metrics such as vehicle length, vehicle weight, 
spoiler angle, drivetrain, and ground clearance were collected for each vehicle.
MechaCar suspension coil test results from multiple production lots. In this dataset, 
the weight capacity of multiple suspension coils were tested to determine if the manufacturing process is consistent across lots.

### Objectives
- Design and interpret a multiple linear regression analysis to identify variables of interest.
- Calculate summary statistics for quantitative variables.
- Perform a t-test in R and provide interpretation of results.
- Design your own statistical study to compare vehicle performance of two vehicles.

### Results
After running a Multiway-Anova with mpg as a function of the other variables in the table, we are able to confirm that the variables providing a non-random amount of variance to the mpg values were vehicle.length and ground.clearance. These varaiables tested above a 99% confidence interval and p-values of 2.60e-12 and 5.21e-08 respectively.
Our R-squared value of ~0.7 indicates that the slope of our model cannot be 0 because there are independent variables that are influencing the slope somewhat more than moderately.
We can say that this linear model does not predict mpg of MechaCar prototypes effectively because there are at least 3 variables that do not have any significant correlation with mpg involved in the model. Appropriate reductions in the model could aid future analysis. 

### Suspension Coil
Based on the current manufacturing data it is clear that the current variance of the suspension coils(62.3) does not exceed 100 pounds per inch and is thus meets design specification. 

A 1-sample t-test was conducted in order to determine if the suspension coil's pound-per-inch results were statistically different from the mean pipulation results of 1,500 pounds per inch. We are able to conclude that there was no statistical difference. P-value: 0.2 | 95% confidence interval

### Potential Study
In creating a study to consider performance in the MechaCar as compared to other cars in the market, it is important to keep the metrics simple in order to generate more accurate and usable results. The two metrics I would consider most important in an initial study would be cost and engine reliability. These factors are based on some of the most praised aspects of brands such as Toyota and Lexus, who uses toyota motors, by consumers and mechanics. 

The primary question we would consider in this study would be whether or not enginge reliability directly influences cost and in what what way (positively or negatively). Our null hypothesis would state that cost and reliability are independent of one another (r=0), and our alternative hypothesis would be that they are not independent of one another. A linear regression would most likely be conducted to detect the relationship between these variables. We would need to determine which of these is dependent and independent.
