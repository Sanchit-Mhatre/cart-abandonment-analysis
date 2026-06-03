#monthly_trend#

ALTER TABLE Events
ADD COLUMN event_month VARCHAR(7);

UPDATE Events
SET event_month = DATE_FORMAT(event_time, '%Y-%m');

SET SQL_SAFE_UPDATES = 0;


#using CTE#
# 2 Monthly Trend #

	with monthly as(
    select event_month,
    count(distinct case when event_type = "cart" THEN user_id END) as cart_user,
    count(distinct case when event_type = "purchase" then user_id END) as purchase_user
    
    from events
    group by event_month
    )
select event_month,cart_user,purchase_user,
round(((cart_user - purchase_user) * 100)/ nullif( cart_user,0), 1) As abandonment_rate
from monthly
order by event_month;