#from colorblindr
# https://github.com/clauswilke/colorblindr/blob/1ac3d4d62dad047b68bb66c06cee927a4517d678/R/scales.R#L1

#' @rdname scale_ld
#' @export
#' @usage NULL
scale_colour_ld <- function(aesthetics = "colour", ...) {
  scale_ld(aesthetics, ...)
}

#' @rdname scale_ld
#' @export
#' @usage NULL
scale_color_ld <- scale_colour_ld

#' @rdname scale_ld
#' @export
#' @usage NULL
#' @examples
#' \dontrun{
#' library("ggplot2")
#' ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) +
#' geom_bar() +
#' theme_ld() +
#' scale_fill_ld()
#' }
scale_fill_ld <- function(aesthetics = "fill", ...) {
  scale_ld(aesthetics, ...)
}

#' Locke Data color scale
#'
#' This is a qualitative scale with three different colours.

#' @param alpha Alpha transparency level of the color. Default is no transparency.
#' @param ... common discrete scale parameters: `name`, `breaks`, `labels`, `na.value`, `limits`, `guide`, and `aesthetics`.
#'  See [discrete_scale] for more details.
#' @examples
#' library(ggplot2)
#' ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
#'   geom_point() +
#'   theme_ld() +
#'    scale_color_ld()
#' @export
#' @usage NULL
scale_ld <- function(aesthetics, alpha = NA, ...) {
  values <-  c("#2165b6", "#e8830c",
               "#3cb4b8", "#cf4729",
               "#34ba17", "#c04aa9",
               "#4d4d4d")
  n <- length(values)
  alpha <- rep_len(alpha, n)


  ai <- !is.na(alpha)
  if (sum(ai) > 0) { # at least one color needs alpha
    values[ai] <- scales::alpha(values[ai], alpha[ai])
  }

  pal <- function(n) {
    if (n > length(values)) {
      warning("Insufficient values in manual scale. ", n, " needed but only ",
              length(values), " provided.", call. = FALSE)
    }
    values
  }
  ggplot2::discrete_scale(aesthetics, "manual", pal, ...)
}
