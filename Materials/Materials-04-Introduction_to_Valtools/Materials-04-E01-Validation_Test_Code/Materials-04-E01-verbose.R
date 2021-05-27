########### Task 04_E01 A
# render the validation report found in folder "simple_validation"
?vt_validate_report

########### Task 04_E01 B
# Add missing case 001 to check valtools version is >= 0.3.0

?vt_use_req
?vt_use_test_case
?vt_add_user_to_config
?vt_use_test_code

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

# Discussion: How do responses to the prompt affect the requirement file?
# Discussion: Who is the editor when multiple files are updated?
# Discussion: How does TESTCASE:REQUIREMENT change with additional test cases or requirements?
# Discussion: Why should we add a different person to the @editor field for test code?

########### Task 04_E01 C
# render the updated validation report
# Discussion: What looks odd here? Is the "Validation" section ordered as expected?

########### Task 04_E01 D
# drop case 002 files behind case 001 in the validation section 
# Discussion: Where is the child file ordering info stored? 
# Discussion: Is the validation_files field required? Hint `?vt_get_child_files()`

?vt_drop_file_from_config
?vt_add_file_to_config
file.show(vt_find_config())

########### Task 04_E01 E
# switch to using dynamic rendering for requirement 001
# Discussion: look at validation.Rmd - how do we initiate dynamic referencing?
# Bonus1: add dynamic referencing elsewhere in validation report
# Bonus2: switch from ## flags to a different flag. Do some work better than others?
?vt_dynamic_referencer
