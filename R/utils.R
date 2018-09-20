
# from hrbrthemes
# https://github.com/hrbrmstr/hrbrthemes/blob/beae03c85edfc0f7a7553e6eb967aaf61dd36860/R/roboto-condensed.r#L183
import_roboto_condensed <- function() {

  rb_font_dir <- system.file("fonts", "roboto",
                             package = "lockeutils")

  suppressWarnings(suppressMessages(extrafont::font_import(rc_font_dir, prompt = FALSE)))

  message(
    sprintf(
      "You will likely need to install these fonts on your system as well.\n\nYou can find them in [%s]",
      rb_font_dir)
  )

}
