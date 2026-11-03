debts <- data.frame(
  name = c("Card A", "Card B", "Card C"),
  balance = c(1000, 5000, 2000),
  apr = c(0.18, 0.24, 0.15)
)

test_that("order_snowball() puts the smallest balance first", {
  expect_equal(order_snowball(debts)$name, c("Card A", "Card C", "Card B"))
})

test_that("order_snowball() requires a balance column", {
  expect_error(order_snowball(debts[c("name", "apr")]), "must have a `balance` column")
})
