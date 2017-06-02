
add_annual_peak_flow <- function(flow.ts){
  flow.ts.grpd <- group_by(flow.ts, year)
  flow.ts.pk <- mutate(flow.ts.grpd, flow.pk = max(flow))
  return(flow.ts.pk)
}

add_annual_median_flow <- function(flow.ts){
  flow.ts.grpd <- group_by(flow.ts, year)
  flow.ts.med <- mutate(flow.ts.grpd, flow.med = median(flow))
  return(flow.ts.med)
}

add_annual_low_flow <- function(flow.ts){
  flow.ts.grpd <- group_by(flow.ts, year)
  flow.ts.low <- mutate(flow.ts.grpd, flow.low = min(flow))
  return(flow.ts_low)
}
