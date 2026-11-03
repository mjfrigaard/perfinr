# Categorize transactions with keyword rules

Matches each rule's `Pattern` (a regular expression, case ignored)
against the transaction `Description`. The first matching rule wins;
unmatched rows get `"Other"`. From the *Tracking spending* chapter.

## Usage

``` r
apply_rules(df, rules)
```

## Arguments

- df:

  A data frame of transactions with a character `Description` column.

- rules:

  A data frame with character `Pattern` and `Category` columns, in
  priority order.

## Value

`df` with a `Category` column added (or replaced).

## See also

Other tracking spending:
[`subscription_opportunity_cost()`](https://mjfrigaard.github.io/perfinr/reference/subscription_opportunity_cost.md)

## Examples

``` r
transactions <- data.frame(
  Description = c("SAFEWAY #123", "NETFLIX.COM", "SHELL OIL", "ATM FEE")
)
rules <- data.frame(
  Pattern = c("safeway|trader joe", "netflix|spotify", "shell|chevron"),
  Category = c("Groceries", "Subscriptions", "Gas")
)
apply_rules(transactions, rules)
#>    Description      Category
#> 1 SAFEWAY #123     Groceries
#> 2  NETFLIX.COM Subscriptions
#> 3    SHELL OIL           Gas
#> 4      ATM FEE         Other
```
