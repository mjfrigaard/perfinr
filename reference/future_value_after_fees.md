# Future value of monthly contributions after fund fees

Subtracts the expense ratio from the yearly return, then compounds
monthly contributions. From the *Index funds* chapter.

## Usage

``` r
future_value_after_fees(contribution, annual_return, expense_ratio, years)
```

## Arguments

- contribution:

  Monthly contribution.

- annual_return:

  Yearly return before fees, as a decimal.

- expense_ratio:

  Yearly expense ratio, as a decimal.

- years:

  Number of years.

## Value

A numeric vector of ending balances.

## See also

Other index funds:
[`yearly_fee()`](https://mjfrigaard.github.io/perfinr/reference/yearly_fee.md)

## Examples

``` r
# $300/month for 40 years at 7%, index fund vs. active fund
index_fund <- future_value_after_fees(300, 0.07, 0.0004, 40)
active_fund <- future_value_after_fees(300, 0.07, 0.01, 40)
index_fund - active_fund
#> [1] 181207.5
```
