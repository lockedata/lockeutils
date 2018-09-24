#' Locke Data official colours
#'
#' @return A tibble with colours' names and hex codes.
#' @export
#'
#' @examples
#' get_ld_colours()
get_ld_colours <- function(){
  tibble::tibble(colour_name = c("blue", "orange",
                                 "teal", "red",
                                 "green", "pink"),
                 colour_hex = c("#2165b6", "#e8830c",
                                "#3cb4b8", "#cf4729",
                                "#34ba17", "#c04aa9")
                )
}
