test_that("real_return() adjusts for inflation", {
  expect_equal(real_return(0.07, 0.03), 1.07 / 1.03 - 1)
  expect_equal(real_return(0.03, 0.03), 0)
})
