#' Locke Data ggplot2 theme
#'
#' @import ggplot2
#'
#' @param base_size parameter passed to \code{ggplot2::theme_minimal}
#'
#' @return ggplot2 theme
#' @export
#'
#' @examples
#' library("ggplot2")
#' df <- data.frame(
#' gp = factor(rep(letters[1:3], each = 10)),
#' y = rnorm(30)
#' )
#' ggplot(df, aes(gp, y)) +
#'   geom_point() +
#'   ggtitle("wow title LHS great",
#'           subtitle = "nice plot") +
#'   theme_ld()

theme_ld <- function(base_size = 15){
  ld <- ggplot2::theme_minimal(base_family = "Roboto Thin",
                               base_size = base_size)

  ld <- ld + theme(legend.background=element_blank())
  ld <- ld + theme(legend.key=element_blank())
  ld <- ld + theme(legend.position = "bottom")
  ld <- ld  + theme(panel.grid.major = element_blank(),
                    panel.grid.minor = element_blank())
  ld <- ld + theme(axis.title.y = element_blank())
  ld <- ld + theme(axis.title.x = element_blank())
  # https://github.com/tidyverse/ggplot2/pull/2749
  #ld <- ld + theme(geom = element_geom(colour = "#2165B6",
  #                          fill = "#4d4d4d"))

  return(ld)
}
