# setup 
library(valtools)
setwd(here::here("RPackageValidationTutorial.04E03"))

########### Task 04_E03 A
# Discussion: What are the different models of validation?
#    Already covered: 
#      - E01: validate outside of installed package aka "third-party validation"
#      - E02: validate from code aka "validate while developing"


########### Task 04_E03 B: validate on install

# Activity

# 1. install a validated package from source package
?vt_validate_install

# 2. examine the validation report from the installed package  
# hint: system.file("validation", package = "RPackageValidationTutorial.04E03")

# Discussion
# - Where does the validation report live once a package is installed?
# - During the installation, when is validation testing run?
# - What

########## Task 04_E03 C: re-validate a package that has been installed
# Activity

# 1. run validation report from installed package and save to new folder 
?vt_validate_installed_package

# 2. Examine the new version of the validation report


# Discussion 
#    - Why is it helpful to have both validation reports generated?
#    - What differences do we expect to see between validation reports?

# 3. uninstall package to clean up workspace for next scenario
remove.packages("RPackageValidationTutorial.04E03")

########### Task 04_E03 D: build a validated package to share

# Activity

# 1. build a tarball for distribution
?vt_validate_build

# 2. Install from tarball
?install.packages
## hint - what should repos be set to for local installations

# 3. Examine the validation report. 

# Discussion 
# 1. when was the validation report run?
# 2. when is it appropriate to use this model of validation? what are the risk considerations?



# Overall Discussion: 
#  - When do you see each mode being useful?
#  - What documentation will be helpful to share with stakeholders?


