library(ggplot2)

args <- commandArgs(trailingOnly = TRUE)
print(args)

#read.csv("regrex1.csv")

regrex1 = read.csv(args[1], header = TRUE)
ggplot(regrex1, aes(x, y)) + geom_point()
ggsave("scatter.png")

#ggplot(regrex1, aes(x, y)) + geom_smooth(method ="lm", se = F)
#ggsave("line.png")

ggplot(regrex1, aes(x, y)) + geom_point() + geom_smooth(method ="lm", se = F)
ggsave("fit.png")


#fit1 <- lm(y ~ x, data = regrex1)
#summary(fit1)

#plot(y ~ x, data = regrex1)
#abline(fit1)
## program...

#df = read.table(args[1], header=TRUE)
#num_vars = which(sapply(df, class)=="numeric")
#df_out = df[ ,num_vars]
#write.table(df_out, file=args[2], row.names=FALSE)