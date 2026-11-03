test_that("break_even_years() divides deductible gap by savings", {
  expect_equal(break_even_years(1000, 500, 150), 500 / 150)
  expect_equal(break_even_years(2000, 500, c(150, 300)), c(10, 5))
})

test_that("break_even_years() requires positive savings", {
  expect_error(break_even_years(1000, 500, 0), "`yearly_savings` must be greater than 0")
})
