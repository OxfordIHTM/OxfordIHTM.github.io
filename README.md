# Oxford iHealth <img src="images/ihealth_base_pos_tn.png" align="right" />

<!-- badges: start -->
![License for code](https://img.shields.io/badge/license_for_code-GPL3.0-blue)
![License for writing](https://img.shields.io/badge/license_for_writing-CC_BY_4.0-blue)
[![test-website](https://github.com/OxfordIHTM/OxfordIHTM.github.io/actions/workflows/test-website.yml/badge.svg)](https://github.com/OxfordIHTM/OxfordIHTM.github.io/actions/workflows/test-website.yml)
[![Quarto Publish](https://github.com/OxfordIHTM/OxfordIHTM.github.io/actions/workflows/publish.yml/badge.svg)](https://github.com/OxfordIHTM/OxfordIHTM.github.io/actions/workflows/publish.yml)
<!-- badges: end -->


[Oxford iHealth](https://oxford-ihtm.io) is an initiative of the [MSc in International Health and Tropical Medicine](https://www.tropicalmedicine.ox.ac.uk/study-with-us/msc-ihtm). It serves as a focal point within the course for fostering innovation, research, and education in the field of computational sciences for health.

Oxford iHealth is designed to provide IHTM students with a learning environment for open and reproducible science and its enabling tools and technologies. Through various data and coding projects and the course's [research placement programme](https://www.tropicalmedicine.ox.ac.uk/study-with-us/msc-ihtm/ihtm-research-placements), students are then able to leverage this learning in research, design, and development of possible solutions to complex challenges in global health.

This initiative also facilitates interdisciplinary collaboration, enabling participants from different fields to work together on innovative projects that can have a real-world impact on global health.

## About this repository

This repository builds and serves the Oxford iHealth [website](https://oxford-ihtm.io) which is designed and coded using [R](https://r-project.org) language and environment for statistical computing and [Quarto](https://quarto.org), an open source scientific and technical publishing system.

## Reproducibility


### R version

This repository uses R version 4.5.1. To manage R versions, it is recommended to use [rig](https://github.com/r-lib/rig) - an R installation manager - to be able to install multiple versions of R and switch between them as needed.

### R package dependencies

R packages used in this repository are versioned using [`{renv}`](https://rstudio.github.io/renv/index.html). To reproduce the website's R package environment, please run:

```R
renv::restore()
```

on the R console.

To preview the website locally, run the following command on Terminal:

```bash
quarto preview
```

## Deployment

The website is rendered via GitHub Actions and published via GitHub Pages automatically every time changes are pushed to the main branch.


## Authors and developers

* Proochista Ariana
* Ernest Guevarra


## Licenses

All code used to produce this website is released under a [GPL-3.0](https://opensource.org/license/gpl-3-0) license. All text/written work in this website is released under a [CC-BY-4.0](https://creativecommons.org/licenses/by/4.0/) license.
