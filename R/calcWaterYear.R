calc_water_year <- function(date.vec){
  # POSIXlt years start at 100, POSIXlt months start at 0
  date.time.vec <- as.POSIXlt(date.vec)
  cal.year <- date.time.vec$year + 1900
  cal.mon <- date.time.vec$mon + 1
  
  # when the date is NA, it should not try to add 1
  which.past.oct <- cal.mon >= 10
  
  # add one to the year if it is in October or after
  water.year <- cal.year
  water.year[which.past.oct] <- cal.year[which.past.oct] + 1
  
  return(water.year)
}
