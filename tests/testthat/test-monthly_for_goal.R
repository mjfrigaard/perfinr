test_that("monthly_for_goal() matches the sinking fund formula", {
  expect_equal(monthly_for_goal(15000, 0.04, 60), 226.2478, tolerance = 1e-6)
})

test_that("monthly_for_goal() handles a 0% rate", {
  expect_equal(monthly_for_goal(15000, 0, 60), 250)
  expect_equal(monthly_for_goal(15000, c(0, 0.04), 60), c(250, 226.2478), tolerance = 1e-6)
})

test_that("monthly_for_goal() requires positive months", {
  expect_error(monthly_for_goal(15000, 0.04, 0), "`months` must be greater than 0")
})
