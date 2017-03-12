SELECT concat(Name,'(',left(Occupation,1),')') FROM Occupations 
ORDER BY Name; 

SELECT concat_WS(' ', 'There are total',count(Occupation),concat(lower(Occupation),'s.')) 
FROM Occupations 
GROUP BY Occupation 
ORDER BY count(Occupation),Occupation;