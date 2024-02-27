install.packages("pryr")
require(pryr)
require(ISLR)
require(boot)
install.packages("plyr")
library(data.table)
library(plyr)

Student_assignment_6 <- read.table("C://Users/mos01/Downloads/Assignment 6 Dataset.txt",
                                   header = TRUE,
                                   sep = ",")
Student_assignment_6

studentAverage <- ddply(Student_assignment_6,"Sex", transform, Grade.Average=mean(Grade))

studentAverage

sex <- Student_assignment_6$Sex
sex

i_students <- subset(Student_assignment_6, grepl("i", 
                                                 Student_assignment_6$Name, 
                                                 ignore.case = TRUE))
i_students

write.csv(i_students, "C://Users/mos01/Downloads/i_students.csv")
