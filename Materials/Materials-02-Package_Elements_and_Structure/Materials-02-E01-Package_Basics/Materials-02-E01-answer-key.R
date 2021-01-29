########### Task 02_E01_A
# create an empty package via {usethis}
# this should create the new package demopckg as an RStudio project 
# and open the new project. Task 02_C and 03_X depend on working from the package project.

usethis::create_package("../demopckg")

########### Task 02_E01_B
# create a function hello_world that takes a name (argument character string) 
# prints "Hello [NAME]!". Save this function to file `hello_world.R` and 
# add to the package created in task 1 


# Paste the following code into the new file and save it as ~/demopkg/R/hello_world.R
hello_world <- function(name){
  paste("Hello", name, "!")
}

## RStudio navigation:
#  Create an empty R script via: File > New File > Rscript
#  Shortcut: CTRL + Shift + N


########### Task 02_E01_C
# add a unit test to check that running `hello_world()` with no argument will 
# throw an error.


# create the unit test file by running following code
# from the demopckg RStudio project
usethis::use_test("hello_world")

## replace contents with:

test_that("error if no arg", {
  expect_error(hello_world())
})



########### Task 02_E01_D
# check that the unit test passes

devtools::check()

# RStudio navigation:
# Build > More > Test Package
# shortcut: CTRL + Shift + T

