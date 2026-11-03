test_that("percent_of_income() returns a percent", {
  expect_equal(percent_of_income(1500, 5000), 30)
  expect_equal(percent_of_income(c(500, 2500), 5000), c(10, 50))
})

test_that("percent_of_income() requires positive income", {
  expect_error(percent_of_income(1500, 0), "`income` must be greater than 0")
})
