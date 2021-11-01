
# Test setup


#' @editor useR_2
#' @editDate 2021-10-29
test_that("TC_A1", {
  this_pp <- read.csv(vt_path(file.path("testdata", "rpharma_pp.csv")))
  testthat::expect_type(this_pp$species, "character")
})



