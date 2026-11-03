# perfinr

`perfinr` holds the R functions from [Personal Finance: a field
manual](https://mjfrigaard.github.io/fm-finance/). Each chapter of the
book builds its calculations from scratch so you can see how the formula
works. This package collects those same functions, documents them, and
tests them, so you can use them without copying code out of the book. In
this vignette I’ll cover how to install `perfinr` and the conventions
every function follows. Then we’ll take a short tour with one example
from each part of the book.

## Installation

`perfinr` isn’t on CRAN. Install the development version from GitHub:

``` r

# install.packages("pak")
pak::pak("mjfrigaard/perfinr")
```

`perfinr` has no dependencies beyond base R.

## Conventions

The functions keep the names, arguments, and defaults from the book, so
code from a chapter runs unchanged after
[`library(perfinr)`](https://mjfrigaard.github.io/perfinr/). A few rules
hold across the whole package:

| Rule | Example |
|----|----|
| Rates and returns are decimals | `0.07` is 7% |
| The one exception is [`rule_of_72()`](https://mjfrigaard.github.io/perfinr/reference/rule_of_72.md), which takes a percent | `rule_of_72(7)` |
| Ratio functions return percents | `percent_of_income(1500, 5000)` returns `30`, not `0.30` |
| Most functions are vectorized | `future_value(10000, 0.07, c(10, 20))` returns two values |
| A few functions take single values only | [`income_tax()`](https://mjfrigaard.github.io/perfinr/reference/income_tax.md), [`raise_kept()`](https://mjfrigaard.github.io/perfinr/reference/raise_kept.md), [`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md), [`first_payment_split()`](https://mjfrigaard.github.io/perfinr/reference/first_payment_split.md) |
| A 0% rate returns the no interest answer | `mortgage_payment(120000, 0, 30)` is `120000 / 360` |
| Bad inputs stop with an error | text, `NA`, or a zero where a divisor is needed |

Vectorized functions make it easy to compare options side by side. Here
is the same \$10,000 at 7% over four horizons:

``` r

data.frame(
  years = c(5, 10, 20, 30),
  value = future_value(present_value = 10000, rate = 0.07, years = c(5, 10, 20, 30))
)
#>   years    value
#> 1     5 14025.52
#> 2    10 19671.51
#> 3    20 38696.84
#> 4    30 76122.55
```

When an input doesn’t make sense, the function says which argument is
wrong instead of returning `Inf` or `NaN`:

``` r

percent_of_income(expense = 1500, income = 0)
#> Error:
#> ! `income` must be greater than 0.
```

## How the vignettes map to the book

There is one vignette for each chapter of the book. Each one takes the
chapter’s examples (with the same numbers), shows the bar model, and
then answers the question with perfinr functions.

``` mermaid
%%{init: {'theme': 'base', 'themeVariables': { 'fontFamily': 'monospace', "darkMode":false}}}%%
flowchart TD
    Book(["Personal Finance: a field manual"])

    subgraph Foundations["<strong>Foundations</strong>"]
        F1("Income")
        F2("Tracking Spending")
        F3("Budgeting")
        F4("Managing Debt")
        F5("Emergency Fund")
    end

    subgraph Savings["<strong>Savings</strong>"]
        S1("Savings Strategies")
        S2("High-Yield Savings Accounts")
        S3("Automating Savings")
    end

    subgraph Investing["<strong>Investing</strong>"]
        I1("Investing Basics")
        I2("Retirement Accounts")
        I3("Index Funds")
        I4("Asset Allocation")
    end

    subgraph TaxIns["<strong>Taxes and insurance</strong>"]
        T1("Taxes")
        T2("Insurance")
    end

    subgraph Planning["<strong>Planning</strong>"]
        P1("Financial Goals")
        P2("Major Purchases")
        P3("Estate Planning")
    end

    Book --> Foundations
    Book --> Savings
    Book --> Investing
    Book --> TaxIns
    Book --> Planning

    style Book fill:#FFFFFF,color:#000000,stroke:#333
    style Foundations fill:#FFFFFF,color:#000000,stroke:#999
    style Savings fill:#FFFFFF,color:#000000,stroke:#999
    style Investing fill:#FFFFFF,color:#000000,stroke:#999
    style TaxIns fill:#FFFFFF,color:#000000,stroke:#999
    style Planning fill:#FFFFFF,color:#000000,stroke:#999
    style F1 fill:#0072B2,color:#FFFFFF,rx:5,ry:5
    style F2 fill:#0072B2,color:#FFFFFF,rx:5,ry:5
    style F3 fill:#0072B2,color:#FFFFFF,rx:5,ry:5
    style F4 fill:#0072B2,color:#FFFFFF,rx:5,ry:5
    style F5 fill:#0072B2,color:#FFFFFF,rx:5,ry:5
    style S1 fill:#009E73,color:#FFFFFF,rx:5,ry:5
    style S2 fill:#009E73,color:#FFFFFF,rx:5,ry:5
    style S3 fill:#009E73,color:#FFFFFF,rx:5,ry:5
    style I1 fill:#56B4E9,color:#000000,rx:5,ry:5
    style I2 fill:#56B4E9,color:#000000,rx:5,ry:5
    style I3 fill:#56B4E9,color:#000000,rx:5,ry:5
    style I4 fill:#56B4E9,color:#000000,rx:5,ry:5
    style T1 fill:#E69F00,color:#000000,rx:5,ry:5
    style T2 fill:#E69F00,color:#000000,rx:5,ry:5
    style P1 fill:#D55E00,color:#FFFFFF,rx:5,ry:5
    style P2 fill:#D55E00,color:#FFFFFF,rx:5,ry:5
    style P3 fill:#D55E00,color:#FFFFFF,rx:5,ry:5
```

## A short tour

Each example below uses the numbers from the book, so you can check the
result against the chapter.

### Foundations

Rent of \$1,500 on a \$5,000 monthly income:

``` r

rent_share <- percent_of_income(expense = 1500, income = 5000)
rent_share
#> [1] 30
```

Rent takes 30% of income. A \$5,000 credit card balance at 22% APR,
paying \$100 a month:

``` r

payoff <- months_to_payoff(balance = 5000, monthly_payment = 100, apr = 0.22)
payoff
#> [1] 136.7791
```

That is about 11.4 years of payments.

### Savings

Spending \$2,720 of a \$3,200 take home paycheck:

``` r

savings_rate(income = 3200, spending = 2720)
#> [1] 15
```

### Investing

\$10,000 invested at 7% for 10 years:

``` r

future_value(present_value = 10000, rate = 0.07, years = 10)
#> [1] 19671.51
```

### Taxes and insurance

2026 federal income tax on a \$45,000 salary (single filer), and the
effective rate:

``` r

tax <- income_tax(income = 45000)
tax
#> [1] 3220
tax / 45000
#> [1] 0.07155556
```

The effective rate is 7.2%, well below the 12% top bracket this salary
reaches.

### Planning

The monthly payment on a \$480,000 mortgage at 6% over 30 years:

``` r

mortgage_payment(principal = 480000, annual_rate = 0.06, years = 30)
#> [1] 2877.843
```

## Recap

perfinr gives you the book’s functions as a tested package. Rates go in
as decimals, ratios come out as percents, and most functions accept
vectors so you can compare options in one call. The chapter vignettes
walk through each part of the book in the same order as the chapters.

Foundations:

- [Income](https://mjfrigaard.github.io/perfinr/articles/income.md)
- [Tracking
  Spending](https://mjfrigaard.github.io/perfinr/articles/tracking-spending.md)
- [Budgeting](https://mjfrigaard.github.io/perfinr/articles/budgeting.md)
- [Managing
  Debt](https://mjfrigaard.github.io/perfinr/articles/managing-debt.md)
- [Emergency
  Fund](https://mjfrigaard.github.io/perfinr/articles/emergency-fund.md)
