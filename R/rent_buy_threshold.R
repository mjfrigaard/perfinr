#' Monthly rent that matches the unrecoverable cost of owning
#'
#' The 5% rule: yearly unrecoverable costs of owning (property tax,
#' maintenance, cost of capital) are about 5% of the home value. Rent below
#' this monthly amount favors renting. From the *Major purchases* chapter.
#'
#' @param home_value Price of the home.
#' @param unrecoverable_rate Yearly unrecoverable cost as a share of home
#'   value. Defaults to 0.05.
#'
#' @return A numeric vector of monthly rent thresholds.
#'
#' @family major purchases
#'
#' @examples
#' # $500,000 home at the standard 5% rate
#' rent_buy_threshold(home_value = 500000)
#'
#' @export
rent_buy_threshold <- function(home_value, unrecoverable_rate = 0.05) {
  check_numeric(home_value)
  check_numeric(unrecoverable_rate)
  (home_value * unrecoverable_rate) / 12
}
