select
    o.customer_id,
    o.order_date,
    o.order_id,
    p.amount
FROM {{ ref('stg_orders')}} o
left join {{ ref('stg_payments')}} p ON o.order_id = p.order_id AND p.status = 'success'