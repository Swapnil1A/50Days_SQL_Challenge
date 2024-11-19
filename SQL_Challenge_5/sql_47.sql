select * from inventory

--Retrieve the data and categorize the data on the basis of quantity. When the QTY >10 then 'Medium' Otherwise 'Low'.

select product_name,quantity,
case 
when quantity>10 then 'Mediun' else
'Low'
End as Stock_Level
from inventory
