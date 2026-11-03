test_that("plan_cost() caps medical costs at the out of pocket max", {
  expect_equal(plan_cost(100, c(300, Inf), oop_max = 3000), c(1500, 4200))
  expect_equal(
    plan_cost(40, c(300, Inf), oop_max = 5000, employer_hsa = 500),
    c(280, 4980)
  )
})

test_that("plan_cost() rejects missing values", {
  expect_error(plan_cost(100, NA, 3000), "`medical_cost` must be a numeric")
})
