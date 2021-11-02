# R Package Validation Tutorial

## Overview

Welcome to the R Package Validation Tutorial!

Based on the [R Package Validation Framework White Paper that is in
pubic review under PHUSE](https://lnkd.in/dufTZ2Ra), this tutorial aims to teach the
basics of the R Package Validation Framework and its application using {valtools}.
The training will show how to use the {valtools} package to create a validation
packet as well as how to apply this to R package development.

{valtools} can be found at: https://github.com/phuse-org/valtools


|                                     |
|-------------------------------------|
| :spiral\_calendar: R/Pharma Conf, Friday, November 5th, 2021  |
| :man_technologist: [@thebioengineer](https://github.com/thebioengineer)      |
| :woman_technologist: [@mariev](https://github.com/mariev)              |

## Schedule & Materials

Slides and exercises are grouped by section. Exercises are split into
`Sparse` or `Verbose`, indicating the amount of supplementary
information provided. An answer key is also provided in the folder.

| Time      | Section                              | Slides                                             | Exercises                       |
|:----------|:-------------------------------------|----------------------------------------------------|:--------------------------------|
| 0 - 5    | **Welcome and Orientation**          | [Welcome Slides](Slides/Slides-01-Welcome_and_Orientation)      |                                 |
| 5 - 25   | **Concepts of R Package Validation** | [Introduction to the R Package Validation Framework](Slides/Slides-02-Concepts_of_R_Package_Validation) |                                 |
| 25 - 35   | **Introduction to {valtools}**       | [Intro to {valtools}](Slides/Slides-03-Intro_to_Valtools)                                |                                 |
| 35 - 75   | **Elements of Validation Part 1**                 | [Elements of Validation Part 1](Slides/Slides-04-Elements_of_Validation)                  | 04: [Writing Requirements](Materials/Materials-04-Requirements_Report) |
| 75 - 85 | *Break/Q&A*                          |                                                    |                                 |
| 85 - 125| **Elements of Validation Part 2**            | [Elements of Validation Part 2](Slides/Slides-05-The_Validation_Report)                    | 05: [Validation Reports](Materials/Materials-05-Validation_Report)    |
| 125 - 155 | **Managing Validation Projects**        | [Managing Validation Projects](Slides/Slides-06-Managing_Validation_Projects)                          | 06: [Managing Validation Projects](Materials/Materials-06-Validation_Project_Management) |
| 155 - 165 | **Internal R Packages**        | [R Packages](Slides/Slides-07-R_Packages)                          |  |
| 165 - 180 | **Q&A / Panel Discussion**        |                          |   |

## Setup

1.  RStudio cloud instructions
2.  \[Optional\] setup for running code locally:

``` r
# you will need to install the following packages from CRAN
install.packages(c("devtools", "roxygen2", "testthat", "usethis", "knitr"))

# you will need to install the following packages from github
remotes::install_github("phuse-org/valtools", build_vignettes = TRUE)
```

## Why take the the R Package Validation Tutorial?

This tutorial addresses a major knowledge gap in the R ecosystem:
getting R accepted into highly regulated industries. This is an
opportunity for those that work in these industries to be empowered to
expand the use of R. We are taking an approach where some basic R
knowledge is expected, such as writing scripts and functions, but
teaching people to take the next steps.

Previous work presented to the community has shown a framework for
developers to distribute validation-ready R packages, which has been met
with enthusiasm among R users in pharma. In this tutorial participants
will experience the process of creating R packages with validation
resources in place and explore how addition of these materials perform
in a variety of real-world scenarios, including validation-on-install
and validation-post-install. Participants will have the opportunity to
practice how validation affects subsequent package releases.

## References

-   [RStudio 2021
    slides](https://thebioengineer.github.io/validation_rstudio_2021)
-   [RStudio 2020
    presentation](https://rstudio.com/resources/rstudioconf-2020/approaches-to-assay-processing-package-validation/)
    
## Acknowledgments

This workshop was developed by employees of Fred Hutch Cancer Research Center - SCHARP - VISC. 
We also received support from R/Pharma in the form of RStudio Cloud access to facilitate training.

## Releases

| Conference                            | Tag                                                                                                            | 
|:-------------------------------------:|:--------------------------------------------------------------------------------------------------------------:|
| Cascadia R Conf 2021 - July 4th, 2021 | [CascadiaRConf2021](https://github.com/FredHutch/R_Package_Validation_Tutorial/releases/tag/CascadiaRConf2021) |
| PHUSE CSS 2021 - September 13th, 2021 | [PhUSECSS2021](https://github.com/FredHutch/R_Package_Validation_Tutorial/releases/tag/PhUSECSS2021) |

