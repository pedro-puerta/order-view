use diesel::Queryable;
use serde::Serialize;

/// Represents a summary of a customer's orders, including their name, total amount spent, and the number of orders.
///
/// Fields:
/// - `customer_name` (String): The name of the customer.
/// - `total_spent` (f64): The total amount of money spent by the customer.
/// - `order_count` (i32): The total number of orders placed by the customer.
///
/// Attributes:
/// - `Queryable`: Enables the struct to be queried from a database using Diesel.
/// - `Serialize`: Enables the struct to be serialized using Serde.
#[derive(Queryable, Serialize)]
pub struct CustomerOrderSummary {
    pub customer_name: String,
    pub total_spent: f64,
    pub order_count: i32,
}
