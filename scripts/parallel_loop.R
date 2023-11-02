library(foreach)
library(doParallel)
registerDoParallel(cores = detectCores())

results <- foreach(i=1:M, .combine=rbind) %dopar% {
    # lines 29-35 here
}

