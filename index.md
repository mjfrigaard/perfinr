# perfinr

`perfinr` holds the tested, documented versions of the R functions in
[Personal Finance: a field
manual](https://mjfrigaard.github.io/fm-finance/). The book builds each
calculation from scratch so you can see how the formula works. This
package is for readers who want those same functions without copying
code out of a chapter. It also suits anyone who wants small, transparent
personal finance calculations in base R. The full documentation lives on
the [pkgdown site](https://mjfrigaard.github.io/perfinr/).

## Installation

`perfinr` isn’t on CRAN. Install the development version from
[GitHub](https://github.com/mjfrigaard/perfinr):

``` r

# install.packages("pak")
pak::pak("mjfrigaard/perfinr")
```

`perfinr` has no dependencies beyond base R.

## Example

The book’s first job example takes home \$3,200 a month and pays \$960
in rent. The question is how much of that paycheck rent claims.

Think of take home pay as a single bar. Rent is one slice of it, and the
rest of the bar is what’s left for everything else:

![Bar model: one horizontal bar for \$3,200 of monthly take home pay,
split into a vermillion slice labeled Rent \$960 and a bluish green
slice labeled Remaining \$2,240. The rent slice covers just under a
third of the bar.](reference/figures/budgeting-pct-bar-model.png)

[`percent_of_income()`](https://mjfrigaard.github.io/perfinr/reference/percent_of_income.md)
divides the width of the slice by the width of the whole bar, then
multiplies by 100:

``` r

library(perfinr)
rent_share <- percent_of_income(expense = 960, income = 3200)
rent_share
#> [1] 30
```

Rent takes 30% of take home pay.

### One call, every category

Most functions are vectorized, so one call can compare several options.
The code below passes every category from the book’s zero based budget
to
[`percent_of_income()`](https://mjfrigaard.github.io/perfinr/reference/percent_of_income.md)
at once:

``` r

budget <- data.frame(
  category = c("rent", "groceries", "transport", "investments", "savings", "fun money", "other"),
  amount = c(960, 350, 300, 320, 320, 450, 500)
)
budget$percent <- round(percent_of_income(expense = budget$amount, income = 3200), 1)
budget
#>      category amount percent
#> 1        rent    960    30.0
#> 2   groceries    350    10.9
#> 3   transport    300     9.4
#> 4 investments    320    10.0
#> 5     savings    320    10.0
#> 6   fun money    450    14.1
#> 7       other    500    15.6
```

Together the seven categories claim 100% of take home pay, so every
dollar has a job.

## Conventions

The functions keep the names, arguments, and defaults from the book, so
code from a chapter runs unchanged after
[`library(perfinr)`](https://mjfrigaard.github.io/perfinr/). A few rules
hold across the whole package:

| Rule | Example |
|----|----|
| Rates and returns are decimals | `0.07` is 7% |
| [`rule_of_72()`](https://mjfrigaard.github.io/perfinr/reference/rule_of_72.md) is the exception and takes a percent | `rule_of_72(7)` |
| Ratio functions return percents | `percent_of_income(960, 3200)` returns 30, not 0.3 |
| Most functions are vectorized | `future_value(10000, 0.07, c(10, 20))` returns two values |
| A few functions take single values only | [`income_tax()`](https://mjfrigaard.github.io/perfinr/reference/income_tax.md), [`raise_kept()`](https://mjfrigaard.github.io/perfinr/reference/raise_kept.md), [`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md), [`first_payment_split()`](https://mjfrigaard.github.io/perfinr/reference/first_payment_split.md) |
| A 0% rate returns the no interest answer | `mortgage_payment(120000, 0, 30)` is `120000 / 360` |
| Bad inputs stop early with an error | text, `NA`, or a zero where a divisor is needed |

## Vignettes

The [Get
started](https://mjfrigaard.github.io/perfinr/articles/perfinr.html)
vignette covers the conventions in more detail and takes a short tour of
the book. Each chapter of the book also has its own vignette. It reuses
the chapter’s numbers and bar models, then answers the same questions
with `perfinr` functions. The chapter vignettes are grouped by book
part.

Foundations:

- [Income](https://mjfrigaard.github.io/perfinr/articles/income.html)
- [Tracking
  Spending](https://mjfrigaard.github.io/perfinr/articles/tracking-spending.html)
- [Budgeting](https://mjfrigaard.github.io/perfinr/articles/budgeting.html)
- [Managing
  Debt](https://mjfrigaard.github.io/perfinr/articles/managing-debt.html)
- [Emergency
  Fund](https://mjfrigaard.github.io/perfinr/articles/emergency-fund.html)

The vignettes for the other four parts are still in progress.

Savings:

- Savings Strategies
- High-Yield Savings Accounts
- Automating Savings

Investing:

- Investing Basics
- Retirement Accounts
- Index Funds
- Asset Allocation

Taxes and insurance:

- Taxes
- Insurance

Planning:

- Financial Goals
- Major Purchases
- Estate Planning

Every function, its arguments, and its examples are listed in the
[function reference](https://mjfrigaard.github.io/perfinr/reference/).
