library(tictoc)

# Time the original solution
tic("Original Solution")
source("scripts/solution_original.R")
toc()

# Time the parallel loop solution
tic("Parallel Loop Solution")
source("scripts/solution_parallel_loop.R")
toc()

# Time the parallel function solution
tic("Parallel Function Solution")
source("scripts/solution_parallel_function.R")
toc()

