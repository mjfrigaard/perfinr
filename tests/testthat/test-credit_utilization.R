test_that("credit_utilization() returns a percent", {
  expect_equal(credit_utilization(900, 3000), 30)
  expect_equal(credit_utilization(c(0, 3000), 3000), c(0, 100))
})

test_that("credit_utilization() requires a positive limit", {
  expect_error(credit_utilization(900, 0), "`credit_limit` must be greater than 0")
})
