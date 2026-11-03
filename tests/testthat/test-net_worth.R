test_that("net_worth() subtracts total debts from total assets", {
  assets <- c(k401 = 12000, roth_ira = 6000, savings = 8000, car = 9000)
  debts <- c(car_loan = 6000, credit_card = 1000)
  expect_equal(net_worth(assets, debts), 28000)
})

test_that("net_worth() handles no debts", {
  expect_equal(net_worth(c(100, 200), numeric(0)), 300)
})

test_that("net_worth() rejects non-numeric input", {
  expect_error(net_worth(c("a", "b"), 0), "`assets` must be a numeric")
})
