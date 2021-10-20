
# Test setup


#' @editor Val A Dashun
#' @editDate 2021-05-27
test_that("1.1", {
  hello_result <- hello_world("Johnny")

  expect_equal(
    hello_result,
    "Hello, Johnny"
  )

})



#' @editor Val A Dashun
#' @editDate 2021-05-27
test_that("1.2",{
  hello_result <- hello_world(c("Johnny", "Beth", "Andy","Elisabeth"))

  expect_equal(
    hello_result,
    c("Hello, Johnny", "Hello, Beth", "Hello, Andy","Hello, Elisabeth")
  )
})
