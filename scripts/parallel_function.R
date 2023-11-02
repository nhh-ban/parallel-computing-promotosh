MTweedieTests <- function(...) {
    # ... existing function code ...
    results <- foreach(i=1:M, .combine=rbind) %dopar% {
        # simulation code
    }
    return(results)
}

