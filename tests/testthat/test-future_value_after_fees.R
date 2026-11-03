test_that("future_value_after_fees() subtracts fees from the return", {
  expect_equal(future_value_after_fees(300, 0.07, 0.0004, 40), 778654.71, tolerance = 1e-6)
  expect_equal(future_value_after_fees(300, 0.07, 0.01, 40), 597447.22, tolerance = 1e-6)
})

test_that("future_value_after_fees() handles fees equal to the return", {
  expect_equal(future_value_after_fees(300, 0.01, 0.01, 10), 36000)
})
