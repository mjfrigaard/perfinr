# error unless every value of `x` is a number greater than 0
#' @noRd
check_positive <- function(x, arg = deparse(substitute(x))) {
  check_numeric(x, arg)
  if (any(x <= 0)) {
    stop(sprintf("`%s` must be greater than 0.", arg), call. = FALSE)
  }
  invisible(x)
}
