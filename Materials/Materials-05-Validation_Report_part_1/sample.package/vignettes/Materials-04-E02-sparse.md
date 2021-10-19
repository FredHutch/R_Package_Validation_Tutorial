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

1. Generate a Requirement Adoption report from template

- Which of the `vt_use*` functions will generate a report? What templates are available?
- Which of the `vt_validate_*` functions to use?

2. 2. Examine the pdf file "/inst/validation/Requirement_Adoption_Report...".

*Discussion*

1. How is this different from the default template?
2. How are we controlling which validation child files are included?
3. Where does the report pdf save to? How is this different than using `vt_validate_report`?

--- 

#### Task B: Switch to from Requirement Adoption report to a full validation report

*Activity*

1. Edit validation.yml to update Rmd and report name
2. Generate a validation report.
3. Examine validation PDF.

*Discussion*

1. How is this different from the Requirement Adoption Report ?
- Adds additional sections that are necessary for full validation e.g. test cases, test code
- Child files in chunk "child-files-evaluation" use default list from `vt_get_child_files()`

--- 


--- 

#### Task C: Customize validation report

*Activity*

1. Update report Rmd to include wide coverage matrix and hold position.
2. Generate validation report.
3. Examine validation report PDF.

*Discussion*

1. How does section 2.3 look different?

---

#### Task D: Redirect validation report output to a different location

*Activity*

1. Edit validation yaml to a different output directory.
2. Validate package source again.

*Discussion*

1. Where does the new pdf output render to? Is that as expected?
2. Are there differences in behavior between RStudio Cloud vs. a local machine?