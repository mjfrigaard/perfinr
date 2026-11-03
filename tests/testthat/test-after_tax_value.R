test_that("after_tax_value() taxes then grows the contribution", {
  expect_equal(after_tax_value(1000, 0.12, 0.07, 40), 13177.52, tolerance = 1e-6)
  expect_equal(after_tax_value(1000, 0.22, 0.07, 40), 11680.08, tolerance = 1e-6)
  expect_equal(after_tax_value(1000, 0.25, 0, 10), 750)
})
