context("tests for censored data functions")

test_that("sepCensored returns a list of two vectors", {
  myvals <- c(10:15, "<6", "<8")
  cen_list <- sepCensored(myvals)
  expect_is(cen_list, "list")
  expect_length(cen_list, 2)
  expect_named(cen_list, c("numeric_vals", "censored"))
})

test_that("whichCensored indices", {
  myvals <- c(10:15, "<6", "<8")
  cen_i <- whichCensored(myvals)
  expect_is(cen_i, "numeric")
  expect_length(cen_i, 2)
  expect_equal(cen_i, c(7,8))
})
