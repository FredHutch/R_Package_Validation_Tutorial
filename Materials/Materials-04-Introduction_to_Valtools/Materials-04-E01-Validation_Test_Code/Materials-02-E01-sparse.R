########### Task 04_E01 A
# render the validation report found in folder "simple_validation"

########### Task 04_E01 B
# Add missing case 001 to check valtools version is >= 0.3.0

# Requirement details -- 
# Activity: update the requirement and assessment with `1.1:1, High Risk, High Impact`. 
# Activity: copy the following content - 
#   ## 001. `valtools` version installed {-}
# 
#   *Requirement*
#   
#     + `{valtools}` is the version approved for usage.

# Test Case details -- 
# Activity: update the coverage to `1.1: 1.1`. 
# Activity: copy the following content - 
#   *Test Cases*
#   
#     + Test that the version of `{valtools}` is `>= 0.3.0`

# Test Code details --
# Activity: Update `TESTNUMBER` to `T1.1` and copy the following into the body of the test - 
#   expect_true(
#     packageVersion("valtools") >= "0.3.0"
#   )

########### Task 04_E01 C
# render the updated validation report
# Discussion: What looks odd here? Is the "Validation" section ordered as expected?

########### Task 04_E01 D
# drop case 002 files behind case 001 in the validation section 

########### Task 04_E01 E
# switch to using dynamic rendering for requirement 001
# Discussion: look at validation.Rmd - how do we initiate dynamic referencing?
