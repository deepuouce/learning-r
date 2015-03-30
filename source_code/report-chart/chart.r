library(ggplot2)

total_daily <- read.csv(file="~/_aiman/workspace/tes/weekly-total.csv", head=TRUE, sep=",")

ggplot(data=total_daily, aes(x=published, y=count)) +
  geom_bar(stat="identity") +
  coord_flip()

ggplot(data=total_daily, aes(x=published, y=count, group=sum(count))) +
  geom_path() +
  geom_point() +
  coord_flip()