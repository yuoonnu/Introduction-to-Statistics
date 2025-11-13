##원그래프 그리기
#파일 불러오기
death_data <- read.csv("C:/Downloads/사망원인_월별_사망자수.csv", fileEncoding = "EUC-KR")

#원그래프 그리기
pie(death_data$사망자수, labels=death_data$사망원인, main="2023년 12월 주요 사망원인", cex=0.8)

##선그래프 그리기
#파일 불러오기
doctor_data <- read.csv("C:/Downloads/의료서비스_이용률.csv", fileEncoding="EUC-KR")

#선그래프 그리기
plot(doctor_data$시점, doctor_data$전체, col="purple", type="o", ylim=c(50, 70), ylab="이용자수")

##누적막대그래프 그리기
#과학적 표기법으로 표시하지 않도록 설정
options(scipen=999)

#파일 불러오기
money_data <- read.csv("C:/Downloads/제약_의약품_부문_연구분야별_연구개발비.csv", fileEncoding="EUC-KR")

#누적막대그래프 그리기
barplot(plot_data, main="제약·의약품 부문 연구분야별 연구개발비", names.arg=money_data$시점, 
        col=c("purple", "skyblue"), xlab="연도", ylab="연구개발비", legend.text=c("합성의약품", "바이오의약품"))
