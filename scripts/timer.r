library(tictoc)

# Time the original solution
tic("main")
source("main.R")
toc()

# Time the parallel computing solution
tic("parallel_computing")
source("scripts/parallel_computing.R")
toc()

# Time the parallel function solution
tic("parallel_function")
source("scripts/parallel_function.R")
toc()

