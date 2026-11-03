test_that("rule_of_72() divides 72 by the percent return", {
  expect_equal(rule_of_72(7), 72 / 7)
  expect_equal(rule_of_72(c(6, 8)), c(12, 9))
})

test_that("rule_of_72() requires a positive return", {
  expect_error(rule_of_72(0), "`annual_return_pct` must be greater than 0")
})
