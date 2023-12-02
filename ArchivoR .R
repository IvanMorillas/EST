Dades <- read.csv2("Dades.csv", header = T)
Dades

summary(Dades)

numSummary(Dades[,"Dades", drop=FALSE], statistics=c("mean", "sd", "IQR", "quantiles"), 
  quantiles=c(0,.25,.5,.75,1))

normalityTest(~Dades, test="lillie.test", data=Dades)
with(Dades, (t.test(Dades, alternative='two.sided', mu=0.0, conf.level=.99)))

dades1 <- c(0.15,0.17,0.13,0.18,0.15,0.16,0.17,0.15,0.17,0.15,0.19,0.18,0.17,0.15,0.13)
dades2 <- rnorm(15, 0.16, 0.01772811)
dades3 <- rnorm(15, 0.18, 0.01772811)

t.test(dades1, dades2, alternative="two.sided", conf.level = 0.99, paired = TRUE)

t.test(dades1, dades2, conf.level = 0.95)

t.test(dades1, dades3, conf.level = 0.95)

t.test(dades3, dades2, conf.level = 0.95)


