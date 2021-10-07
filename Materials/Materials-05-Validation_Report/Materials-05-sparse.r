# setup ----

# We have been a completed package with validation elements. 
# Lets work with the validation report itself

library(valtools)
setwd(here::here("Materials/Materials-05-Validation_Report/simple.package"))


# Task 05 A ----

# Initiate a validation report for requirement adoption and run.
# Examine the pdf file "/inst/validation/Requirement_Adoption_Report..."

## Discussion: How is this different from the default template?
## Discussion: How are we controlling which validation child files are included?
## Discussion: Where does the report pdf save to? How is this different than using `vt_validate_report`?

# Task 05 B: ----

# Switch to from Requirement Adoption report to a full validation report 

# Edit `/vignettes/validation/validation.yml`:
#  - Replace `Requirement_Adoption.Rmd` with `validation.Rmd`
#  - Replace `Requirement_Adoption_Report_{package}_v{version}_{date}` with `Validation_Report_{package}_v{version}_{date}`
# Generate Report & Examine pdf file

## Discussion: How is this different from the Requirement Adoption Report ?

# Task 05 C ----

# Customize validation report by editing `/vignettes/validation.Rmd`, 
# updating report Rmd to include wide coverage matrix and hold position.
# Generate Report & Examine pdf file

# Discussion: How does section 2.3 look different?

# Task 05 D ---- 

# Redirect validation report output to a different location:
# Generate Report & Examine pdf file & output location

## Discussion: Where does the new pdf output render to? 
## Discussion:Are there differences in behavior between RStudio Cloud vs. a local machine?