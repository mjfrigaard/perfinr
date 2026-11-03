debts <- data.frame(
  name = c("Card A", "Card B", "Card C"),
  balance = c(1000, 5000, 2000),
  apr = c(0.18, 0.24, 0.15)
)

test_that("order_avalanche() puts the highest APR first", {
  expect_equal(order_avalanche(debts)$name, c("Card B", "Card A", "Card C"))
})

test_that("order_avalanche() requires an apr column", {
  expect_error(order_avalanche(debts[c("name", "balance")]), "must have an `apr` column")
  expect_error(order_avalanche(list(apr = 1)), "must be a data frame")
})
