#!/bin/bash

# Install DuckDB CLI
curl https://install.duckdb.org | sh

# Install dbt-core with duckdb adapter
python -m pip install dbt-core dbt-duckdb

# Install Rill for creating dashboard
curl https://rill.sh | sh