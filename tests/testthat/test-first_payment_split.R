test_that("first_payment_split() splits the first payment", {
  out <- first_payment_split(480000, 0.06, 30)
  expect_s3_class(out, "data.frame")
  expect_named(out, c("payment", "interest", "principal", "pct_interest"))
  expect_equal(out$interest, 2400)
  expect_equal(out$principal, 477.8425, tolerance = 1e-6)
  expect_equal(out$pct_interest, 2400 / 2877.8425 * 100, tolerance = 1e-6)
})

test_that("first_payment_split() requires single values", {
  expect_error(first_payment_split(c(1, 2), 0.06, 30), "`principal` must be a single number")
})
