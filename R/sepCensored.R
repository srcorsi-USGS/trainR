sepCensored <- function(vals){
  cen_i <- whichCensored(vals)
  just_values <- as.numeric(gsub("<|>", "", vals))
  
  just_symbols <- rep(NA, length(just_values))
  just_symbols[cen_i] <- gsub("[0-9]", "", vals[cen_i])
  
  return(list(numeric_vals = just_values, 
              censored = just_symbols))
}

whichCensored <- function(vals){
  grep("<|>", vals)
}
