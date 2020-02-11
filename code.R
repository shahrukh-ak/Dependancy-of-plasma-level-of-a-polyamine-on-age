#We will use R code below to create a simple linear regression model
Plasma
[1] 13.44 12.84 11.91 20.09 15.60 10.11 11.38 10.28  8.96  8.59  9.83  9.00
[13]  8.65  7.85  8.88  7.94  6.01  5.14  6.90  6.77  4.86  5.10  5.67  5.75
[25]  6.23
Age
[1] 0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4
model=lm(Plasma~Age)
model

Call:
  lm(formula = Plasma ~ Age)

Coefficients:
  (Intercept)          Age  
13.475       -2.182  

#The fitted model is Plasma=13.475-2.182 *Age


# By plotting we realize that The residual plot has funnel shape indicating that the data don’t follow the underlying assumptions of the model
