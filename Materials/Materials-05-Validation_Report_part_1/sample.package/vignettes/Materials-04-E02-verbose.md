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

1. Generate a Requirement Adoption report

```r
?vt_use_report
?vt_validate_source
```

2. Examine the pdf file "/inst/validation/Requirement_Adoption_Report...".

*Discussion*

1. How is this different from the default template?
2. How are we controlling which validation child files are included?
3. Where does the report pdf save to? How is this different than using `vt_validate_report`?

--- 

#### Task B: Switch to from Requirement Adoption report to a full validation report

*Activity*

1. Edit `/vignettes/validation/validation.yml`:

- Update value in field "report_rmd_name" to `validation.Rmd`.
- Update value in field "report_naming_format" to `Validation_Report_{package}_v{version}_{date}`.

2. Generate a validation report

```r
?vt_use_report
?vt_validate_source
```

3. Examine: pdf file "/inst/validation/Validation_Report_..."

*Discussion*

1. How is this different from the Requirement Adoption Report ?
- Adds additional sections that are necessary for full validation e.g. test cases, test code
- Child files in chunk "child-files-evaluation" use default list from `vt_get_child_files()`

--- 


--- 

#### Task C: Customize validation report

*Activity*

1. Edit `/vignettes/validation.Rmd`, chunk "traceability" by switching to `type = "wide"` and
adding $\LaTeX$ specification to hold position via `kableExtra::kable_styling(latex_options = "HOLD")`

2. Validate package source again.

3. Examine the pdf file `inst/validation/Validation_Report...`

*Discussion*

1. How does section 2.3 look different?

---

#### Task D: Redirect validation report output to a different location

*Activity*

1. Edit `/vignettes/validation/validation.yml`:
- Specify output directory as the new folder `reports` within `inst`

2. Validate package source again.

*Discussion*

1. Where does the new pdf output render to? Is this as expected?
2. Are there differences in behavior between RStudio Cloud vs. a local machine?