test_that("total_interest() subtracts principal from total payments", {
  expect_equal(total_interest(340.98, 72, 20000), 4550.56)
  expect_equal(total_interest(478.92, 48, 20000), 2988.16)
})
