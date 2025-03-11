#!/bin/bash

# Install DuckDB CLI
curl https://install.duckdb.org | sh

# Install Python dependencies
python -m pip install dbt-core dbt-duckdb


