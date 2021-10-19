# setup ----

# We have been a completed package with validation elements. 
# Lets work with the validation report itself

library(valtools)
setwd(here::here("Materials/Materials-05-Validation_Report/simple.package"))


# Task 05 A ----

# Initiate a validation report for requirement adoption.

vt_use_report(template = "requirements")
vt_validate_source()


# Examine the pdf file "/inst/validation/Requirement_Adoption_Report..."
#
## Discussion: How is this different from the default template?
#  - Only the requirements are shown
#
## Discussion: How are we controlling which validation child files are included?
#  - In `vignettes/Requirement_Adoption.Rmd`, chunk "child-files-evaluation", we are 
#    explicitly identifying what child files to include.
#
## Discussion: Where does the report pdf save to? How is this different than using `vt_validate_report`?
#  - Default location is in the `/inst/validation` directory of the package source for 
#    visibility after installation. 
#  - `vt_validate_source` is well-suited for a scenario where validation happens as part of 
#    the development process, while still allowing users to validate in their own 
#    environments.

# Task 05 B: ----

# Switch to from Requirement Adoption report to a full validation report 

# Edit `/vignettes/validation/validation.yml`:
#  - Replace `Requirement_Adoption.Rmd` with `validation.Rmd`
#  - Replace `Requirement_Adoption_Report_{package}_v{version}_{date}` with `Validation_Report_{package}_v{version}_{date}`
# Generate Report

vt_use_report() # or vt_validate_source()

# Examine: pdf file "/inst/validation/Validation_Report_..."

## Discussion: How is this different from the Requirement Adoption Report ?
#  - Adds additional sections that are necessary for full validation e.g. test cases, test code
#  - Child files in chunk "child-files-evaluation" use default list from `vt_get_child_files()`


# Task 05 C ----

# Customize validation report by editing `/vignettes/validation.Rmd`, 
# add chunk "traceability" by replacing existing code with:

```{r}
vt_scrape_coverage_matrix(type = "wide") %>%
          vt_kable_coverage_matrix() %>% 
          kable_styling(latex_options = "HOLD_position")
```

# Generate Report

vt_validate_source()

# Examine the pdf file `inst/validation/Validation_Report...`

## Discussion: How does section 2.3 look different?
#  - Coverage matrix uses the wide format and added additional $\LaTeX$ code to 
#    the default table via `kableExtra::kable_styling()`


# Task 05 D ---- 

# Redirect validation report output to a different location:
# Edit `/vignettes/validation/validation.yml`:
#   - Replace `output_dir: inst` with `output_dir: inst/reports`
# Generate Report

vt_validate_source()

## Discussion: Where does the new pdf output render to? 
#  - `inst/reports/validation`
## Discussion:Are there differences in behavior between RStudio Cloud vs. a local machine?
#  - RStudio blocks writing at/above project level, but with correct permissions, 
#    `output_dir: ".."`, etc. will also run.


