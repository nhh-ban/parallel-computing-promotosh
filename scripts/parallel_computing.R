library(tweedie) 
library(ggplot2)
library(foreach)
library(doParallel)

simTweedieTest <-  
  function(N){ 
    t.test( 
      rtweedie(N, mu=10000, phi=100, power=1.9), 
      mu=10000 
    )$p.value 
  } 

MTweedieTests_parallel <- function(N, M, sig) {
  cl <- makeCluster(detectCores() - 1)  # create a cluster
  registerDoParallel(cl)
  
  results <- foreach(m=1:M, .combine=c, .packages='tweedie') %dopar% {
    simTweedieTest(N)
  }
  
  stopCluster(cl)
  sum(results < sig) / M
}

df <-  
  expand.grid( 
    N
