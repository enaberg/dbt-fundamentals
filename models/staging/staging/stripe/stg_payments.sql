select
    ORDERID as order_id,
    PAYMENTMETHOD,
    STATUS,
    amount / 100 as amount,
    created as created_at
from {{source('stripe', 'payment') }}