#load data in a variable called results
results <- read.table("results.dat",header=TRUE)
#put all of the transactions into a variable
transactions <- results$C0
numConcurrentUsers <- results$N
#get the busy time of the machines by taking the idle time away from 100
busy <- 100 - results$idle

busypercent <- busy / 100
X0 <- transactions / .1
serviceDemand <- busypercent / (transactions / 0.1)

#Utilisation vs Number of concurrent users
png(filename="UivsN.png")
plot(numConcurrentUsers,busy,xlab="Number of concurrent users",ylab="CPU Utilisation",main="Utilisation vs Number of concurrent users")
dev.off()


#Service Demand vs Number of concurrent users
png(filename="DivsN.png")
plot(numConcurrentUsers,serviceDemand,xlab="Number of concurrent users",ylab="Service demand",main="Service demand vs Number of concurrent users")
dev.off()

#Throughtput of overall system vs Number of concurrent users
png(filename="X0vsN.png")
plot(numConcurrentUsers,X0,xlab="Number of concurrent users",ylab="Throughput",main="Throughtput of overall system vs Number of concurrent users")
dev.off()

