## ---- include=FALSE-----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)
# reduce the minimum number of characters for the tibble column titles (default: 15)
options(pillar.min_title_chars = 10)

## ----install-package, eval=FALSE----------------------------------------------
#  install.packages("clustermole")

## ----load-package, message=FALSE----------------------------------------------
library(clustermole)

## ----markers------------------------------------------------------------------
markers <- clustermole_markers(species = "hs")
markers

## ----celltypes-list-----------------------------------------------------------
markers_list <- split(x = markers$gene, f = markers$celltype_full)

## ----celltypes-count----------------------------------------------------------
length(unique(markers$celltype_full))

## ----celltypes-dbs------------------------------------------------------------
sort(unique(markers$db))

## ----overlaps, eval=FALSE-----------------------------------------------------
#  my_overlaps <- clustermole_overlaps(genes = my_genes_vec, species = "hs")

## ----enrichment, eval=FALSE---------------------------------------------------
#  my_enrichment <- clustermole_enrichment(expr_mat = my_expr_mat, species = "hs")

