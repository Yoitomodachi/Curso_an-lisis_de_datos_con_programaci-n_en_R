library(Tmisc)
data("quartet")
View(quartet)
quartet %>% 
  group_by(set) %>% 
  summary(mean(x), sd(x), mean(y), sd(y), cor(x,y))
