bonds<-read.delim("bonds.txt",row.names=1)


summary(bonds)
plot(bonds$CouponRate ,bonds$BidPrice)

bondsmod=lm(bonds$BidPrice~bonds$CouponRate)

plot(bondsmod$fitted.values ,rstandard(bondsmod),
     xlab = "copnrate",
     ylab="bid")
abline(h=2,lty=2)
abline(h=-2,lty=2)
identify(bondsmod$fitted.values,rstandard(bondsmod))
