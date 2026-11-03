test_that("income_tax() applies the 2026 brackets", {
  expect_equal(income_tax(45000), 3220)
  expect_equal(income_tax(66000), 5740)
  expect_equal(income_tax(68000), 6130)
})

test_that("income_tax() is 0 below the deduction", {
  expect_equal(income_tax(10000), 0)
  expect_equal(income_tax(30000, deduction = 30000), 0)
})

test_that("income_tax() requires a single income", {
  expect_error(income_tax(c(45000, 50000)), "`income` must be a single number")
})
