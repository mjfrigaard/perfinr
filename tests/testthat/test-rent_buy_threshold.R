test_that("rent_buy_threshold() applies the 5% rule", {
  expect_equal(rent_buy_threshold(500000), 500000 * 0.05 / 12)
  expect_equal(rent_buy_threshold(120000, unrecoverable_rate = 0.04), 400)
})
