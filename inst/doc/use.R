## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(collapse = TRUE, comment = "#>")
options(tibble.print_min = 4L, tibble.print_max = 4L)

## ----eval=FALSE, setup--------------------------------------------------------
#  library(ecocomDP)

## ----include=FALSE------------------------------------------------------------
library(ecocomDP)

## ----eval=FALSE---------------------------------------------------------------
#  search_data()
#  #> # A tibble: 82 x 11
#  #>   source id     title  description abstract  years sampling_interv~ sites url
#  #>   <chr>  <chr>  <chr>  <chr>       <chr>     <chr> <chr>            <chr> <chr>
#  #> 1 EDI    edi.3~ Fores~ <NA>        "This da~ 8     0.01             <NA>  https~
#  #> 2 EDI    edi.2~ Zoopl~ <NA>        "This da~ 9     0.19             <NA>  https~
#  #> 3 EDI    edi.3~ Long ~ <NA>        "This da~ 21    0.02             <NA>  https~
#  #> 4 EDI    edi.3~ Dune ~ <NA>        "This da~ 7     0.15             <NA>  https~
#  #> # ... with 78 more rows, and 2 more variables: source_id <chr>,
#  #> #   source_id_url <chr>

## ----eval=FALSE---------------------------------------------------------------
#  search_data(taxa = "Insecta")
#  #> # A tibble: 13 x 11
#  #>   source id     title  description abstract  years sampling_interv~ sites url
#  #>   <chr>  <chr>  <chr>  <chr>       <chr>     <chr> <chr>            <chr> <chr>
#  #> 1 EDI    edi.2~ Moss ~ <NA>        "This da~ 23    821.61           <NA>  https~
#  #> 2 EDI    edi.2~ Bonan~ <NA>        "This da~ 38    0.41             <NA>  https~
#  #> 3 EDI    edi.3~ Aphid~ <NA>        "This da~ 4     0                <NA>  https~
#  #> 4 EDI    edi.3~ CGR02~ <NA>        "This da~ 30    0.06             <NA>  https~
#  #> # ... with 9 more rows, and 2 more variables: source_id <chr>,
#  #> #   source_id_url <chr>

## ----eval=FALSE---------------------------------------------------------------
#  search_data(num_years = c(20, 40))
#  #> # A tibble: 22 x 11
#  #>   source id     title  description abstract  years sampling_interv~ sites url
#  #>   <chr>  <chr>  <chr>  <lgl>       <chr>     <int>            <dbl> <chr> <chr>
#  #> 1 EDI    edi.3~ Long ~ NA          "This da~    21             0.02 <NA>  https~
#  #> 2 EDI    edi.2~ Moss ~ NA          "This da~    23           822.   <NA>  https~
#  #> 3 EDI    edi.3~ Annua~ NA          "This da~    20             0    <NA>  https~
#  #> 4 EDI    edi.3~ SGS-L~ NA          "This da~    26             0.05 <NA>  https~
#  #> # ... with 18 more rows, and 2 more variables: source_id <chr>,
#  #> #   source_id_url <chr>
#  

## ----eval=FALSE---------------------------------------------------------------
#  search_data(area = c(47, -70, 38, -90))
#  #> # A tibble: 55 x 11
#  #>   source id     title  description abstract  years sampling_interv~ sites url
#  #>   <chr>  <chr>  <chr>  <chr>       <chr>     <chr> <chr>            <chr> <chr>
#  #> 1 EDI    edi.3~ Fores~ <NA>        "This da~ 8     0.01             <NA>  https~
#  #> 2 EDI    edi.3~ Long ~ <NA>        "This da~ 21    0.02             <NA>  https~
#  #> 3 EDI    edi.3~ Dune ~ <NA>        "This da~ 7     0.15             <NA>  https~
#  #> 4 EDI    edi.3~ SGS-L~ <NA>        "This da~ 7     0                <NA>  https~
#  #> # ... with 51 more rows, and 2 more variables: source_id <chr>,
#  #> #   source_id_url <chr>

## ----eval=FALSE---------------------------------------------------------------
#  search_data(taxa = "Insecta", num_years = c(20, 100), area = c(47, -70, 38, -90))
#  #> # A tibble: 4 x 11
#  #>   source id     title  description abstract  years sampling_interv~ sites url
#  #>   <chr>  <chr>  <chr>  <lgl>       <chr>     <int>            <dbl> <chr> <chr>
#  #> 1 EDI    edi.3~ CGR02~ NA          "This da~    30             0.06 <NA>  https~
#  #> 2 EDI    edi.2~ North~ NA          "This da~    36            10.5  <NA>  https~
#  #> 3 EDI    edi.2~ North~ NA          "This da~    35            10.8  <NA>  https~
#  #> 4 EDI    edi.2~ North~ NA          "This da~    36            10.5  <NA>  https~
#  #> # ... with 2 more variables: source_id <chr>, source_id_url <chr>

## ----eval=FALSE---------------------------------------------------------------
#  r <- search_data(taxa = "Insecta", num_years = c(20, 100), area = c(47, -70, 38, -90))
#  r$title
#  #> [1] "CGR02 Sweep Sampling of Grasshoppers on Konza Prairie LTER watersheds (Reformatted to ecocomDP Design Pattern)"
#  #> [2] "North Temperate Lakes LTER: Pelagic Macroinvertebrate Summary 1983 - current (Reformatted to ecocomDP Design Pattern)"
#  #> [3] "North Temperate Lakes LTER: Benthic Macroinvertebrates 1981 - current (Reformatted to ecocomDP Design Pattern)"
#  #> [4] "North Temperate Lakes LTER: Pelagic Macroinvertebrate Abundance 1983 - current (Reformatted to ecocomDP Design Pattern)"

## ----eval=FALSE---------------------------------------------------------------
#  dataset_1 <- read_data("edi.193.5")
#  #> Reading edi.193.5
#  #>  [0%] Downloaded 0 bytes...
#  #>  [0%] Downloaded 0 bytes...
#  #>  [0%] Downloaded 0 bytes...
#  #>  [0%] Downloaded 0 bytes...
#  #>  [0%] Downloaded 0 bytes...
#  #>  [0%] Downloaded 0 bytes...
#  #>  [0%] Downloaded 0 bytes...
#  #>  [0%] Downloaded 0 bytes...
#  #>
#  #> Validating edi.193.5:
#  #>   Required tables
#  #>   Column names
#  #>   Required columns
#  #>   Column classes
#  #>   Datetime formats
#  #>   Primary keys
#  #>   Composite keys
#  #>   Referential integrity
#  #>   Latitude and longitude format
#  #>   Latitude and longitude range
#  #>   Elevation
#  #>   variable_mapping

## ----eval=FALSE---------------------------------------------------------------
#  dataset_2 <- read_data(
#    id = "neon.ecocomdp.20120.001.001",
#    site = c("COMO", "LECO", "SUGG"),
#    startdate = "2017-06",
#    enddate = "2019-09",
#    check.size = FALSE)
#  #> Finding available files
#  #>   |==================================================================| 100%
#  #>
#  #> Downloading files totaling approximately 1.588594 MB
#  #> Downloading 20 files
#  #>   |====================================================================| 100%
#  #>
#  #> Unpacking zip files using 1 cores.
#  #>   |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=00s
#  #> Stacking operation across a single core.
#  #> Stacking table inv_fieldData
#  #>   |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=00s
#  #> Stacking table inv_persample
#  #>   |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=00s
#  #> Stacking table inv_pervial
#  #>   |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=00s
#  #> Stacking table inv_taxonomyProcessed
#  #>   |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=02s
#  #> Stacking table inv_taxonomyRaw
#  #>   |++++++++++++++++++++++++++++++++++++++++++++++++++| 100% elapsed=02s
#  #> Copied the most recent publication of validation file to /stackedFiles
#  #> Copied the most recent publication of categoricalCodes file to /stackedFiles
#  #> Copied the most recent publication of variable definition file to /stackedFiles
#  #> Finished: Stacked 5 data tables and 3 metadata tables!
#  #> Stacking took 4.732454 secs
#  #> Joining, by = c("uid", "sampleID")
#  #> Joining, by = "sampleID"
#  #>
#  #> Validating neon.ecocomdp.20120.001.001:
#  #>   Required tables
#  #>   Column names
#  #>   Required columns
#  #>   Column classes
#  #>   Datetime formats
#  #>   Primary keys
#  #>   Composite keys
#  #>   Referential integrity
#  #>   Latitude and longitude format
#  #>   Latitude and longitude range
#  #>   Elevation
#  #>   variable_mapping

## ----include=FALSE------------------------------------------------------------
dataset_1 <- ants_L1

## -----------------------------------------------------------------------------
str(dataset_1)

## -----------------------------------------------------------------------------
flat <- flatten_data(dataset_1)
flat

## ----fig.height=4, fig.width=7------------------------------------------------
plot_taxa_accum_time(flat)

plot_taxa_diversity(flat)
plot_taxa_diversity(flat, time_window_size = "month")
plot_taxa_diversity(flat, time_window_size = "year")

plot_sample_space_time(flat)

plot_taxa_shared_sites(flat)

plot_taxa_rank(flat, facet_var = "location_id")

plot_taxa_occur_freq(
  data = flat,
  facet_var = "location_id",
  color_var = "taxon_rank")

plot_taxa_abund(
  data = flat,
  facet_var = "location_id",
  color_var = "taxon_rank",
  trans = "log10")

plot_sites(flat)

## ----include=FALSE------------------------------------------------------------
datasets <- c(ants_L1, ants_L1)

## ----eval=FALSE---------------------------------------------------------------
#  datasets <- list(dataset_1, dataset_2)
#  mypath <- paste0(tempdir(), "/data")
#  dir.create(mypath)
#  
#  save_data(datasets, mypath)

## ----eval=FALSE---------------------------------------------------------------
#  datasets <- read_data(from = paste0(mypath, "/datasets.rds"))
#  #> Validating edi.193.5:
#  #>   Required tables
#  #>   Column names
#  #>   Required columns
#  #>   Column classes
#  #>   Datetime formats
#  #>   Primary keys
#  #>   Composite keys
#  #>   Referential integrity
#  #>   Latitude and longitude format
#  #>   Latitude and longitude range
#  #>   Elevation
#  #>   variable_mapping
#  #> Validating neon.ecocomdp.20120.001.001:
#  #>   Required tables
#  #>   Column names
#  #>   Required columns
#  #>   Column classes
#  #>   Datetime formats
#  #>   Primary keys
#  #>   Composite keys
#  #>   Referential integrity
#  #>   Latitude and longitude format
#  #>   Latitude and longitude range
#  #>   Elevation
#  #>   variable_mapping

## ----eval=FALSE---------------------------------------------------------------
#  save_data(datasets, mypath, type = ".csv")

## ----eval=FALSE---------------------------------------------------------------
#  datasets <- read_data(from = mypath)
#  #> Validating edi.193.5:
#  #>   Required tables
#  #>   Column names
#  #>   Required columns
#  #>   Column classes
#  #>   Datetime formats
#  #>   Primary keys
#  #>   Composite keys
#  #>   Referential integrity
#  #>   Latitude and longitude format
#  #>   Latitude and longitude range
#  #>   Elevation
#  #>   variable_mapping
#  #> Validating neon.ecocomdp.20120.001.001:
#  #>   Required tables
#  #>   Column names
#  #>   Required columns
#  #>   Column classes
#  #>   Datetime formats
#  #>   Primary keys
#  #>   Composite keys
#  #>   Referential integrity
#  #>   Latitude and longitude format
#  #>   Latitude and longitude range
#  #>   Elevation
#  #>   variable_mapping

