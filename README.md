# Simple Interest Calculator

An interactive Bash calculator that computes simple interest from a principal
amount, an annual interest rate, and a time period in years. Simple interest is
calculated only on the original principal; it does not compound.

## Inputs

- **Principal (P):** The amount invested or borrowed.
- **Annual interest rate (R):** The yearly rate as a percentage. Enter `5` for 5%.
- **Time period (T):** The duration in years. Enter `0.5` for six months.

All inputs must be non-negative whole numbers or decimals.

## Calculation

```text
Simple Interest = (P * R * T) / 100
Total Amount = P + Simple Interest
```

For example, a principal of `1000`, an annual rate of `5`, and a time period of
`2` years produce:

```text
Simple Interest: 100.00
Total Amount: 1100.00
```

The results use the same currency as the principal and are rounded to two decimal
places.

## Run the Calculator

With Bash and `awk` installed, run this command from the repository root:

```bash
bash simple-interest.sh
```

Enter the principal, annual percentage rate, and time period when prompted.
The script asks again for invalid entries and reports an error if input ends
before all three values have been entered.

## Project Files

- [simple-interest.sh](simple-interest.sh): Interactive Bash calculator.
- [Detailed calculator documentation](simple-interest-calculator/README.md):
  Additional explanation and a worked example.
- [LICENSE](LICENSE): The complete Apache License, Version 2.0.
- [CODE_OF_CONDUCT.md](CODE_OF_CONDUCT.md): Community standards, enforcement,
  and attribution.
- [CONTRIBUTING.md](CONTRIBUTING.md): How to report bugs and contribute changes.

## License

This project is licensed under the [Apache License 2.0](LICENSE).
