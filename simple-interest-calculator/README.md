# Simple Interest Calculator

## Overview

This project describes a simple interest calculator that determines the interest
earned or charged on a principal amount over a specified period. Simple interest
is calculated only on the original principal; it does not compound.

## Inputs

- **Principal (P):** The initial amount invested or borrowed.
- **Annual interest rate (R):** The yearly interest rate expressed as a percentage.
- **Time (T):** The duration in years. For a duration in months, divide by 12.

Use non-negative numeric values for all inputs.

## Formula

```text
Simple Interest = (P × R × T) / 100
Total Amount = P + Simple Interest
```

Enter the interest rate as a percentage: for a 5% annual rate, use `5`.

## Example

For a principal of 1,000, an annual interest rate of 5%, and a duration of 2 years:

```text
Simple Interest = (1000 × 5 × 2) / 100 = 100
Total Amount = 1000 + 100 = 1100
```

The interest is **100**, and the total amount is **1,100**, in the same currency
as the principal.

## Calculation Steps

1. Enter the principal amount.
2. Enter the annual interest rate as a percentage.
3. Enter the duration in years.
4. Apply the simple interest formula.
5. Add the interest to the principal to obtain the total amount.

## Run the Calculator

With Bash and `awk` installed, run this command from the repository root:

```bash
bash simple-interest.sh
```

Enter the principal amount, annual interest rate as a percentage, and time period
in years when prompted. Use non-negative whole numbers or decimals, such as
`1000`, `5`, and `0.5`. The script asks again if an input is invalid and displays
the simple interest and total amount rounded to two decimal places.

## Project Contents

- [`simple-interest.sh`](../simple-interest.sh): Interactive Bash calculator.
- `README.md`: Calculator description, inputs, formulas, and a worked example.
