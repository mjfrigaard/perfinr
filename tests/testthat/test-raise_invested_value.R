test_that("raise_invested_value() compounds monthly", {
  expect_equal(raise_invested_value(200, 0.5, 0.07, 30), 121997.10, tolerance = 1e-6)
})

test_that("raise_invested_value() handles a 0% return", {
  expect_equal(raise_invested_value(200, 0.5, 0, 10), 12000)
})
