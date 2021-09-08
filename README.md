# R Package Validation Tutorial

## Overview

Welcome to the R Package Validation Tutorial!

Based on the [R Package Validation Framework White Paper that is in
pubic review under PHUSE](https://lnkd.in/dufTZ2Ra), this tutorial aims to teach the
basics of R package development while creating all the necessary
documentation to support a validation. The training will show how to use
the {valtools} package as part of the development process.

By the end of this tutorial, you will know how to apply the R Package
Validation Framework to your internal R packages, and apply the
{valtools} package.


|                                     |
|-------------------------------------|
| :spiral\_calendar: PHUSE CSS Conf, Monday September 13th      |
| :man_technologist: [@thebioengineer](https://github.com/thebioengineer)      |
| :woman_technologist: [@mariev](https://github.com/mariev)              |

## Schedule & Materials

Slides and exercises are grouped by section. Exercises are split into
`Spartan` or `Verbose`, indicating the amount of supplementary
information provided. An answer key is also provided in the folder.

| Time      | Section                              | Slides                                             | Exercises                       |
|:----------|:-------------------------------------|----------------------------------------------------|:--------------------------------|
| 0 - 10    | **Welcome and Orientation**          | [Welcome Slides](Slides/Slides-01-Welcome_and_Orientation)      |                                 |
| 10 - 30   | **Concepts of R Package Validation** | [Introduction to the R Package Validation Framework](Slides/Slides-02-Concepts_of_R_Package_Validation) |                                 |
| 40 - 50   | **Introduction to {valtools}**       | [Intro to {valtools}](Slides/Slides-03-Intro_to_Valtools)                                |                                 |
| 50 - 90   | **Using {valtools}**                 | [Elements of Validation](Slides/Slides-04-Elements_of_Validation)                  | 04: [Writing test code](Materials/Materials-04-Validation_Elements) |
| 90 - 125  | **Validation Reports**               | [The Validation Report](Slides/Slides-05-The_Validation_Report)                    | 05: [Creating a validation report](Materials/Materials-05-Validation_Report)    |
| 125 - 135 | *Break/Q&A*                          |                                                    |                                 |
| 140 - 180 | **Types of Validation & Q&A**        | [Modes of Validation](Slides/Slides-06-Modes_of_Validation)                          | 06: [Validation in a new environment](Materials/Materials-06-Validation_modes) |

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
    slides](https://thebioengineer.github.io/validation_studio_2021)
-   [RStudio 2020
    presentation](https://rstudio.com/resources/rstudioconf-2020/approaches-to-assay-processing-package-validation/)
    
## Acknowledgments

This workshop was developed by employees of Fred Hutch Cancer Research Center - SCHARP - VISC. 
We also recieved support from R/Pharma in the form of RStudio Cloud access to facilitate training.
