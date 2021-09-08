ANSWER KEY: R Package Validation Workshop<br>session 04, exercise 02
---

---------

#### Setup

1. *Navigate to the toy package for this exercise*

  - Git option: 
    - clone the repo FredHutch/RPackageValidationTutorial.04E02 
    - in RStudio desktop: open the project RPackageValidationTutorial.04E02
  - RStudio Cloud option: 
    - open the project "RPackageValidationTutorial.04E02"

2. *Load {valtools}* via console

```r
library(valtools)
```

----

#### Task A: Initiate a validation report for requirement adoption.

*Activity*

1. Run:

```r
vt_use_report(template = "requirements")
vt_validate_source()
```

2. Examine the pdf file "/inst/validation/Requirement_Adoption_Report..."

*Discussion*

1. How is this different from the default template?
- Only the requirements are shown
2. How are we controlling which validation child files are included?
- In `vignettes/Requirement_Adoption.Rmd`, chunk "child-files-evaluation", we are 
explicitly identifying what child files to include.
3. Where does the report pdf save to? How is this different than using `vt_validate_report`?
- Default location is in the `/inst/validation` directory of the package source for 
visibility after installation. 
- `vt_validate_source` is well-suited for a scenario where validation happens as part of 
the development process, while still allowing users to validate in their own 
environments.

--- 

#### Task B: Switch to from Requirement Adoption report to a full validation report

*Activity*

1. Edit `/vignettes/validation/validation.yml`:

- Replace `Requirement_Adoption.Rmd` with `validation.Rmd`
- Replace `Requirement_Adoption_Report_{package}_v{version}_{date}` with `Validation_Report_{package}_v{version}_{date}`

2. Run:

```r
vt_use_report()
vt_validate_source()
```

3. Examine: pdf file "/inst/validation/Validation_Report_..."


*Discussion*

1. How is this different from the Requirement Adoption Report ?
- Adds additional sections that are necessary for full validation e.g. test cases, test code
- Child files in chunk "child-files-evaluation" use default list from `vt_get_child_files()`

--- 

#### Task C: Customize validation report

*Activity*

1. Edit `/vignettes/validation.Rmd`, chunk "traceability" by replacing existing code with:

```r
vt_scrape_coverage_matrix(type = "wide") %>%
          vt_kable_coverage_matrix() %>% 
          kable_styling(latex_options = "HOLD_position")
```

2. Run

```r
vt_validate_source()
```

3. Examine the pdf file `inst/validation/Validation_Report...`

*Discussion*

1. How does section 2.3 look different?
- Coverage matrix uses the wide format and added additional $\LaTeX$ code to the default table via `kableExtra::kable_styling()`

---

#### Task D: Redirect validation report output to a different location

*Activity*

1. Edit `/vignettes/validation/validation.yml`:

- Replace `output_dir: inst` with `output_dir: inst/reports`

2. Run:

```r
vt_validate_source()
```

*Discussion*

1. Where does the new pdf output render to? 
- `inst/reports/validation`
2. Are there differences in behavior between RStudio Cloud vs. a local machine?
- RStudio blocks writing at/above project level, but with correct permissions, 
`output_dir: ".."`, etc. will also run.
