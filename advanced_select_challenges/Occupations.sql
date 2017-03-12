/*
Enter your query here.
*/
SET @d=0, @a=0, @p=0, @s=0;
SELECT MIN(Doctor),MIN(Professor),MIN(SINGER),MIN(Actor)
FROM
(SELECT IF(OCCUPATION='Actor',NAME,NULL) AS Actor,
        IF(OCCUPATION='Doctor',NAME,NULL) AS Doctor,
        IF(OCCUPATION='Professor',NAME,NULL) AS Professor,
        IF(OCCUPATION='Singer',NAME,NULL) AS SINGER,
 CASE OCCUPATION
    WHEN 'Actor' THEN @a:=@a+1
    WHEN 'Doctor' THEN @d:=@d+1
    WHEN 'Professor' THEN @p:=@p+1
    WHEN 'Singer' THEN @s:=@s+1
 END
AS idn FROM OCCUPATIONS ORDER BY NAME )
AS temp GROUP BY temp.idn;select max(case when Occupation ='Doctor' then name else 'NULL' end ) AS Doctor,
        max(case when Occuption='Professor' then name else 'NULL' END ) AS Professor.
        max(case when Occuption='Singer' then name else 'NULL' END) AS Singer,
        max(case when Occuption='Actor' then name else 'NULL' END) AS Actor
 
from OCCUPATION
group by Occupation
order by name
