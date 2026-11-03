test_that("subscription_opportunity_cost() invests the yearly cost", {
  expect_equal(subscription_opportunity_cost(15, 30), 17002.94, tolerance = 1e-6)
  expect_equal(subscription_opportunity_cost(10, 2, rate = 0.10), 252)
})

test_that("subscription_opportunity_cost() handles a 0% rate", {
  expect_equal(subscription_opportunity_cost(15, 10, rate = 0), 1800)
})
