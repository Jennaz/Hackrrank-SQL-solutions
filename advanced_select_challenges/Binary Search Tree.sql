select N,case
         when P IS NULL THEN 'Root'
         WHEN N IN (SELECT P FROM BST) THEN 'Inner'
         ELSE 'Leaf'
         end as status
from BST
order by N;