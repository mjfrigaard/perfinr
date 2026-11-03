test_that("months_to_break_even() divides cost by savings", {
  expect_equal(months_to_break_even(600, 50), 12)
  expect_equal(months_to_break_even(100, 30), 100 / 30)
})

test_that("months_to_break_even() requires positive savings", {
  expect_error(months_to_break_even(600, 0), "`monthly_savings` must be greater than 0")
})
