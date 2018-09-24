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
                                 "green", "pink",
                                 "grey"),
                 colour_hex = c("#2165b6", "#e8830c",
                                "#3cb4b8", "#cf4729",
                                "#34ba17", "#c04aa9",
                                "#4d4d4d")
                )
}
