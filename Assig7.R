#Testing of Hypothesis

help("t.test")

x <-c(4.2,4.6,3.9,4.1,5.2,3.8,3.9,4.3,4.4,5.6)
t.test(x,mu=4);
t.test(x,mu=4,conf.level = .99)


a <-c(.593,.142,.329,.691,.231,.793,.519,.392,.418)
t.test(a,mu=.3)

p <-c(10,6,16,17,13,12,8,14,15,9)
q <-c(7,13,22,15,12,14,18,8,21,23,10,17)
t.test(p,q)


l <-c(16,20,21,22,23,22,27,25,27,28)
m <-c(19,22,24,24,25,25,26,26,28,32)
t.test(l,m,paired=TRUE)

abs(qt(.05/2,18))

help("chisq.test")
x <-matrix(c(20,792,220,2216),nrow=2,ncol=2)
chisq.test(x,correct = FALSE)      

y<-c(137,162,167,189,197)
chisq.test(y)

z<-c(275,138,75,7,4,1)
a<-c(.517,.3412,.1126,.0248,.0041,.0005)
chisq.test(x=z,p=a,rescale.p = TRUE)

b<-c(315,108,101,32)
p1<-c(.5625,.1875,.1875,.0625)
chisq.test(b,p=p1)

q <-matrix(c(1,6,7,6),nrows=2,ncol=2)
chisq.test(q)



