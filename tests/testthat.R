library(testthat)
library(lockeutils)

if(identical(Sys.getenv("TRAVIS"), "true")){
  lockeutils::import_roboto()
}

test_check("lockeutils")
