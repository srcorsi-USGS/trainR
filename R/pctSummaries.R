pctCensored <- function(vals, digits=2){
  cen_i <- whichCensored(vals)
  cen_pct <- calcPercent(ninterest = length(cen_i),
                         ntotal = length(vals),
                         digits = digits)
  return(cen_pct)
}

pctMissing <- function(vals, digits=2){
  na_i <- which(is.na(vals))
  na_pct <- calcPercent(ninterest = length(na_i),
                        ntotal = length(vals),
                        digits = digits)
  return(na_pct)
}

calcPercent <- function(ninterest, ntotal, digits=2){
  pct <- ninterest/ntotal*100
  pct_rnd <- round(pct)
  return(pct_rnd)
}
