library(valtools)
setwd(file.path("Materials-06-Validation_Report",
                "r_pharma_validation"))
# Note: This set of exercises pick up where Materials 06 leave off.
#       This answer key rely on a "fresh" version 
#          that have been prepared by instructors and stored in the Materials 06
#          folder.


########### Exercise: generate a report using {valtools} rendering

# Action
vt_validate_report()

#### Discussion questions
# 1. What report was generated, the requirement or validation report?
# 2. What location was the report output to? 
# 3. How does this differ from creating the requirement report via 
#    the knit button?
# 4. BONUS: Why could this be important if the "validation" folder was saved withing
#    an R package, e.g. within the "vignettes" folder?


########### Exercise: generate the validation report using {valtools} rendering

# Action

# 1. in /validation/validation.yml, change line 4-5 to:

# report_rmd_name: Validation_report.Rmd
# report_naming_format: Validation_Report_{date}

# 2. Run
vt_validate_report()

#### Discussion questions
# 1. What report was generated, the requirement or validation report?
# 2. What location was the report output to? 
# 3. How does this differ from the previous iteration of running `vt_validate_report`? 
#    What change controls this difference?




