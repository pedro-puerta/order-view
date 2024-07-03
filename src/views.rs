diesel::table! {
    customer_order_summary (customer_name) {
        customer_name -> Text,
        total_spent -> Double,
        order_count -> Integer,
    }
}
