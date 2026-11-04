test_that("pay_periods_per_year() counts the paychecks in a year", {
  cases <- c(weekly = 52L, biweekly = 26L, semimonthly = 24L, monthly = 12L)
  for (f in names(cases)) expect_identical(pay_periods_per_year(f), cases[[f]], info = f)
})

test_that("pay_period_days() and pay_frequency_from_days() are inverses", {
  for (f in c("weekly", "biweekly", "semimonthly", "monthly")) {
    expect_equal(pay_frequency_from_days(pay_period_days(f)), f, info = f)
  }
  expect_equal(pay_frequency_from_days(c(7, 10, NA)), c("weekly", NA, NA))
})

test_that("pay_period_full_time_hours() assumes a 40-hour week", {
  expect_equal(pay_period_full_time_hours("weekly"), 40)
  expect_equal(pay_period_full_time_hours("biweekly"), 80)
  expect_equal(pay_period_full_time_hours("semimonthly"), 15 / 7 * 40)
})

test_that("the pay frequency helpers reject unknown frequencies", {
  expect_error(pay_periods_per_year("daily"), "must be one of")
  expect_error(pay_period_days(c("weekly", "monthly")), "must be one of")
  expect_error(pay_frequency_from_days("14"), "numeric")
})
