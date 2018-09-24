context("test-scale_ld")

test_that("scale_fill_ld works", {
  fill <- scale_fill_ld()
  testthat::expect_is(fill, "ScaleDiscrete")
  testthat::expect_true(all(fill$palette(3) ==
                              c("#E8830C", "#2165B6", "#4d4d4d")))
  testthat::expect_equal(fill$aesthetics, "fill")
})

test_that("scale_colour_ld works", {
  colour <- scale_colour_ld()
  testthat::expect_is(colour, "ScaleDiscrete")
  testthat::expect_true(all(colour$palette(3) ==
                              c("#E8830C", "#2165B6", "#4d4d4d")))
  testthat::expect_equal(colour$aesthetics, "colour")
})
