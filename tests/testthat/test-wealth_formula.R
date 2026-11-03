test_that("wealth_formula() returns the future value of yearly savings", {
  expect_equal(wealth_formula(45000, 0.20, 0.07, 30), 850147.08, tolerance = 1e-6)
  expect_equal(wealth_formula(1000, 1, 0.10, 2), 2100)
})

test_that("wealth_formula() handles a 0% return", {
  expect_equal(wealth_formula(45000, 0.20, 0, 30), 270000)
})
