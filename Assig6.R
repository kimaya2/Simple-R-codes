x <-c(6,2,10,4,8)
y <-c(9,11,5,8,7)
e <-data.frame((x))
f <-data.frame((y))
#help(lm)
plot(x,y,main="Regression line for Y on X(lm)")
a <-lm(y~x)
predict(a,e)
#predict()
abline(a)

plot(y,x,main="Regression line for X on Y(lm)")
b <-lm(x~y)
predict(b,f)
abline(b)

YonX <-function(x,y)
{
  A <-matrix(c(length(x),sum(x),sum(x),sum(x^2)),nrow=2,ncol=2)
  B <-matrix(c(sum(y),sum(x*y)),nrow=2,ncol=1)
  c <-round(solve(A,B),2)
  plot(x,y,main="Regression line for Y on X(function)")
  abline(c)
  c
}

YonX(x,y)

XonY <-function(x,y)
{
  C <-matrix(c(length(y),sum(y),sum(y),sum(y^2)),nrow=2,ncol=2)
  D <-matrix(c(sum(x),sum(x*y)),nrow=2,ncol=1)
  d <-round(solve(C,D),2)
  plot(y,x,main="Regression line for X on Y(function)")
  abline(d)
  d
}
XonY(x,y)

data("mtcars")
plot(mtcars$mpg,mtcars$wt,main="Regression line for Y on X(inbuilt dataset)")
l <-lm(wt ~ mpg,mtcars)
abline(l)


#multiple regression
x1 <-c(4,6,7,9,13,15)
x2 <-c(15,12,8,6,4,3)
x3 <-c(30,24,20,14,10,4)
lm(x1 ~x2+x3)

