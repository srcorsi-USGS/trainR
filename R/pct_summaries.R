pct_censored <- function(vals, digits=2){
  cen.i <- which_censored(vals)
  cen.pct <- calc_pct(ninterest = length(cen.i),
                      ntotal = length(vals),
                      digits = digits)
  return(cen.pct)
}

pct_missing <- function(vals, digits=2){
  na.i <- which(is.na(vals))
  na.pct <- calc_pct(ninterest = length(na.i),
                     ntotal = length(vals),
                     digits = digits)
  return(na.pct)
}

calc_pct <- function(ninterest, ntotal, digits=2){
  pct <- ninterest/ntotal*100
  pct.rnd <- round(pct)
  return(pct.rnd)
}
