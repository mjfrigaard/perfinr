#' Yearly employer retirement match
#'
#' The employer matches `match_rate` of contributions up to
#' `match_limit_pct` of salary. From the *Retirement accounts* chapter.
#'
#' @param salary Yearly salary.
#' @param contribution_pct Share of salary you contribute, as a decimal.
#' @param match_limit_pct Share of salary the employer will match, as a
#'   decimal.
#' @param match_rate Employer match per dollar contributed, as a decimal
#'   (`0.5` is 50 cents per dollar).
#'
#' @return A numeric vector of yearly match amounts.
#'
#' @family retirement accounts
#'
#' @examples
#' # $45,000 salary, 6% contribution, 50% match on the first 6%
#' employer_match(salary = 45000, contribution_pct = 0.06,
#'                match_limit_pct = 0.06, match_rate = 0.50)
#'
#' # same job, but only contributing 3%
#' employer_match(salary = 45000, contribution_pct = 0.03,
#'                match_limit_pct = 0.06, match_rate = 0.50)
#'
#' @export
employer_match <- function(salary, contribution_pct, match_limit_pct, match_rate) {
  check_numeric(salary)
  check_numeric(contribution_pct)
  check_numeric(match_limit_pct)
  check_numeric(match_rate)
  salary * pmin(contribution_pct, match_limit_pct) * match_rate
}
