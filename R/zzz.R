# from hrbrthemes
# https://github.com/hrbrmstr/hrbrthemes/blob/beae03c85edfc0f7a7553e6eb967aaf61dd36860/R/zzz.r#L1
.onAttach <- function(libname, pkgname) {

  if (.Platform$OS.type == "windows")  {
    if (interactive()) packageStartupMessage("Registering Windows fonts with R")
    extrafont::loadfonts("win", quiet = TRUE)
  }

  fnt <- extrafont::fonttable()
  if (!any(grepl("Contrail|Roboto", fnt$FamilyName))) {
    packageStartupMessage("NOTE: Contrail One or Roboto fonts are required to use this package.")
    packageStartupMessage("      Please use lockeutils::import_roboto() to install Roboto and")
    packageStartupMessage("      lockeutils::import_contrail() to install Contrail One")
    if(interactive()) {
      switch(menu(c("Yes", "No"), title = "Do you want to index fonts using extrafont::font_import()?") + 1,
             cat("nothing Done\n"),
             extrafont::font_import(),
             "Not indexing")
    }
  } # nocov end

}
