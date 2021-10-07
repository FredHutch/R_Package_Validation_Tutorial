# setup ----

# We have been a completed package. 
# Lets work with the validation modes

library(valtools)
setwd(here::here("Materials/Materials-06-Validation_Report/sample.validated.package"))

## double check that the package isn't present in current environment
testthat::expect_error(library(sample.validated.package))

# Task 06 A ----
# Discussion: What are the different models of validation?
#    Already covered: 
#      - E01: validate outside of installed package aka "third-party validation"
#      - E02: validate from code aka "validate while developing"


## Task 06 B ----

# Validate on install

# install a validated package from source package
?vt_validate_install

# examine the validation report from the installed package  
# hint: system.file("validation", package = "sample.validated.package")

# Discussion
# - Where does the validation report live once a package is installed?
# - During the installation, when is validation testing run?
# - What

# Task 06 C ----

# re-validate a package that has been installed

# run validation report from installed package
?vt_validate_installed_package

# Examine the new version of the validation report
# hint: system.file("validation", package = "sample.validated.package")

# Discussion 
#    - Why is it helpful to have both validation reports generated?
#    - What differences do we expect to see between validation reports?


# Uninstall package to clean up workspace for next scenario
remove.packages("sample.validated.package")

## double check that the package isn't present in current environment


# Task 06 D ----

# build a validated package to share as a tarball
?vt_validate_build

## double check that the package isn't present in current environment


#  Install from tarball
## hint - repos should be set to NULL be set to for local installations
install.packages(here::here("sample.validated.package_0.0.0.9000.tar.gz"), repos = NULL)

# Examine the validation report
# hint: system.file("validation", package = "sample.validated.package")

# Discussion 
# 1. when was the validation report run?
# 2. when is it appropriate to use this model of validation? what are the risk considerations?

# Overall Discussion: 
#  - When do you see each mode being useful?
#  - What documentation will be helpful to share with stakeholders?


