test_that("months_to_ef_goal() rounds up to whole months", {
  expect_equal(months_to_ef_goal(9600, 1200, 400), 21)
  expect_equal(months_to_ef_goal(1000, 0, 300), 4)
})

test_that("months_to_ef_goal() returns 0 when already funded", {
  expect_equal(months_to_ef_goal(9600, 10000, 400), 0)
})

test_that("months_to_ef_goal() is vectorized", {
  expect_equal(months_to_ef_goal(9600, c(1200, 9600), 400), c(21, 0))
})

test_that("months_to_ef_goal() requires a positive contribution", {
  expect_error(months_to_ef_goal(9600, 1200, 0), "`monthly_contribution` must be greater than 0")
})
