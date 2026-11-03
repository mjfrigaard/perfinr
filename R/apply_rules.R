#' Categorize transactions with keyword rules
#'
#' Matches each rule's `Pattern` (a regular expression, case ignored)
#' against the transaction `Description`. The first matching rule wins;
#' unmatched rows get `"Other"`. From the *Tracking spending* chapter.
#'
#' @param df A data frame of transactions with a character `Description`
#'   column.
#' @param rules A data frame with character `Pattern` and `Category`
#'   columns, in priority order.
#'
#' @return `df` with a `Category` column added (or replaced).
#'
#' @family tracking spending
#'
#' @examples
#' transactions <- data.frame(
#'   Description = c("SAFEWAY #123", "NETFLIX.COM", "SHELL OIL", "ATM FEE")
#' )
#' rules <- data.frame(
#'   Pattern = c("safeway|trader joe", "netflix|spotify", "shell|chevron"),
#'   Category = c("Groceries", "Subscriptions", "Gas")
#' )
#' apply_rules(transactions, rules)
#'
#' @export
apply_rules <- function(df, rules) {
  stopifnot(
    "`df` must be a data frame" = is.data.frame(df),
    "`df` must have a `Description` column" = "Description" %in% names(df),
    "`rules` must be a data frame" = is.data.frame(rules),
    "`rules` must have `Pattern` and `Category` columns" =
      all(c("Pattern", "Category") %in% names(rules))
  )
  df$Category <- rep("Other", nrow(df))
  matched <- rep(FALSE, nrow(df))
  for (i in seq_len(nrow(rules))) {
    hits <- grepl(rules$Pattern[i], df$Description, ignore.case = TRUE) & !matched
    df$Category[hits] <- rules$Category[i]
    matched <- matched | hits
  }
  df
}
