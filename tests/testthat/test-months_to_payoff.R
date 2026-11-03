test_that("months_to_payoff() matches the amortization formula", {
  expect_equal(months_to_payoff(5000, 100, 0.22), 136.779, tolerance = 1e-6)
})

test_that("months_to_payoff() handles a 0% APR", {
  expect_equal(months_to_payoff(5000, 100, 0), 50)
  expect_equal(months_to_payoff(5000, 100, c(0, 0.22)), c(50, 136.779), tolerance = 1e-6)
})

test_that("months_to_payoff() errors when the payment only covers interest", {
  expect_error(months_to_payoff(5000, 50, 0.22), "must be larger than the monthly interest")
})
