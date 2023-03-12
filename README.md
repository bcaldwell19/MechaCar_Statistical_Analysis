# MechaCar_Statistical_Analysis

## Background

> A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

>In this challenge, you’ll help Jeremy and the data analytics team do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population.
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

**Language** : R 

**IDE**: Rstudio

_____________________________________________________________________________________________________________________________________________________


### Part 1: 

#### Linear Regression to Predict MPG

![Linear Regression to Predict MPG](/images/reg.png)

Figure 1 : Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

The two main variables would be vehicle length and ground clearance that have a significant impact on mpg in the data set.
It should be noted that intercept is also considered to be statistically significant. This means there are some other factors that were not included in this analysis that may affect mpg values.

- Is the slope of the linear model considered to be zero? Why or why not?

Based on the p-value being smaller than 0.05; there is sufficient evidence to reject our null hypothesis of the slope being zero.
In the other words, the slope of the linear model will have a value other than zero. 

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
    
Based on the multiple  R squared value, we can assume that approximately seventy percent of mpg predictions will be correct with this linear model.
This would be a decent model that would predict about thirty percent of values incorrectly.

I don't believe you could consider this an effective model since you are still missing key variables from your model.  If the intercept wasn't statistically significant; you could likely assume that all the key variables are included in the model.
I would imagine that would be a more desirable model


### Part 2: 


#### Summary Statistics on Suspension Coils

![Summary Statistics on Suspension Coils](/images/total_summary.png)

Figure 2: Summary Statistics on Suspension Coils (Total)

![Summary Statistics on Suspension Coils](/images/lot_summary.png)

Figure 3: Summary Statistics on Suspension Coils (Lots)


- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 
    - Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

    Based on the total data, the data would be within the design specification.
    Based on the lot data, the only lot that would not currently be in design specification would be lot 3. 

    Lot 3 has lot more variance in it's data than any other lot.  When you are performing summary statistics on a total, the low variances of first and second lot will lower the overall variance even with third lot included.
    If this was real world problem, the large variance on suspension coils would alert operations to a change in manufacturing capability.  This could be attributed to a root cause, and then the problem could be resolved.
    This is what the question I would be asking about the third lot.  At a high level view something had changed from the second to third lot.   



### Part 3: 

### T-Test on Suspension Coils

![T-Test on Suspension Coils](/images/t_testAll.png)

Figure 4: T-Test on Suspension Coils (All)

![T-Test on Suspension Coils](/images/t_testLots.png)

Figure 5: T-Test on Suspension Coils (Lots)


A t test using all the data revealed that the data is statistically similar; because, our p-value is greater than 0.05 significance level.

A t test using lot one data revealed that the data is statistically similar; because, our p-value is greater than 0.05 significance level.

A t test using lot two data revealed that the data is statistically similar; because, our p-value is greater than 0.05 significance level.

A t test using lot three data revealed that the data is not statistically similar; because, our p-value is less than 0.05 significance level.

You can see the same results pattern seen in the summary statistics in the t test results.


### Part 4: 

#### Study Design: MechaCar vs Competition

Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

How the MechaCar performs against the competition?

A good statistical study would be to quantify the value of MechaCar versus the competition.

- In your description, address the following questions:
    - What metric or metrics are you going to test?

    Some of the metrics would be cost,mpg efficiency,safety rating, and maintenance cost.  These are some of the major variables that a customer would consider for the value of a car.

    - What is the null hypothesis or alternative hypothesis?

    If we assume our hypothesis of MechaCar provides significant more value than the competition.
    The null hypothesis would be that MechaCar doesn't provide more value than the competition.

    - What statistical test would you use to test the hypothesis? And why?

    I would want to evaluate by using multiple linear regression.  The assumption being made that there is some degree of a linear relationship between value and the metrics listed above.

    - What data is needed to run the statistical test?

    The metrics would be needed for MechaCar and its competition.