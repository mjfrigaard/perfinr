test_that("months_to_fund() rounds up to whole months", {
  expect_equal(months_to_fund(3000, 600), 5)
  expect_equal(months_to_fund(3000, 700), 5)
  expect_equal(months_to_fund(c(3000, 12000), 600), c(5, 20))
})

test_that("months_to_fund() requires a positive monthly amount", {
  expect_error(months_to_fund(3000, -1), "`monthly` must be greater than 0")
})
