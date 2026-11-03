test_that("portfolio_return() blends stock and bond returns", {
  expect_equal(
    portfolio_return(c(1, 0.8, 0.6), stock_return = 0.10, bond_return = 0.04),
    c(0.10, 0.088, 0.076)
  )
  expect_equal(portfolio_return(0.8, -0.40, 0), -0.32)
})

test_that("portfolio_return() rejects non-numeric input", {
  expect_error(portfolio_return("0.8", 0.1, 0.04), "`stock_pct` must be a numeric")
})
