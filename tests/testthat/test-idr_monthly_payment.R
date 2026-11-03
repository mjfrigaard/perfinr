test_that("idr_monthly_payment() uses discretionary income", {
  expect_equal(idr_monthly_payment(50000), 217.17)
  expect_equal(idr_monthly_payment(50000, payment_rate = 0.15), 325.75)
})

test_that("idr_monthly_payment() is 0 below the threshold", {
  expect_equal(idr_monthly_payment(c(20000, 50000)), c(0, 217.17))
})
