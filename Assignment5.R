#데이터 입력
bac_data <- c(17, 31, 34, 15, 21, 25, 22, 28, 19, 22, 24, 26, 23, 18, 26, 44)

#평균, 분산 확인
mean(bac_data)
var(bac_data)

#히스토그램
hist(bac_data, breaks=10, right=F, probability=T, xlab="군집의 수", ylab="확률 밀도")

#푸아송함수의 이론적 확률 질량 함수
n <- 45
x <- 0:n
px <- dpois(x, lambda=mean(bac_data)))
lines(x, px, type="h", col="purple")
