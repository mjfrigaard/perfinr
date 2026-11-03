test_that("mortgage_payment() matches the amortization formula", {
  expect_equal(mortgage_payment(480000, 0.06, 30), 2877.8425, tolerance = 1e-6)
})

test_that("mortgage_payment() handles a 0% rate", {
  expect_equal(mortgage_payment(120000, 0, 30), 120000 / 360)
  expect_equal(
    mortgage_payment(c(120000, 480000), c(0, 0.06), 30),
    c(120000 / 360, 2877.8425),
    tolerance = 1e-6
  )
})

test_that("mortgage_payment() requires a positive term", {
  expect_error(mortgage_payment(480000, 0.06, 0), "`years` must be greater than 0")
})
