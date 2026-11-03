test_that("emergency_fund_target() multiplies expenses by months", {
  expect_equal(emergency_fund_target(2400), 7200)
  expect_equal(emergency_fund_target(2400, months = c(3, 6)), c(7200, 14400))
})
