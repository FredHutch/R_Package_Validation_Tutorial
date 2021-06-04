# setup 
library(valtools)
setwd(here::here("RPackageValidationTutorial.04E03"))

## double check that the package isn't present in current environment
testthat::expect_error(library(RPackageValidationTutorial.04E03))

########### Task 04_E03 A
# Discussion: What are the different models of validation?
#    Already covered: 
#      - E01: validate outside of installed package aka "third-party validation"
#      - E02: validate from code aka "validate while developing"


########### Task 04_E03 B: validate on install

# Activity

# 1. install a validated package from source package
vt_validate_install()

# 2. examine the validation report from the installed package  
library(RPackageValidationTutorial.04E03)
file.show(list.files(system.file("validation",package = "RPackageValidationTutorial.04E03"),
           pattern = ".pdf", full.names = TRUE))

# Discussion
# - Where does the validation report live once a package is installed?
# - During the installation, when is validation testing run?
# - What

########## Task 04_E03 C: re-validate a package that has been installed
# Activity

# 1. run validation report from installed package
vt_validate_installed_package("RPackageValidationTutorial.04E03",
                              output_directory = here::here("new_report_location"))

# 2. Examine the new version of the validation report
file.show(here::here("new_report_location", "validation.pdf"))


# Discussion 
#    - Why is it helpful to have both validation reports generated?
#    - What differences do we expect to see between validation reports?

# 3. uninstall package to clean up workspace for next scenario
remove.packages("RPackageValidationTutorial.04E03")
## double check that the package isn't present in current environment
testthat::expect_error(library(RPackageValidationTutorial.04E03))

########### Task 04_E03 D: build a validated package to share

# Activity

# 1. build a tarball for distribution
vt_validate_build()
## double check that the package isn't present in current environment
testthat::expect_error(library(RPackageValidationTutorial.04E03))


# 2. Install from tarball
install.packages(here::here("RPackageValidationTutorial.04E03_0.0.0.9000.tar.gz"), repos = NULL)

# 3. Examine the validation report. 
library(RPackageValidationTutorial.04E03)
file.show(list.files(system.file("validation",package = "RPackageValidationTutorial.04E03"),
                     pattern = ".pdf", full.names = TRUE))

# Discussion 
# 1. when was the validation report run?
# 2. when is it appropriate to use this model of validation? what are the risk considerations?



# Overall Discussion: 
#  - When do you see each mode being useful?
#  - What documentation will be helpful to share with stakeholders?


