# future value of 1 paid each period: ((1 + rate)^periods - 1) / rate,
# with the 0% limit (periods) where rate is 0
#' @noRd
annuity_factor <- function(rate, periods) {
  out <- ((1 + rate)^periods - 1) / rate
  zero <- rep_len(rate == 0, length(out))
  out[zero] <- rep_len(periods, length(out))[zero]
  out
}
