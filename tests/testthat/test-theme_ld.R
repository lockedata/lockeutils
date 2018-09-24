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
