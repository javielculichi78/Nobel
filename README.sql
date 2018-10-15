# Nobel
SQLZOO nobel
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature'

SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein'

SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000

SELECT yr, subject, winner
FROM nobel
WHERE (yr >=1980 AND yr <=1989) AND subject = 'Literature'

SELECT *
FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter','Barack Obama')

SELECT winner
FROM nobel
WHERE winner LIKE 'john%'

Select yr, subject, winner 
from nobel
where subject = 'Physics' AND yr = 1980 OR (subject = 'Chemistry' AND yr = 1984)

SELECT *
FROM nobel
WHERE yr = 1980 AND subject NOT IN ('Chemistry', 'Medicine')

SELECT *
FROM nobel
WHERE (subject  = 'Medicine' AND yr < 1910) OR (subject = 'Literature' AND yr >= 2004)

SELECT *
FROM nobel
WHERE winner LIKE 'peter gr%nberg'

SELECT *
FROM nobel
WHERE winner = 'Eugene O''Neill'

SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'sir%'
ORDER BY yr DESC, winner

SELECT winner, subject
  FROM nobel
WHERE yr = 1984
ORDER BY subject IN ('Physics','Chemistry'), subject, winner
