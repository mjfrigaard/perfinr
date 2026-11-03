test_that("savings_rate() returns a percent of income", {
  expect_equal(savings_rate(3200, 2720), 15)
  expect_equal(savings_rate(3200, 3600), -12.5)
})

test_that("savings_rate() requires positive income", {
  expect_error(savings_rate(0, 100), "`income` must be greater than 0")
})
