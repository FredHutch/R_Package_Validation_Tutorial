
<!-- README.md is generated from README.Rmd. Please edit that file -->

# R Package Validation Tutorial

## Overview

Welcome to the R Package Validation Tutorial!

Based on the R Package Validation Framework White Paper that is in
preparation under PHUSE (citation), this tutorial aims to teach the
basics of R package development while creating all the necessary
documentation to support a validation. The training will show how to use
the {valtools} package as part of the development process.

By the end of this tutorial, you will know how to apply the R Package
Validation Framework to your internal R packages, and apply the
{valtools} package.

|                                     |
|-------------------------------------|
| :spiral\_calendar: UseR!2021        |
| :alarm\_clock: TBD                  |
| :technologist: @thebioengineer      |
| :technologist: @mariev              |
| :speech\_balloon: slack channel TBD |

## Schedule & Materials

The tutorial is planned to take about 4 hours, including breaks.

Slides and exercises are grouped by section. Exercises are split into
`Spartan` or `Verbose`, indicating the amount of supplementary
information provided. An answer key is also provided in the folder.

| Time      | Section                              | Slides                                             | Exercises                       |
|:----------|:-------------------------------------|----------------------------------------------------|:--------------------------------|
| 0 - 10    | **Welcome and Orientation**          |                                                    |                                 |
| 10 - 70   | **Package Elements & Structure**     | Package Elements & Structure                       | Make a basic package            |
|           |                                      | Package Documentation                              | Documenting a package           |
|           |                                      | Deploying R Packages                               | Exploring Installation sources  |
| 70 - 75   | *Break*                              |                                                    |                                 |
| 75 - 115  | **Concepts of R Package Validation** | Introduction to the R Package Validation Framework |                                 |
| 115 - 130 | *Break*                              |                                                    |                                 |
| 130 - 185 | **Introduction to {valtools}**       | Intro to {valtools}                                |                                 |
|           |                                      | Structure of Test Cases and Code                   | Writing test code               |
|           |                                      | Elements of a Validation Report                    | Creating a validation report    |
| 185 - 190 | *Break*                              |                                                    |                                 |
| 190 - 210 |                                      | Re-Validating a Package                            | Validation in a new environment |
| 210 - 240 | **Closeout**                         |                                                    |                                 |

## Setup

1.  RStudio cloud instructions
2.  \[Optional\] setup for running code locally:

``` r
# you will need to install the following packages from CRAN
install.packages(c("devtools", "roxygen2", "testthat", "usethis", "knitr"))

# you will need to install the following packages from github
remotes::install.packages("phuse-org/valtools")
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
