#[macro_use]
extern crate rocket;

use diesel::prelude::*;
use models::CustomerOrderSummary;
use rocket::http::Status;
use rocket::response::status::Custom;
use rocket::serde::json::Json;
use rocket_sync_db_pools::{database, diesel};
use views::customer_order_summary::dsl::*;

mod models;
mod schema;
mod views;

#[database("sqlite_db")]
struct DbConn(diesel::SqliteConnection);

/// Handles the `/top-customers` endpoint to retrieve a list of the top 5 customers who
/// have orders with electronic products in the current year sorteed by the total amount spent.
///
/// This asynchronous function queries the database for a summary of the top customers.
///
/// # Arguments
///
/// * `conn` - A managed Sqlite connection.
///
/// # Returns
///
/// * `Ok(Json<Vec<CustomerOrderSummary>>)` - A JSON response containing a vector of
/// `CustomerOrderSummary` structs if the query is successful.
/// * `Err(Custom<String>)` - A custom error message with an HTTP status code if the query fails.
///
/// # Errors
///
/// This function will return a `Custom<String>` error with a status of `InternalServerError`
/// if there is any issue while querying the database.
#[get("/top-customers")]
async fn top_customers(conn: DbConn) -> Result<Json<Vec<CustomerOrderSummary>>, Custom<String>> {
    conn.run(|c| {
        customer_order_summary
            .order(total_spent.desc())
            .limit(5)
            .load::<CustomerOrderSummary>(c)
            .map(Json)
            .map_err(|err| {
                eprintln!("Database query error: {:?}", err);
                Custom(
                    Status::InternalServerError,
                    "Failed to load customer order summary".into(),
                )
            })
    })
    .await
}

#[launch]
fn rocket() -> _ {
    rocket::build()
        .attach(DbConn::fairing())
        .mount("/", routes![top_customers])
}
