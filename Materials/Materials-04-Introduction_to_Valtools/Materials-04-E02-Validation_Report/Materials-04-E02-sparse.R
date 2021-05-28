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

# Activity: in "validation.yml", 
#  update values for "report_rmd_name" and "report_naming_format" 

########### Task 04_E02 C
# customize validation report

# Switch to wide coverage matrix
# add formatting to existing tables
?vt_scrape_coverage_matrix

########### Task 04_E02 D
# redirect validation report output to a different location 

# Activity: in validation.yml update values for  `output_dir`
