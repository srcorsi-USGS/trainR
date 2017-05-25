calcWaterYear <- function(dateVec){
  # POSIXlt years start at 100, POSIXlt months start at 0
  dateTimeVec <- as.POSIXlt(dateVec)
  calYear <- dateTimeVec$year + 1900
  calMon <- dateTimeVec$mon + 1
  
  # when the date is NA, it should not try to add 1
  whichPastOct <- calMon >= 10
  
  # add one to the year if it is in October or after
  waterYear <- calYear
  waterYear[whichPastOct] <- calYear[whichPastOct] + 1
  
  return(waterYear)
}
