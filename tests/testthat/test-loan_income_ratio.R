test_that("loan_income_ratio() divides loans by salary", {
  expect_equal(loan_income_ratio(45000, 42000), 45000 / 42000)
  expect_equal(loan_income_ratio(c(21000, 42000), 42000), c(0.5, 1))
})

test_that("loan_income_ratio() requires a positive salary", {
  expect_error(loan_income_ratio(45000, 0), "`expected_salary` must be greater than 0")
})
