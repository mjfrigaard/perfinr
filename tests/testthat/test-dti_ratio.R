test_that("dti_ratio() returns a percent", {
  expect_equal(dti_ratio(1061, 3750), 1061 / 3750 * 100)
  expect_equal(dti_ratio(1500, 5000), 30)
})

test_that("dti_ratio() requires positive income", {
  expect_error(dti_ratio(1061, 0), "`gross_monthly_income` must be greater than 0")
})
