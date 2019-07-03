x <-c(48,35,17,23,47)
y <-c(45,20,40,25,45)

covar <-function(x,y)
{
  a <-x-mean(x)
  b <-y-mean(y)
  cova <-(sum(a*b))/(length(a)-1)
  cova
}
covar(x,y)
cov(x,y)
corr <-function(x,y)
{
  q <-covar(x,y)
  correlation <-q/(sd(x)*sd(y))
  correlation
}
corr(x,y)
cor(x,y)


