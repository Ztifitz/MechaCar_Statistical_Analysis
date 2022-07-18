# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![image](https://user-images.githubusercontent.com/101848882/179444500-e4d197ae-97d1-4294-8a68-99a9739e35bc.png)

The intercept of -104 is the only non random variable for this particular model.

The slope can not be determined as having a miltiple lineal regression model is not 2-dimensional.

Considering a p.value of 5%, we have evidence to reject the null hypothesis as a 5.35e^-11 p-value is well below the significance of 5%.

## Summary Statistics on Suspension Coils

![image](https://user-images.githubusercontent.com/101848882/179444570-deba98f0-6d2e-4c70-84c0-e8b6cb51155c.png)

![image](https://user-images.githubusercontent.com/101848882/179444594-4ab19090-ff99-4dfc-823d-c7846bb147db.png)

Lot 3 should be removed as their variance of pounds per squared inches is greater than 100. Lots 1 and 2 are within the expected ranges.

## T-tests on Suspension Coils

![image](https://user-images.githubusercontent.com/101848882/179444624-e58df086-7ae4-4da5-9562-ef81ea694c5f.png)

Lot 3 is the lot that is statiscally different from the mena by PSI, again reforging the need to revaluate the usage of that specific lot.

## Study Design: MechaCar vs Competition

First of all we would need a bigger data sample of the current cars available in the market. Cost and max speed are probably the more appealing variables a consumers looks for in a premium car. A test could be on wheteher the cost of cars compared to the competitor is significant in their premium classificacion. This could be done with a 2-variable t-test distribution using different cars costs vs our MechaCar cost. 
