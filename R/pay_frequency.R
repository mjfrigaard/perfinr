# Periods per year and nominal days per period for each pay frequency.
#' @noRd
pay_frequencies <- function() {
  data.frame(
    frequency = c("weekly", "biweekly", "semimonthly", "monthly"),
    per_year = c(52, 26, 24, 12),
    days = c(7, 14, 15, 30),
    stringsAsFactors = FALSE
  )
}

# error unless `frequency` is one recognized pay frequency
#' @noRd
check_frequency <- function(frequency) {
  ok <- pay_frequencies()$frequency
  if (!is.character(frequency) || length(frequency) != 1 || !frequency %in% ok) {
    stop(
      sprintf("`frequency` must be one of %s.", paste0('"', ok, '"', collapse = ", ")),
      call. = FALSE
    )
  }
  invisible(frequency)
}

#' Paychecks in a year for a pay frequency
#'
#' A biweekly schedule pays 26 times a year, not 24, so two months a year
#' bring a third paycheck. Use this count, not `365 / pay_period_days()`, to
#' turn one paycheck into a yearly figure.
#'
#' @param frequency One of `"weekly"`, `"biweekly"`, `"semimonthly"`, or
#'   `"monthly"`.
#'
#' @return An integer number of pay periods.
#'
#' @family income
#'
#' @examples
#' pay_periods_per_year("biweekly")
#' 2500 * pay_periods_per_year("biweekly") # a year of $2,500 paychecks
#'
#' @export
pay_periods_per_year <- function(frequency) {
  check_frequency(frequency)
  f <- pay_frequencies()
  as.integer(f$per_year[f$frequency == frequency])
}

#' Days in one pay period
#'
#' The nominal length of a pay period, for display. `"semimonthly"` (15) and
#' `"monthly"` (30) are round numbers, so don't annualize with them; use
#' [pay_periods_per_year()] instead.
#'
#' @inheritParams pay_periods_per_year
#'
#' @return A number of days: `7`, `14`, `15`, or `30`.
#'
#' @family income
#'
#' @examples
#' pay_period_days("biweekly")
#'
#' @export
pay_period_days <- function(frequency) {
  check_frequency(frequency)
  f <- pay_frequencies()
  f$days[f$frequency == frequency]
}

#' The pay frequency for a period length in days
#'
#' The inverse of [pay_period_days()]. Each frequency has its own day count,
#' so the match is never ambiguous.
#'
#' @param days A day count, as [pay_period_days()] returns.
#'
#' @return The frequency, or `NA_character_` when `days` is `NA` or matches
#'   none.
#'
#' @family income
#'
#' @examples
#' pay_frequency_from_days(14)
#' pay_frequency_from_days(10)
#'
#' @export
pay_frequency_from_days <- function(days) {
  if (!is.numeric(days) && !all(is.na(days))) {
    stop("`days` must be a numeric vector.", call. = FALSE)
  }
  f <- pay_frequencies()
  f$frequency[match(days, f$days)]
}

#' Full-time hours in one pay period
#'
#' Assumes a 40-hour week, so the result depends on the frequency alone.
#'
#' @inheritParams pay_periods_per_year
#'
#' @return Hours: `40`, `80`, about `85.7`, or about `171.4`.
#'
#' @family income
#'
#' @examples
#' pay_period_full_time_hours("biweekly")
#'
#' @export
pay_period_full_time_hours <- function(frequency) {
  pay_period_days(frequency) / 7 * 40
}
