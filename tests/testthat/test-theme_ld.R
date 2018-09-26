context("test-theme_ld")

test_that("theme_ld works", {
  ld <- theme_ld()
  testthat::expect_is(ld, "theme")
  testthat::expect_is(ld, "gg")
  testthat::expect_equal(ld$legend.position, "bottom")
  testthat::expect_equal(ld$text$family, "Roboto Thin")
  testthat::expect_true(all(attr(ld$axis.title.x, "class") ==
                          c("element_blank", "element")))
  testthat::expect_true(all(attr(ld$axis.title.y, "class") ==
                          c("element_blank", "element")))
})

test_that("actual plots",{
  library("ggplot2")
  set.seed(42)
  df <- data.frame(
    gp = factor(rep(letters[1:3], each = 10)),
    y = rnorm(30)
  )
  p <- ggplot(df, aes(gp, y)) +
    geom_point() +
    ggtitle("wow title LHS great",
            subtitle = "nice plot") +
    theme_ld()

  vdiffr::expect_doppelganger("Basic plot", p)

})
