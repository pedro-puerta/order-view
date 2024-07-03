// @generated automatically by Diesel CLI.

diesel::table! {
    customers (customer_id) {
        customer_id -> Nullable<Integer>,
        customer_name -> Nullable<Text>,
        region -> Nullable<Text>,
    }
}

diesel::table! {
    order_items (order_item_id) {
        order_item_id -> Nullable<Integer>,
        order_id -> Nullable<Integer>,
        product_id -> Nullable<Integer>,
        quantity -> Nullable<Integer>,
        price_per_item -> Nullable<Double>,
    }
}

diesel::table! {
    orders (order_id) {
        order_id -> Nullable<Integer>,
        customer_id -> Nullable<Integer>,
        order_date -> Nullable<Date>,
        amount -> Nullable<Double>,
    }
}

diesel::table! {
    products (product_id) {
        product_id -> Nullable<Integer>,
        product_name -> Nullable<Text>,
        category -> Nullable<Text>,
    }
}

diesel::joinable!(order_items -> orders (order_id));
diesel::joinable!(order_items -> products (product_id));
diesel::joinable!(orders -> customers (customer_id));

diesel::allow_tables_to_appear_in_same_query!(
    customers,
    order_items,
    orders,
    products,
);
