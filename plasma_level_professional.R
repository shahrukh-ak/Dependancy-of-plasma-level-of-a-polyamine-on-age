# Plasma Level and Age Analysis
#
# Professionalized version of the original project file.
# The code and stated results are retained from the source as closely as possible.
# Output text from the original file has been converted to comments where needed for readability.
#

# Dependancy-of-plasma-level-of-a-polyamine-on-age

# In a medical study, researchers collected measurements from 25 young children. Of interest is the dependency of the plasma level of a polyamine on age.



# 
# 
# Child
# Plasma
# Age
# 
# 
# 1
# 13.44
# 0
# 
# 
# 2
# 12.84
# 0
# 
# 
# 3
# 12.84
# 0
# 
# 
# 4
# 12.84
# 0
# 
# 
# 5
# 12.84
# 0
# 
# 
# 6
# 12.84
# 0
# 
# 
# 7
# 11.38
# 0
# 
# 
# 8
# 10.28
# 1
# 
# 
# 9
# 8.96
# 1
# 
# 
# 10
# 8.59
# 1
# 
# 
# 11
# 9.83
# 2
# 
# 
# 12
# 9.00
# 2
# 
# 
# 13
# 8.65
# 2
# 
# 
# 14
# 7.85
# 2
# 
# 
# 15
# 8.88
# 2
# 
# 
# 16
# 7.94
# 3
# 
# 
# 17
# 6.01
# 3
# 
# 
# 18
# 5.14
# 2
# 
# 
# 19
# 6.90
# 3
# 
# 
# 20
# 6.77
# 3
# 
# 
# 21
# 4.86
# 4
# 
# 
# 22
# 5.10
# 4
# 
# 
# 23
# 5.67
# 4
# 
# 
# 24
# 5.75
# 4
# 
# 
# 25
# 6.23
# 4
# 
# 

## Obejctive :
# - Fit a simple linear regression model and analyze the residual plots.
# -	What is the expected change in the plasma level if the age of the children is increased by 1 year?
# -	Use Box cox transformation to choose appropriate value of λ.
# -	Fit a simple linear regression model after transformation.
# -	Compare and contrast models in before and after applying box cox transformation






#We will use R code below to create a simple linear regression model
# Plasma
# [1] 13.44 12.84 11.91 20.09 15.60 10.11 11.38 10.28  8.96  8.59  9.83  9.00
# [13]  8.65  7.85  8.88  7.94  6.01  5.14  6.90  6.77  4.86  5.10  5.67  5.75
# [25]  6.23
# Age
# [1] 0 0 0 0 0 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4
model=lm(Plasma~Age)
model

# Call:
  lm(formula = Plasma ~ Age)

# Coefficients:
# (Intercept)          Age
# 13.475       -2.182

#The fitted model is Plasma=13.475-2.182 *Age


# By plotting we realize that The residual plot has funnel shape indicating that the data don’t follow the underlying assumptions of the model
