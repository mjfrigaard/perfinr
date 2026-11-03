test_that("monthly_savings() multiplies income by rate", {
  expect_equal(monthly_savings(4000, 0.20), 800)
  expect_equal(monthly_savings(c(4000, 5000), 0.10), c(400, 500))
})

test_that("monthly_savings() rejects non-numeric input", {
  expect_error(monthly_savings(4000, "20%"), "`savings_rate` must be a numeric")
})
