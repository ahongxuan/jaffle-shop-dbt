with orders as(
    select * from {{ ref('stg_jaffle_shop__orders') }}
),

payment as (
    select * from {{ ref('stg_stripe__payments') }}
),

order_payments as (
    select 
        p.order_id as order_id, 
        o.customer_id as customer_id, 
        sum(amount) as amount

    from orders o
    left join payment p
        on p.order_id = o.order_id
    group by 1,2
)

select * from order_payments