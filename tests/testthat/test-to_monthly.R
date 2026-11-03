test_that("to_monthly() converts each period", {
  expect_equal(to_monthly(5, "daily"), 152.2)
  expect_equal(to_monthly(100, "weekly"), 433)
  expect_equal(to_monthly(60000, "annual"), 5000)
})

test_that("to_monthly() rejects unknown periods", {
  expect_error(to_monthly(5, "monthly"), "should be one of")
})
