test_that("hysa_balance() compounds yearly", {
  expect_equal(hysa_balance(9600, 0.04), 9984)
  expect_equal(hysa_balance(9600, 0.04, years = 5), 9600 * 1.04^5)
  expect_equal(hysa_balance(9600, 0.04, years = 0), 9600)
})
