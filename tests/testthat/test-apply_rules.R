transactions <- data.frame(
  Description = c("SAFEWAY #123", "NETFLIX.COM", "Shell Oil", "ATM FEE")
)
rules <- data.frame(
  Pattern = c("safeway", "netflix", "shell"),
  Category = c("Groceries", "Subscriptions", "Gas")
)

test_that("apply_rules() categorizes by pattern, ignoring case", {
  out <- apply_rules(transactions, rules)
  expect_equal(out$Category, c("Groceries", "Subscriptions", "Gas", "Other"))
})

test_that("apply_rules() uses the first matching rule", {
  overlap <- data.frame(Pattern = c("oil", "shell"), Category = c("Auto", "Gas"))
  expect_equal(apply_rules(transactions, overlap)$Category[3], "Auto")
})

test_that("apply_rules() handles empty inputs", {
  expect_equal(apply_rules(transactions, rules[0, ])$Category, rep("Other", 4))
  expect_equal(nrow(apply_rules(transactions[0, , drop = FALSE], rules)), 0)
})

test_that("apply_rules() requires the expected columns", {
  expect_error(apply_rules(data.frame(x = 1), rules), "must have a `Description` column")
  expect_error(apply_rules(transactions, data.frame(Pattern = "a")), "`Pattern` and `Category`")
})
