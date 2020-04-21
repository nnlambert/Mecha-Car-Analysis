MC_mpg <- read.csv(file='MechaCar_mpg.csv', header = TRUE) #read in new dataset for mechaCar
View(MC_mpg)
Regression <- lm(mpg ~vehicle.length+vehicle.weight+spoiler.angle+ground.clearance+AWD)
Regression <- lm(mpg ~vehicle.length+vehicle.weight+spoiler.angle+ground.clearance+AWD, data=MC_mpg)
summary(Regression)
SC <- read.csv(file = 'Suspension_Coil.csv', header = TRUE)
View(SC)
Summary(SC)
Error in (function (classes, fdef, mtable)  : 
unable to find an inherited method for function ‘Summary’ for signature ‘"data.frame"’
summary(SC)
VehicleID   Manufacturing_Lot      PSI      
V40607 :  2   Lot1:50           Min.   :1452  
V10053 :  1   Lot2:50           1st Qu.:1498  
V1037  :  1   Lot3:50           Median :1500  
V10773 :  1                     Mean   :1499  
V11514 :  1                     3rd Qu.:1501  
V11605 :  1                     Max.   :1542  
(Other):143                                   
Summary_Mean <- mean(SC$PSI)
Summary_Median <- median(SC$PSI)
Summary_Variance <- var(SC$PSI)
Summary_SDV <- sd(SC$PSI)
summary(SC$PSI)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1452    1498    1500    1499    1501    1542 
Scol <- c(Summary_Mean, Summary_Median, Summary_Variance, Summary_SDV)
Summary_SC <- data.table(x=(SM, SMD, SV, SDV), y=(Scol))
Error: unexpected ',' in "Summary_SC <- data.table(x=(SM,"
Summary_SC <- data.table(x=('SM', 'SMD', 'SV', 'SDV'), y=(Scol))
Error: unexpected ',' in "Summary_SC <- data.table(x=('SM',"

sample_SC = sample(SC,50)
Error in sample.int(length(x), size, replace, prob) : 
cannot take a sample larger than the population when 'replace = FALSE'
View(SC)
sample_SC = sample_n(SC,50)
t.test(sample_SC$PSI),mu=mean(SC$PSI))
Error: unexpected ',' in "t.test(sample_SC$PSI),"
t.test((sample_SC$PSI),mu=mean(SC$PSI))

One Sample t-test

data:  (sample_SC$PSI)
t = 1.2337, df = 49, p-value = 0.2232
alternative hypothesis: true mean is not equal to 1498.78
95 percent confidence interval:
  1498.013 1501.987
sample estimates:
  mean of x 
1500 
