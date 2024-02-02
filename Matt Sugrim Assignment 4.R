Freq <- c(0.6, 0.3, 0.4, 0.4, 0.2, 0.6, 0.3, 0.4, 0.9, 0.2)
BP <- c(103, 87, 32, 42, 59, 109, 78, 205, 135, 175)
first <- c(1, 1, 1, 1, 0, 0, 0, 0, NA, 1)
second <- c(0, 0, 1, 1, 0, 0, 1, 1, 1, 1)
final_decision <- c(0, 1, 0, 1, 0, 1, 0, 1, 1, 1)

data <- data.frame(Freq, BP, first, second, final_decision)
data

boxplot(BP ~ Freq, 
        data = data,
        ylab = "Freq",
        xlab = "BP")

hist(data$Freq,
     ylab = "BP",
     xlab = "Freq")

hist(data$BP,
     ylab = "BP",
     xlab = "Freq")
