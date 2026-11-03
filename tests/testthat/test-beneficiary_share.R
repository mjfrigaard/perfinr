test_that("beneficiary_share() returns a share of total assets", {
  with <- c(k401 = 12000, roth_ira = 6000, life_insurance = 45000, savings_pod = 8000)
  expect_equal(beneficiary_share(with, c(car = 9000)), 0.8875)
  expect_equal(beneficiary_share(100, numeric(0)), 1)
})

test_that("beneficiary_share() requires positive total assets", {
  expect_error(beneficiary_share(0, 0), "Total assets must be greater than 0")
})
