select 
     case 
         when A+B<=C or A+C<=B or B+C<=A Then 'Not A Triangle'
         when A=B and B=C and A=C Then 'Equilateral'
         when A=B or B=C or A=C Then 'Isosceles'
         when A != B or B != C or A != C Then 'Scalene'
     end as TRIANGLES_TYPE
from TRIANGLES