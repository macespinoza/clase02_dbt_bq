with base AS(
    SELECT * FROM `dbt-tutorial.data_prep.jaffle_shop_orders` 
    where order_date > '2018-03-01'
),
calculada AS(
    SELECT order_date, count(*) as num_orders FROM base
    group by order_date
)
select * from
calculada