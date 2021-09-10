########### setup

# We have been a partially completed validation packet. Lets complete it. 

library(valtools)
setwd(here::here("Materials/Materials-04-Validation_Elements/simple_validation"))


########### Task 04 A

# Add another requirement that valtools version is >= 0.3.0
# Add another Test Case to test that valtools version is >= 0.3.0
# Add another Test Case to prove that valtools version is >= 0.3.0

vt_use_req("Requirement_002.md")
# Activity: respond to prompt for username.
#        Y to add user to config
#        "name" and "title" are free response
#        "role" should be "Validation Lead"
# Discussion: How do responses to the prompt affect the requirement file?
# Activity: Replace  `REQUIREMENT: ASSESSMENT` with `1.1:1, High Risk, High Impact`. 
# Activity: copy the following content - 
#   ## 002. `valtools` version installed {-}
# 
#   
#     + `2.1 {valtools}` is the version approved for usage.

vt_use_test_case("Test_Case_002.md")
# Discussion: Who is the editor? Has this changed from previous update?
# Activity: replace `TESTCASE: REQUIREMENT` with `2.1: 2.1`. 
# Discussion: How would this change with additional test cases or requirements?
# Activity: copy the following content - 
#   *Test Cases*
#   
#     + 2.1 Test that the version of `{valtools}` is `>= 0.3.0`

vt_add_user_to_config(
  username = "user_b",
  name = "Val A Dashun",
  title = "Programmer II",
  role = "tester"
)

vt_use_test_code("Test_Code_002", username = "Val A Dashun")
# Discussion: Why did we add a different person to the @editor field for test code?
# Activity: Update `TESTNUMBER` to `2.1` and copy the following into the body of the test - 
#   expect_true(
#     packageVersion("valtools") >= "0.3.0"
#   )

########### Task 04 B
# render the validation report
vt_validate_report()

########### Task 04 C
# Move Test case 002 files aheads of case 001 in the validation section 
vt_drop_file_from_config(c("Requirement_002.md", "Test_Case_002.md", "Test_Code_002.R"))
vt_add_file_to_config(c("Requirement_002.md", "Test_Case_002.md", "Test_Code_002.R"), after = tidyr::contains("001"))
vt_validate_report()
# Discussion: Where is the child file ordering info stored? Hint `file.show(vt_find_config())`
# Discussion: Is the validation_files field required? Hint `?vt_get_child_files()`
