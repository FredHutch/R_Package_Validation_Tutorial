library(valtools)

## set working directory back to the main project and then run:
setwd(file.path("Materials","Materials-05-Validation_Report",
                "r_pharma_validation"))

# Note: This set of exercises pick up where Materials 04 leave off.
#       This answer key rely on a "fresh" version 
#          that have been prepared by instructors and stored in the Materials 05 
#          folder.

########### Exercise: Add test case

#### Action: 

# 1. create the file from {valtools} template
vt_use_test_case("test_case1", 
                 username = "useR",
                 title = "Test Case 1",
                 open = TRUE)

# 2. Replace lines 8 - 10 of test_case1.md with the following content (remove the leading `#`)

# + Read in the file `validation/testdata/rpharma_pp.csv` and save as `this_pp`. Verify that the variable "species" in `this_pp` is of class `character`.

# 3. delete lines 4-5 of test_case1.md 

# 4. create the data verification file using the following code

this_pp <- palmerpenguins::penguins[1:10,]
dir.create("validation/testdata")
write.csv(this_pp, file = "validation/testdata/rpharma_pp.csv")

#### Discussion questions
# 1. What file extension was automatically assigned to test_case1?
# 2. What new folder was created?
# 3. What happens if the username is not specified in the vt_use_* call?
# 4. How does the template roxygen header structure differ between requirements
#     and test cases?

########### Exercise: Add test code

#### Action: 

# 1. create the test code file from {valtools} template
vt_use_test_code(name = "test_code1", 
                 username = "useR_2",
                 open = TRUE)



# 3. Replace the value [TESTNUMBER] with "TC_A1"

# 4. Replace the value in line 8 with: 

this_pp <- read.csv(vt_path(file.path("testdata", "rpharma_pp.csv")))
testthat::expect_type(this_pp$species, "character")


#### Discussion questions
# 1. What file extension was automatically assigned to test_code1?
# 2. What new folder was created?
# 3. Why should the user different for authoring test code?

########### Exercise: Create a validation report Rmd from scratch

#### Action: 

# 1. Save a copy of the file "Requirement_report.Rmd" with the new filename
#    "Validation_report.Rmd". You should now have two report rmd files, 
#    "Requirement_report.Rmd" and  "Validation_report.Rmd".

# 2. Open the file "Validation_report.Rmd" and update the document title to 
#    "Validation Report".

# 3. Add a new knitr chunk to include the Test case child file:

# ```{r test-case}
# test_case_path <- file.path("validation", "test_cases")
# vt_file(file.path(test_case_path, "test_case1.md"))
# ```

# 4. Add a new knitr chunk to include the test code child file:

# ```{r test-code}
# test_code_path <- file.path("validation", "test_code")
# vt_file(file.path(test_code_path, "test_code1.R"))
# ```

# 5. Add some markdown to separate sections:

# line 14: `# Case A`
# before chunk "requirements": `## Requirement`
# before chunk "test-case": `## Test case`
# before chunk "test-code": `## Test result`

# 6. Render the requirement report by pressing the "knit" button

#### Discussion questions
# 1. How is `vt_path` similar to `here::here()`?
# 2. Review - How are we identifying test case and test code files? 
#      What {valtools} function are we using?
# 3. How does the structure of the Validation report differ from the 
#      requirement report?


########### Advanced/optional exercise: Render the validation report using {valtools} helper

# Action
# 
# 1. set up the validation config file. In /validation/validation.yml (autogenerated via `vt_create_packet`)
# update lines 4-5 to:
#
# report_rmd_name: Validation_report.Rmd
# report_naming_format: Validation_Report_{date}
#
#
# 2. Compile the report
# vt_validate_report()

#### Discussion questions
# 1. How does this differ from creating the requirement report via 
#    the knit button?

########### Advanced/optional exercise: Update the validation report with a second requirement/test case/test code





