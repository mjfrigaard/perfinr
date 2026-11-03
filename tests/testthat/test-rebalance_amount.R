test_that("rebalance_amount() returns amount to buy or sell", {
  expect_equal(rebalance_amount(0.80, 7600, 5600), 480)
  expect_equal(rebalance_amount(0.50, 1000, 700), -200)
})

test_that("rebalance_amount() rejects missing values", {
  expect_error(rebalance_amount(NA_real_, 1000, 500), "`target_pct` must be a numeric")
})
