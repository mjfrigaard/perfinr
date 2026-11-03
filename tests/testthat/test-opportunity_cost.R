test_that("opportunity_cost() compounds yearly", {
  expect_equal(opportunity_cost(1000, 0.07, 30), 7612.255, tolerance = 1e-6)
  expect_equal(opportunity_cost(1000, 0, 30), 1000)
  expect_equal(opportunity_cost(100, 0.10, c(1, 2)), c(110, 121))
})
