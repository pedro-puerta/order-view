# Order View API

This project is a Rust API that uses the Rocket framework and Diesel ORM to provide information about top customers based on their electronics purchases in the current year.

## Prerequisites

- Rust (latest stable version)
- Cargo (Rust package manager)
- libsqlite3-dev (to compile SQLite database `apt-get install libsqlite3-dev`)
- SQLite

## Configuration

1. Clone the repository:

```bash
git clone https://github.com/pedro-puerta/order-view.git

cd order-view
```

2. Run the database migrations:

```bash
cargo install diesel_cli --no-default-features --features sqlite

diesel migration run
```

## Running the project

1. Compile and run the project:

```bash
cargo run
```

2. The API will be available at `http://localhost:8000` by default.

## Endpoints

### GET /top-customers

Returns the top 5 customers who ordered electronics in the current year, ordered by total amount spent.

Example response:

```json
[
    {
        "customer_id": 1,
        "customer_name": "John Doe",
        "total_spent": 1500.50
    },
    // ... more customers ...
]
```

## Additional notes

- Make sure all required dependencies are listed in the `Cargo.toml` file.
- For development, you can use `cargo watch -x run` to automatically recompile and restart the server when there are code changes.

## Problems solution

If you encounter problems running the project, check:
- Whether all dependencies are installed correctly
- Whether the SQLite database is configured and accessible
- Whether the required environment variables are defined

For more information, see the Rocket and Diesel documentation.