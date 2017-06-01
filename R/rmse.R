rmse <- function(obs, pred){
  #calculate root-mean-squared-error
  sqr_error <- (obs - pred)^2
  mn_sqr_error <- mean(sqr_error)
  rmse <- sqrt(mn_sqr_error)
  return(rmse)
}

rmseByYear <- function(df){
  
  for(y in unique(df[['year']])){
    df_y <- df[which(df[['year']] == y), ]
    rmse_y <- rmse(df_y[['obs']], df_y[['pred']])
    rmse_all <- c(rmse_all, rmse_y)
    names(rmse_all)[length(rmse_all)] <- y
  }
  
  return(rmse_all)
}
