## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----echo=FALSE, out.width='100%', fig.cap='Figure 1. The Level 0 (L0) dataset is the incoming original data with complete metadata. Level 1 (L1) dataset is the L0 dataset reformatted according to the predefined ecocomDP model. Researchers are able to use L1 datasets as inputs to speed their analyses and generate Level 2 (L2) data. (Adapted from [O’Brien et al. 2021](https://doi.org/10.1016/j.ecoinf.2021.101374)).'----
knitr::include_graphics('./workflow.png')

## ----echo=FALSE, out.width='100%', fig.align="center", fig.cap='Figure 2. Mapping coordinates between spatial scales.'----
knitr::include_graphics('./coords_final_wide2.png')

## ----echo=FALSE, out.width='90%', fig.align='center', fig.cap = 'Figure 3. Varying experimental conditions change the meaningful level of observation in a study.'----
knitr::include_graphics('./MLO_final_long2.png')

## ----echo=FALSE, out.width='90%', fig.align='center', fig.cap = 'Figure 4. Instances of Frequency of Survey on a timeline; Using Frequency of Survey to assign event_id.'----
knitr::include_graphics('./LevelOfSurvey_final_long2.png')

## ----eval=FALSE---------------------------------------------------------------
#  create_eml(..., is_about = c(`Manipulative experiment` = "http://purl.dataone.org/odo/ECSO_00000506")

## ----echo=FALSE, out.width='100%', fig.cap='Figure 5. The metadata of a deprecated L1 dataset.'----
knitr::include_graphics('./deprecated.jpg')

