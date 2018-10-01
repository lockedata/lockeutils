# from hrbrthemes
# https://github.com/hrbrmstr/hrbrthemes/blob/beae03c85edfc0f7a7553e6eb967aaf61dd36860/R/zzz.r#L1
.onAttach <- function(libname, pkgname) {

  if (.Platform$OS.type == "windows")  {
    if (interactive()) packageStartupMessage("Registering Windows fonts with R")
    extrafont::loadfonts("win", quiet = TRUE)
  }

  fnt <- extrafont::fonttable()

  if(!"Contrail One" %in% fnt$FamilyName){
    packageStartupMessage("NOTE: Contrail One is required to use this package.")
    packageStartupMessage("      Please use lockeutils::import_contrail()")
  }

  if(!"Roboto Thin" %in% fnt$FamilyName){
    packageStartupMessage("NOTE: Roboto Thin is required to use this package.")
    packageStartupMessage("      Please use lockeutils::import_roboto()")
  }
}
