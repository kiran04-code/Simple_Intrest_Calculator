#!/usr/bin/env bash

# Calculate simple interest using principal, annual percentage rate, and years.
set -euo pipefail
export LC_ALL=C

read_number() {
    local destination="$1"
    local prompt="$2"
    local value

    while true; do
        if ! IFS= read -r -p "$prompt" value; then
            printf '\nError: input ended before all values were entered.\n' >&2
            return 1
        fi

        if [[ "$value" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
            printf -v "$destination" '%s' "$value"
            return 0
        fi

        printf 'Please enter a non-negative number, such as 1000 or 2.5.\n' >&2
    done
}

printf 'Simple Interest Calculator\n'
read_number principal 'Enter the principal amount: '
read_number rate 'Enter the annual interest rate (percentage, e.g. 5 for 5%): '
read_number years 'Enter the time period in years (e.g. 0.5 for six months): '

awk -v principal="$principal" -v rate="$rate" -v years="$years" '
    BEGIN {
        interest = (principal * rate * years) / 100
        printf "\nSimple Interest: %.2f\n", interest
        printf "Total Amount: %.2f\n", principal + interest
    }
'
