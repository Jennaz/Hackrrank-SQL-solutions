select distinct min(CITY),LENGTH(CITY) as len_city
from STATION
where (LENGTH(CITY) in (select min(LENGTH(CITY)) from STATION ) or LENGTH(CITY) in (select max(LENGTH(CITY)) from STATION ))
group by length(city)