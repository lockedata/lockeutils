#' Locke Data official colours
#'
#' @return A tibble with colours' names and hex codes.
#' @export
#'
#' @examples
#' get_ld_colours()
get_ld_colours <- function(){
  tibble::tibble(colour_name = c("orange", "blue",
                                 "grey"),
                 colour_hex = c("#E8830C", "#2165B6",
                                "#4d4d4d"))
}
