library(valtools)

########### instantiate a validation framework for R base

###### Action
# instantiate
# supress opening new rstudio session
vt_create_packet("r_pharma_validation", open = FALSE)

##### Discussion questions
# 1. what files/folders were created? what looks familiar? why?
# 2. when would it be helpful to use open = TRUE?
# 3. where can the folder "r_pharma_validation" live? why or why not?

########### create requirement files in  md

###### Action
setwd("r_pharma_validation")
vt_use_req("req1.md",
           username = "useR",
           title = "programmer",
           open = TRUE)

# Paste the following text in line 7 of req1.md
# + Character variables from csv import are loaded as factors.

##### Discussion questions
# 1. Where does vt_use_req create the requirement file? 
#    hint: why did we need to call setwd() first?
# 2. What are the components of the roxygen header? are these 
#    standard roxygen2 tags? are any unique to valtools?

########### update roxygen header

###### Action
# delete lines 4-5 from req1.md
# update the editor (line 2) to "A user"

########### advanced: add a requirements file in rmd

###### Action
vt_use_req("req2.Rmd",
           username = "useR",
           title = "programmer",
           open = TRUE)

########### create a requirement report from scratch

###### Action
# 1. Create a blank Rmd file in folder "r_pharma_validation" named 
# "Requirement_report.Rmd"
# 2. add the following chunk

```{r, requirements}

```


