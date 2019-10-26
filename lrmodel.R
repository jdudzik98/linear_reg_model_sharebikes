x1 <- as.numeric(as.character(london_merged$t2)) #temperature feels

beta0 = rep(1,times=length(x1)) #creating column of 1's 

X=cbind(beta0,x1)

Y = as.numeric(as.character(london_merged$V2[2:length(london_merged$V2)]))

b=solve(t(X)%*%X)%*%t(X)%*%cbind(Y)

print(b)

