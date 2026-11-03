test_that("ef_growth() compounds by fraction of a year", {
  expect_equal(ef_growth(9600, 0.04, 12), 9984)
  expect_equal(ef_growth(10000, 0.21, 6), 11000)
  expect_equal(ef_growth(9600, 0, 24), 9600)
})
