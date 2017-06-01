rmse <- function(obs, pred){
  #calculate root-mean-squared-error
  sqr.error <- (obs - pred)^2
  rmse <- sqrt(mean(sqr.error))
  return(rmse)
}
