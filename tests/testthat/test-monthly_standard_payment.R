test_that("monthly_standard_payment() uses 6.5% over 10 years by default", {
  expect_equal(monthly_standard_payment(45000), 510.9659, tolerance = 1e-6)
  expect_equal(
    monthly_standard_payment(45000, 0.06, 30),
    mortgage_payment(45000, 0.06, 30)
  )
})
