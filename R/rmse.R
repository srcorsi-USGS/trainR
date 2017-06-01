rmse <- function(obs, pred){
  #calculate root-mean-squared-error
  error <- (obs - pred)^2
  rmse <- sqrt(mean(error))
  return(rmse)
}
