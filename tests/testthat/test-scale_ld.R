context("test-scale_ld")

test_that("scale_fill_ld works", {
  fill <- scale_fill_ld()
  testthat::expect_is(fill, "ScaleDiscrete")
  testthat::expect_true(all(fill$palette(3) ==
                              c("#2165b6", "#e8830c", "#3cb4b8", "#cf4729", "#34ba17", "#c04aa9",
                                "#4d4d4d")))
  testthat::expect_equal(fill$aesthetics, "fill")

  library("ggplot2")
  p <- ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) +
    geom_bar() +
    theme_ld() +
    scale_fill_ld()
  vdiffr::expect_doppelganger("fill scale", p)
})

test_that("scale_colour_ld works", {
  colour <- scale_colour_ld()
  testthat::expect_is(colour, "ScaleDiscrete")
  testthat::expect_true(all(colour$palette(3) ==
                              c("#2165b6", "#e8830c", "#3cb4b8", "#cf4729", "#34ba17", "#c04aa9",
                                "#4d4d4d")))
  testthat::expect_equal(colour$aesthetics, "colour")

  library(ggplot2)
  p <- ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
    geom_point() +
    theme_ld() +
    scale_color_ld()

  vdiffr::expect_doppelganger("color scale", p)
})
