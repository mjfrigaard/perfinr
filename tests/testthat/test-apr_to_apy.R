test_that("apr_to_apy() compounds the APR", {
  expect_equal(apr_to_apy(0.24), 0.2711489, tolerance = 1e-6)
  expect_equal(apr_to_apy(0.12, periods_per_year = 1), 0.12)
  expect_equal(apr_to_apy(0.12, periods_per_year = 12), 1.01^12 - 1)
})

test_that("apr_to_apy() requires positive periods", {
  expect_error(apr_to_apy(0.24, 0), "`periods_per_year` must be greater than 0")
})
