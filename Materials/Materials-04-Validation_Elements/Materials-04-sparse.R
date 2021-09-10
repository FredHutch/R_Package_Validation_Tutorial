########### setup

# We have been a partially completed validation packet. Lets complete it. 

library(valtools)
setwd(here::here("Materials/Materials-04-Validation_Elements/simple_validation"))


########### Task 04 A

# Add another requirement that valtools version is >= 0.3.0
# Add another Test Case to test that valtools version is >= 0.3.0
# Add another Test Case to prove that valtools version is >= 0.3.0

# Requirement details -- 
# Activity: respond to prompt for username.
#        Y to add user to config
#        "name" and "title" are free response
#        "role" should be "Validation Lead"
# Activity: Replace  `REQUIREMENT: ASSESSMENT` with `1.1:1, High Risk, High Impact`. 
# Activity: copy the following content - 
#   ## 002. `valtools` version installed {-}
# 
#   
#     + `2.1 {valtools}` is the version approved for usage.

# Test Case details -- 
# Activity: replace `TESTCASE: REQUIREMENT` with `2.1: 2.1`. 
# Discussion: How would this change with additional test cases or requirements?
# Activity: copy the following content - 
#   *Test Cases*
#   
#     + 2.1 Test that the version of `{valtools}` is `>= 0.3.0`

# Test Code details --
# Activity: Update `TESTNUMBER` to `2.1` and copy the following into the body of the test - 
#   expect_true(
#     packageVersion("valtools") >= "0.3.0"
#   )

# Discussion: How do responses to the prompt affect the requirement file?
# Discussion: Who is the editor when multiple files are updated?
# Discussion: How does TESTCASE:REQUIREMENT change with additional test cases or requirements?
# Discussion: Why should we add a different person to the @editor field for test code?


########### Task 04 B
# render the validation report found in folder "simple_validation"


########### Task 04 C
# Move Test Case 002 files ahead of Test case 001 in the validation section 
# Discussion: Where is the child file ordering info stored? 
# Discussion: Is the validation_files field required? Hint `?vt_get_child_files()`

