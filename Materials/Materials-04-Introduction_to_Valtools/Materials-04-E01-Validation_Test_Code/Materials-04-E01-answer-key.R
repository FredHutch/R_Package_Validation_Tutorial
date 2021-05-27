library(valtools)

########### Task 04_E01 A
# render the validation report found in folder "simple_validation"

setwd(here::here("Materials/Materials-04-Introduction_to_Valtools/Materials-04-E01-Validation_Test_Code/simple_validation"))
vt_validate_report()

########### Task 04_E01 B
# Add missing case 001 to check valtools version is >= 0.3.0

vt_use_req("Requirement_001.md")
# Activity: respond to prompt for username.
#        Y to add user to config
#        "name" and "title" are free response
#        "role" should be "Validation Lead"
# Discussion: How do responses to the prompt affect the requirement file?
# Activity: Replace  `REQUIREMENT: ASSESSMENT` with `1.1:1, High Risk, High Impact`. 
# Activity: copy the following content - 
#   ## 001. `valtools` version installed {-}
# 
#   *Requirement*
#   
#     + `{valtools}` is the version approved for usage.

vt_use_test_case("Test_Case_001.md")
# Discussion: Who is the editor? Has this changed from previous update?
# Activity: replace `TESTCASE: REQUIREMENT` with `1.1: 1.1`. 
# Discussion: How would this change with additional test cases or requirements?
# Activity: copy the following content - 
#   *Test Cases*
#   
#     + Test that the version of `{valtools}` is `>= 0.3.0`

vt_add_user_to_config(
  username = "user_b",
  name = "Val A Dashun",
  title = "Programmer II",
  role = "tester"
)

vt_use_test_code("Test_Code_001", username = "Val A Dashun")
# Discussion: Why did we add a different person to the @editor field for test code?
# Activity: Update `TESTNUMBER` to `T1.1` and copy the following into the body of the test - 
#   expect_true(
#     packageVersion("valtools") >= "0.3.0"
#   )

########### Task 04_E01 C
# render the updated validation report
vt_validate_report()
# Discussion: What looks odd here? Is the "Validation" section ordered as expected?

########### Task 04_E01 D
# drop case 002 files below case 001 in the validation section 
vt_drop_file_from_config(c("Requirement_002.md", "Test_Case_002.md", "Test_Code_002.R"))
vt_add_file_to_config(c("Requirement_002.md", "Test_Case_002.md", "Test_Code_002.R"), after = tidyr::contains("001"))
vt_validate_report()
# Discussion: Where is the child file ordering info stored? Hint `file.show(vt_find_config())`
# Discussion: Is the validation_files field required? Hint `?vt_get_child_files()`


########### Task 04_E01 E
# switch to using dynamic rendering for requirement 001
# Activity: in file Test_Case_001.md 
#  - replace `1.1: 1.1` with `1.1: ##req:1.1`
#  - replace `that the version` with `Requirement ##req:1 is fulfilled by checking that the version`
vt_validate_report()
# Discussion: look at validation.Rmd - how do we initiate dynamic referencing?
# Bonus1: add dynamic referencing elsewhere in validation report
# Bonus2: switch from ## flags to a different flag. Do some work better than others?

