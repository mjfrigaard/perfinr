test_that("future_value_series() returns the annuity future value", {
  expect_equal(future_value_series(500, 0.07 / 12, 360), 609985.50, tolerance = 1e-6)
  expect_equal(future_value_series(100, 0.10, c(1, 2)), c(100, 210))
})

test_that("future_value_series() handles a 0% rate", {
  expect_equal(future_value_series(500, 0, 360), 180000)
  expect_equal(future_value_series(100, c(0, 0.10), 2), c(200, 210))
})
