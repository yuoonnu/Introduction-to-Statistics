#파일 불러오기
dia_data <- read.csv("C:/Downloads/diabetes.csv", fileEncoding="EUC-KR")

#평균, 분산 확인
mean(dia_data$BloodPressure)
var(dia_data$BloodPressure)

#히스토그램
hist(dia_data$$BloodPressure, breaks=10, right=F, probability=T, main="", xlab="혈압", ylab="", col="white", border="black")

#정규 분포 함수
mu <- mean(dia_data$BloodPressure)
sigma <- sd(dia_data$BloodPressure)
ll <- mu-3*sigma
ul <- mu+3*sigma
x <- seq(ll, ul, by=0.01)
nd <- dnorm(x, mean=mu, sd=sigma)
lines(x, nd, lty=2, lwd=2, col="purple")
