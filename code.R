# Dependancy-of-plasma-level-of-a-polyamine-on-age

In a medical study, researchers collected measurements from 25 young children. Of interest is the dependency of the plasma level of a polyamine on age.



<table style="width:50%">
  <tr>
    <th>Child</th>
    <th>Plasma</th> 
    <th>Age</th>
  </tr>
  <tr>
    <td>1</td>
    <td>13.44</td>
    <td>0</td>
  </tr>
  <tr>
    <td>2</td>
    <td>12.84</td>
    <td>0</td>
  </tr>
  <tr>
    <td>3</td>
    <td>12.84</td>
    <td>0</td>
  </tr>
  <tr>
    <td>4</td>
    <td>12.84</td>
    <td>0</td>
  </tr>
  <tr>
    <td>5</td>
    <td>12.84</td>
    <td>0</td>
  </tr>
  <tr>
    <td>6</td>
    <td>12.84</td>
    <td>0</td>
  </tr>
  <tr>
    <td>7</td>
    <td>11.38</td>
    <td>0</td>
  </tr>
  <tr>
   <td>8</td>
    <td>10.28</td>
    <td>1</td>
  </tr>
  <tr>
   <td>9</td>
    <td>8.96</td>
    <td>1</td>
  </tr>
  <tr>
    <td>10</td>
    <td>8.59</td>
    <td>1</td>
  </tr>
  <tr>
    <td>11</td>
    <td>9.83</td>
    <td>2</td>
  </tr>
  <tr>
    <td>12</td>
    <td>9.00</td>
    <td>2</td>
  </tr>
  <tr>
    <td>13</td>
    <td>8.65</td>
    <td>2</td>
  </tr>
  <tr>
    <td>14</td>
    <td>7.85</td>
    <td>2</td>
  </tr>
  <tr>
    <td>15</td>
    <td>8.88</td>
    <td>2</td>
  </tr>
  <tr>
    <td>16</td>
    <td>7.94</td>
    <td>3</td>
  </tr>
  <tr>
    <td>17</td>
    <td>6.01</td>
    <td>3</td>
  </tr>
  <tr>
    <td>18</td>
    <td>5.14</td>
    <td>2</td>
  </tr>
  <tr>
    <td>19</td>
    <td>6.90</td>
    <td>3</td>
  </tr>
  <tr>
    <td>20</td>
    <td>6.77</td>
    <td>3</td>
  </tr>
  <tr>
    <td>21</td>
    <td>4.86</td>
    <td>4</td>
  </tr>
  <tr>
    <td>22</td>
    <td>5.10</td>
    <td>4</td>
  </tr>
  <tr>
    <td>23</td>
    <td>5.67</td>
    <td>4</td>
  </tr>
  <tr>
    <td>24</td>
    <td>5.75</td>
    <td>4</td>
  </tr>
  <tr>
    <td>25</td>
    <td>6.23</td>
    <td>4</td>
  </tr>
 </table>
  
## Obejctive :
- Fit a simple linear regression model and analyze the residual plots.
-	What is the expected change in the plasma level if the age of the children is increased by 1 year?
-	Use Box cox transformation to choose appropriate value of λ.
-	Fit a simple linear regression model after transformation.
-	Compare and contrast models in before and after applying box cox transformation






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
