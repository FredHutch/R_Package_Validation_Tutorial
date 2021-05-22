
# Test setup


#' @editor A Different Author
#' @editDate 2021-05-20
test_that("T2.1", {
  test_data <- data.frame(number = 1:3,
                          color = c("red", "black", "blue"))
  
  testthat::expect_type(test_data$color, "character")

})



