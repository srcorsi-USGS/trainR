#' Timeseries plotting function
#' 
#' Plot a timeseries by giving the x and y data.
#' 
#' @param xdat data for the x axis
#' @param ydat data for the y axis
#' @param y.axis.label name to put on the y axis, defaults to "Y Value"
#' 
#' @return plot of timeseries
#' 
plot_ts <- function(xdat, ydat, y.axis.label="Y Value"){
  plot(xdat, ydat, xlab = "Date", ylab = y.axis.label, pch=20, 
       col="red", las=1, tck=0.02)
  axis(side=3, las=1, tck=0.02)
  axis(side=4, las=1, tck=0.02)
}
