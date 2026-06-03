# revenue_lost #
With Revenue As (
  Select
    event_month,                                         
    Round(Sum(Case When event_type = 'cart'
               Then price Else 0 End), 2)    As Cart_value,
    Round(Sum(Case When event_type = 'purchase'
               Then price Else 0 End), 2)    As Revenue_earned,
    Round(
      Sum(Case When event_type = 'cart'     Then price Else 0 End) -
      Sum(Case When event_type = 'purchase' Then price Else 0 End)
    , 2)                                              As Revenue_lost
  From Events
  Where event_type In ('cart', 'purchase')       
    And price > 0                                  
  Group By event_month
)
Select
  event_month,
  Cart_value,
  Revenue_earned,
  Revenue_lost
From Revenue
Having event_month Not Like '2024-04'            
Order By event_month;