########### Task 02_E02_A
# Add a help page for the function `hello_world` using roxygen tags
# include the custom sections "Last updated by" and "Last updated date"
# with values on subsequent line.

# paste the following. Make sure to start each line with: #' 

#' @title Hello World
#' @param name Name as characters
#' @return the phrase "Hello NAME!"
#' @export

########### Task 02_E02_B
# Housekeeping: Make sure that this package passes devtools::check()
# This keeps us on track for the remainder of the tutorial

# add  license info
?usethis::use_mit_license

# add hello_world to NAMESPACE
?devtools::document

# perform the check
?devtools::check

########### Task 02_E02_C
# Add a vignette that runs `hello_world`. 

# create the vignette template
?usethis::use_vignette

# in the file ~/demopkg/vignettes/My-hello-world.Rmd add the following chunk and 
# save the updated file

```{r}
hello_world("someone")
```


# Make sure the package still passes
# devtools::check()

