#' Share of assets with a named beneficiary
#'
#' From the *Estate planning* chapter.
#'
#' @param with_beneficiary Numeric vector of asset values that name a
#'   beneficiary (or pay on death).
#' @param without_beneficiary Numeric vector of asset values that do not.
#'
#' @return A single number between 0 and 1.
#'
#' @family estate planning
#'
#' @examples
#' with_beneficiary <- c(k401 = 12000, roth_ira = 6000, life_insurance = 45000, savings_pod = 8000)
#' without_beneficiary <- c(car = 9000)
#' beneficiary_share(with_beneficiary, without_beneficiary)
#'
#' @export
beneficiary_share <- function(with_beneficiary, without_beneficiary) {
  check_numeric(with_beneficiary)
  check_numeric(without_beneficiary)
  total <- sum(with_beneficiary) + sum(without_beneficiary)
  if (total <= 0) {
    stop("Total assets must be greater than 0.", call. = FALSE)
  }
  sum(with_beneficiary) / total
}
