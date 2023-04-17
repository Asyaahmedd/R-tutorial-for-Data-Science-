#The simple linear regression is used to predict a quantitative outcome y on the basis of one single predictor variable x.
#The goal is to build a mathematical model (or formula) that defines y as a function of the x variable.
xdata<- c(4,4.5,5,5.5,6,6.5,7)
y<- c(33,42,45,51,53,61,62)
#Descriptive ### Summary function
summary( xdata )
summary(y)
sd( xdata )
sd(y)
length(xdata)
length(y)
#Correlation and Scatter plot
cor( xdata, y)
plot(xdata,y, col="darkblue", lwd=3, xlab="Income", ylab="Outcome")
# another way to plot the previous scatter plot
plot(xdata,y, col=rgb(0.2,0.3,0.7),lwd=4)
# plot a fitted line
abline(lm(y~xdata))
#Construct X Capital of the model(weighgts)
X<- matrix( c( rep(1,7) , xdata),7, 2)
#Regression Coefficents Computations

solve( t(X)%*%X )
H<- crossprod(X)   # XTX
H

V<- t(X) %*% y       #Xty
V
Beta<- solve(H) %*% V  #least square equation
Beta
# -2.678571+ 9.5*X
###R is smart (we can estimate parameter directly with lm function)

leastSmodel <- lm( y ~  xdata) 
leastSmodel
summary(leastSmodel)
plot(leastSmodel)

plot(xdata,y, col=rgb(0.2,0.3,0.7),lwd=4)
abline( lm(y~xdata) )







