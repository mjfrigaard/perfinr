test_that("future_value() compounds yearly", {
  expect_equal(future_value(10000, 0.07, 10), 19671.51, tolerance = 1e-6)
  expect_equal(future_value(100, 0.10, c(0, 1, 2)), c(100, 110, 121))
})
