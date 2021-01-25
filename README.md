
<!-- README.md is generated from README.Rmd. Please edit that file -->

# R Package Validation Tutorial

Welcome to the R Package Validation Tutorial\!

## Overview

By the end of this tutorial, you will know how to apply the R Package
Validation Framework to your internal R package using the {valtools}
package.

|                                     |
| ----------------------------------- |
| :spiral\_calendar: UseR\!2021       |
| :alarm\_clock: TBD                  |
| :technologist: @thebioengineer      |
| :technologist: @mariev              |
| :speech\_balloon: slack channel TBD |

## Schedule

| Time      | Slides                                                                     | Activity Prompts                             |
| :-------- | :------------------------------------------------------------------------- | :------------------------------------------- |
| 0 - 10    | [**Welcome and Orientation**](slides/01-Welcome.Rmd)                       |                                              |
| 10 - 70   | [**Package Elements & Structure**](slides/02-R-Packaging-Background.Rmd)   | [02-verbose.R](materials/02-verbose.R)       |
|           |                                                                            | [02-sparse.R](materials/02-sparse.R)         |
|           |                                                                            | [02-answer-key.R](materials/02-answer-key.R) |
| 70 - 75   | *Break*                                                                    |                                              |
| 75 - 115  | [**Concepts of R Package Validation**](slides/03-Validation-Framework.Rmd) | [03-verbose.R](materials/03-verbose.R)       |
|           |                                                                            | [03-sparse.R](materials/03-sparse.R)         |
|           |                                                                            | [03-answer-key.R](materials/03-answer-key.R) |
| 115 - 130 | *Break*                                                                    |                                              |
| 130 - 185 | [**Introduction to {valtools}**](slides/04-Validation-in-practice.Rmd)     | [04-verbose.R](materials/04-verbose.R)       |
|           |                                                                            | [04-sparse.R](materials/04-sparse.R)         |
|           |                                                                            | [04-answer-key.R](materials/04-answer-key)   |
| 185 - 190 | *Break*                                                                    |                                              |
| 190 - 210 | [**Advanced Exercises**](slides/05-Advanced-validation-examples.Rmd)       | [05-verbose.R](materials/05-verbose.R)       |
|           |                                                                            | [05-sparse.R](materials/05-sparse.R)         |
|           |                                                                            | [05-answer-key.R](materials/05-answer-key.R) |
| 210 - 240 | [**Closeout**](slides/06-closeout.Rmd)                                     |                                              |

## Setup

1.  RStudio cloud instructions
2.  \[Optional\] setup for running code locally:

<!-- end list -->

``` r
remotes::install.packages("phuse-org/valtools")
```

## References

  - [RStudio 2021
    slides](https://thebioengineer.github.io/validation_studio_2021)
  - [RStudio 2020
    presentation](https://rstudio.com/resources/rstudioconf-2020/approaches-to-assay-processing-package-validation/)
