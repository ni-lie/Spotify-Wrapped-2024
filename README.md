# Spotify Wrapped with dbt and DuckDB

## Description
This project recreates my 2024 Spotify Wrapped using dbt and DuckDB, transforming raw listening data into meaningful insights.

**Bonus: An interactive dashboard built using Rill, powered by AI!** 

## Prerequisites
Ensure you have the following installed before proceeding:
- Python (>=3.x)
- Git

## Setup Instructions
1. Clone the Repository
    ```bash
    git clone https://github.com/ni-lie/Spotify-Wrapped-2024.git
    cd Spotify-Wrapped-2024
    ```

2. Set up Python Virtual Environment
    ```bash
    # Create virtual environment 'myenv'
    python3 -m venv myenv

    # Activate virtual environment
    # On macOS/Linux:
    source ~/myenv/bin/activate

    # On Windows:
    ~\myenv\Scripts\activate
    ```

3. Install dependencies

    **Using setup.sh (Recommended)**

    Run the setup script to install dependencies:
    `./setup.sh`

    If you encounter permission issues, run:
    ```bash
    chmod +x setup.sh
    ./setup.sh
    ```

    **Manual Installation**

    Alternatively, install dependencies manually:
    ```bash
    python -m pip install dbt-core dbt-duckdb
    curl https://install.duckdb.org | sh
    ```
4. Materialize all models from `dbt_spotify_wrapped/models`
    ```bash
    cd dbt_spotify_wrapped
    dbt run
    ```
## View materialized models using duckdb
1. Create or open a persistent duckdb database
    ```bash
    # spotify_db exists in root
    duckdb ../spotify_db.db
    ```
2. List all tables in the database
    ```sql
    SHOW TABLES;
    ```
3. View a table
    ```sql
    SELECT * FROM streaming_history_music LIMIT 5;
    ```

## View Rill dashboard locally
1. Open Rill project
    ```bash
    rill start my_dashboard
    ```

## Contributing

1. Fork the repository

2. Create a new branch (git checkout -b feature-branch)

3. Commit your changes (git commit -m 'Add new feature')

4. Push to the branch (git push origin feature-branch)

5. Open a pull request

# License
<!-- Specify your project's license (e.g., MIT, Apache 2.0). -->