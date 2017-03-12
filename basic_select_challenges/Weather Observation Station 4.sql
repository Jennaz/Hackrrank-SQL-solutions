select count(CITY) - count(distinct CITY) as diff
from STATION