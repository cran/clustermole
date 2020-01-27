## ---- include=FALSE-----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----install-package, eval=FALSE----------------------------------------------
#  install.packages("clustermole")

## ----load-package, message=FALSE----------------------------------------------
library(clustermole)

## ----overlaps-----------------------------------------------------------------
my_genes = c("CD2", "CD3D", "CD3E", "IL7R", "IL32", "LTB", "LDHB", "CCR7")
my_overlaps = clustermole_overlaps(genes = my_genes, species = "hs")
my_overlaps

## ----enrichment, eval=FALSE---------------------------------------------------
#  clustermole_enrichment(expr_mat = my_expr_mat, species = "hs")

## ----markers------------------------------------------------------------------
markers = clustermole_markers(species = "hs")
markers

## ----celltypes-list-----------------------------------------------------------
markers_list = split(x = markers$gene, f = markers$celltype_full)

## ----load-dplyr, message=FALSE------------------------------------------------
library(dplyr)

## ----get-markers--------------------------------------------------------------
markers = clustermole_markers(species = "hs")
markers

## ----celltypes-length---------------------------------------------------------
markers %>% distinct(celltype_full) %>% nrow()

## ----count-species------------------------------------------------------------
markers %>% distinct(celltype_full, species) %>% count(species, sort = TRUE)

## ----count-organ--------------------------------------------------------------
markers %>% distinct(celltype_full, organ) %>% count(organ, sort = TRUE)

## ----package-version----------------------------------------------------------
packageVersion("clustermole")

