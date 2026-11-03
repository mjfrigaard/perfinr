test_that("fixed_cost_ratio() returns a percent", {
  expect_equal(fixed_cost_ratio(1800, 3200), 56.25)
})

test_that("fixed_cost_ratio() requires positive take home pay", {
  expect_error(fixed_cost_ratio(1800, 0), "`take_home` must be greater than 0")
})
