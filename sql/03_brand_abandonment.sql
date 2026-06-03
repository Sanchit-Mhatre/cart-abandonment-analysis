#brand_abandonment#


with event_brand as(
SELECT
  brand,
 count(distinct case when event_type = "cart" THEN user_id END) as cart_user,
    count(distinct case when event_type = "purchase" then user_id END) as purchase_user
    from events
    where brand is NOT null
    group by brand
    )
select brand, cart_user, purchase_user,
round(((cart_user - purchase_user) * 100)/ nullif( cart_user,0), 1) As abandonment_rate
from event_brand
having cart_user > 10
order by abandonment_rate desc
limit 20 ;
