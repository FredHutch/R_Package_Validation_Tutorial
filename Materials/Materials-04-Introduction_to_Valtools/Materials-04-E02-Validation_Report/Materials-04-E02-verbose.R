# setup: clone the repo RPackageValidationTutorial.04E02


########### Task 04_E02 A
# initiate a validation report for requirement adoption
?vt_use_report
?vt_validate_source

# Discussion: How is this different from the default template?
# Discussion: How are we controlling which validation child files are included?
# Discussion: Where does the pdf save to? how is this different than using `vt_validate_report`

########### Task 04_E02 B
# switch to full validation report

# Activity: in "validation.yml"
#    - Replace `Requirement_Adoption.Rmd` with `validation.Rmd`
#    - Replace `Requirement_Adoption_Report_{package}_v{version}_{date}` with `Validation_Report_{package}_v{version}_{date}`


########### Task 04_E02 C
# customize validation report

# Switch to wide coverage matrix
# add formatting to existing tables
# Activity: in validation.Rmd,  chunk "traceability"
#     - Replace `vt_scrape_coverage_matrix()` with:
#       ```
#        vt_scrape_coverage_matrix(type = "wide") %>%
#        kable_styling(latex_options = "HOLD_position")
#        ```


########### Task 04_E02 D
# redirect validation report output to a different location 

# Activity: in validation.yml replace `output_dir: inst` with `output_dir: ".."`
