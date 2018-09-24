#' Locke Data ggplot2 theme
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

theme_ld <- function(){
  ld <- ggplot2::theme_minimal(base_family = "Roboto Thin",
                               base_size = 12)

  ld <- ld + theme(legend.background=element_blank())
  ld <- ld + theme(legend.key=element_blank())
  ld <- ld + theme(legend.position = "bottom")
  ld <- ld  + theme(panel.grid.major = element_blank(),
                    panel.grid.minor = element_blank())
  ld <- ld + xlab("")
  ld <- ld + ylab("")

  return(ld)
}
