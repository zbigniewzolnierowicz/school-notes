-- Zad 1

SELECT COUNT(id) FROM stops;

-- Zad 2

SELECT id FROM stops WHERE name='Craiglockhart'

-- Zad 3

SELECT id, name FROM stops WHERE id IN (SELECT stop FROM route WHERE num = '4' AND company = 'LRT');

-- Zad 4

SELECT company, num, COUNT(*)
FROM route WHERE stop=149 OR stop=53
GROUP BY company, num
HAVING COUNT(*) = 2;

-- Zad 5

SELECT a.company, a.num, a.stop, b.stop
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop=53 AND b.stop = (SELECT id FROM stops WHERE name='London Road');

-- Zad 6

SELECT a.company, a.num, stopa.name, stopb.name
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopa ON (a.stop=stopa.id)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE stopa.name='Craiglockhart' AND stopb.name='London Road'

-- Zad 7

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop = 115 AND b.stop = 137;

-- Zad 8

SELECT DISTINCT a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
WHERE a.stop = (SELECT id FROM stops WHERE name='Craiglockhart') AND b.stop = (SELECT id FROM stops WHERE name='Tollcross');

-- Zad 9

SELECT stopb.name, a.company, a.num
FROM route a JOIN route b ON
  (a.company=b.company AND a.num=b.num)
  JOIN stops stopb ON (b.stop=stopb.id)
WHERE a.company = 'LRT' AND a.stop = (SELECT id FROM stops WHERE name='Craiglockhart');