test_that("employer_match() caps the match at the limit", {
  expect_equal(employer_match(45000, 0.06, 0.06, 0.50), 1350)
  expect_equal(employer_match(45000, 0.03, 0.06, 0.50), 675)
  expect_equal(employer_match(45000, 0.10, 0.06, 0.50), 1350)
})

test_that("employer_match() is vectorized", {
  expect_equal(employer_match(45000, c(0.03, 0.10), 0.06, 0.50), c(675, 1350))
})
