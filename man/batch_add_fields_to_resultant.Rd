% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/batch-add-fields-to-resultant.R
\name{batch_add_fields_to_resultant}
\alias{batch_add_fields_to_resultant}
\title{Once layers have been imported using batch_import_to_pg_gr_skey or import_to_pg_gr_skey, build a flat, denormalized table, also known as a resultant table using this batch function. The function requires an existing table (e.g. sandbox.all_bc_gr_skey) with joining key (e.g. gr_skey) to build the resultant table off of. Requires populating a configuration input csv file (e.g. see example on git repository called batch_add_fields_to_resultant.csv and description in the README.)}
\usage{
batch_add_fields_to_resultant(
  in_csv = "batch_add_fields_to_resultant.csv",
  pg_conn_param = dadmtools::get_pg_conn_list()
)
}
\arguments{
\item{in_csv}{File path to input csv, defaults to "batch_add_fields_to_resultant.csv". See example csv and README for instructions in git repository: https://github.com/bcgov/FAIB_DADMTOOLS/tree/main}

\item{pg_conn_param}{named list of postgres connection parameters (i.e. get_pg_conn_list())}
}
\value{
nothing is returned
}
\description{
Once layers have been imported using batch_import_to_pg_gr_skey or import_to_pg_gr_skey, build a flat, denormalized table, also known as a resultant table using this batch function. The function requires an existing table (e.g. sandbox.all_bc_gr_skey) with joining key (e.g. gr_skey) to build the resultant table off of. Requires populating a configuration input csv file (e.g. see example on git repository called batch_add_fields_to_resultant.csv and description in the README.)
}
\examples{
Download and edit example input batch_add_fields_to_resultant.csv from https://github.com/bcgov/FAIB_DADMTOOLS/tree/main. Example of function run:
batch_add_fields_to_resultant(
   in_csv           = "batch_add_fields_to_resultant.csv",
   pg_conn_param     = dadmtools::get_pg_conn_list()
)
}
