
addAnnualPeakFlow <- function(flowTS){
  flowTS_grpd <- group_by(flowTS, year)
  flowTS_pk <- mutate(flowTS_grpd, flow_pk = max(flow))
  return(flowTS_pk)
}

addAnnualMedianFlow <- function(flowTS){
  flowTS_grpd <- group_by(flowTS, year)
  flowTS_med <- mutate(flowTS_grpd, flow_med = median(flow))
  return(flowTS_med)
}

addAnnualLowFlow <- function(flowTS){
  flowTS_grpd <- group_by(flowTS, year)
  flowTS_low <- mutate(flowTS_grpd, flow_low = min(flow))
  return(flowTS_low)
}
