test_that("monthly_contribution_needed() rounds up to whole dollars", {
  expect_equal(monthly_contribution_needed(9600, 1200, 18), 467)
})

test_that("monthly_contribution_needed() returns 0 when already funded", {
  expect_equal(monthly_contribution_needed(9600, c(1200, 12000), 12), c(700, 0))
})

test_that("monthly_contribution_needed() requires positive months", {
  expect_error(monthly_contribution_needed(9600, 1200, 0), "`months` must be greater than 0")
})
