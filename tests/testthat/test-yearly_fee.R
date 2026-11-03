test_that("yearly_fee() multiplies balance by expense ratio", {
  expect_equal(yearly_fee(10000, c(0.0004, 0.01)), c(4, 100))
})
