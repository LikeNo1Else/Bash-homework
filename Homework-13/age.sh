#!/bin/bash

read -p "Year of birth? " birth_year
echo

# Calculating current age
echo "You are $((2025-$birth_year)) years old."

# Calculating user's age in 2020
echo "You were $((2020-$birth_year)) years old in 2020."

# Calculating user's age in 2030
echo "You would be $((2030-$birth_year)) years old in 2030."
echo

