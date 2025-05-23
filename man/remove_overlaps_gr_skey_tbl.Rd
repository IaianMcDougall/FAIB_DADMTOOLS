% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/remove-overlaps-gr-skey-tbl.R
\name{remove_overlaps_gr_skey_tbl}
\alias{remove_overlaps_gr_skey_tbl}
\title{Creates new dataset gr_skey table with gr_skey key overlaps removed by either grouping values into arrays or keeping only rows with the max or min value in select field}
\usage{
remove_overlaps_gr_skey_tbl(
  gr_skey_table,
  attribute_table,
  array_ind = TRUE,
  array_fields = NULL,
  remove_by_rank_ind = FALSE,
  rank_field = NULL,
  rank_type = "ASC",
  pg_conn_param = dadmtools::get_pg_conn_list()
)
}
\arguments{
\item{gr_skey_table}{Schema and table name of the pre-existing gr_skey table}

\item{attribute_table}{the name of the attribute table containing the key (e.g. pgid) to join to gr_skey table. Attributes from this table will be in the final resultant table. If the table name is left blank, gr_skey table attributes will be used in the final resultant table.}

\item{array_ind}{TRUE of FALSE, if True then output table will have fields grouped into arrays (by gr_skey)}

\item{array_fields}{Vector of field names to be goruped as array}

\item{remove_by_rank_ind}{True or False.  If True only gr_skey rows that have the largest/Smallest rank_field values will be kept}

\item{rank_field}{the field used to rank as either largest or smallest when grouped by gr_skey}

\item{rank_type}{ASC or DESC, when ASC then the rows with smallest rank field values will be kept. When DESC then rows with largest rank field values will be kept.}

\item{pg_conn_param}{Defaults to get_pg_conn_list()}
}
\value{
no return
}
\description{
Creates new dataset gr_skey table with gr_skey key overlaps removed by either grouping values into arrays or keeping only rows with the max or min value in select field
}
\examples{
coming soon
}
