test_that("raise_kept() subtracts the extra tax", {
  expect_equal(raise_kept(66000, 2000), 1610)
  expect_equal(raise_kept(10000, 1000), 1000)
})
