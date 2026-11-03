test_that("payoff_vs_invest() compares rates", {
  expect_equal(payoff_vs_invest(0.05, 0.07), "Invest the difference")
  expect_equal(payoff_vs_invest(0.08, 0.07), "Pay off the debt")
  expect_equal(payoff_vs_invest(0.07, 0.07), "Roughly a wash; do both")
})

test_that("payoff_vs_invest() requires single values", {
  expect_error(payoff_vs_invest(c(0.05, 0.08), 0.07), "`loan_rate` must be a single number")
})
