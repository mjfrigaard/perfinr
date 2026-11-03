# error unless `x` is a numeric vector with no missing values
#' @noRd
check_numeric <- function(x, arg = deparse(substitute(x))) {
  if (!is.numeric(x) || anyNA(x)) {
    stop(
      sprintf("`%s` must be a numeric vector with no missing values.", arg),
      call. = FALSE
    )
  }
  invisible(x)
}
