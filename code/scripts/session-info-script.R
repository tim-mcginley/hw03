#library calls to all packages used (just one)
library(testthat)

#Session Info Sink
sink(file = "session-info.txt")
sessionInfo()
sink()