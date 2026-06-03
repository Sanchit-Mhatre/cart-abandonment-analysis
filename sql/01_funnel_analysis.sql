#funnel_analysis#

Use ecom_event;

With Funnel As(
	select 
		count( Distinct CASE WHEN event_type = "view" Then user_id END) As Viewed,
        count( distinct CASE WHEN event_type = "cart" Then user_id END) As Carted,
        Count( distinct CASE WHEN event_type = "purchase" Then user_id END) As Purchased
	From Events
)
Select Viewed,Carted,Purchased,
Round((Carted * 100)/ Viewed,1) As View_to_cart_pct,
Round((Purchased * 100) / Carted,1) As Cart_to_purchased_pct,
Round(((Carted - purchased) * 100)/ Carted, 1) As Abandonment_rate

from funnel;
