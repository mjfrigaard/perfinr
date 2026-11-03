test_that("to_annual() converts each period", {
  expect_equal(to_annual(5, "daily"), 1825)
  expect_equal(to_annual(100, "weekly"), 5200)
  expect_equal(to_annual(1500, "monthly"), 18000)
})

test_that("to_annual() defaults to daily", {
  expect_equal(to_annual(1), 365)
})

test_that("to_annual() rejects unknown periods", {
  expect_error(to_annual(5, "yearly"), "should be one of")
})
