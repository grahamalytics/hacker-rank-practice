-- HACKERRANK SQL: ALTERNATIVE QUERIES
-- https://www.hackerrank.com/challenges/print-prime-numbers/problem
-- Level: MEDIUM (THIS WAS A DOOZY)
-- Points: 40
-- Result: PASSED

/* Using Sieve of Eratothenes. */
WITH
-- candidate set of numbers N
candidates AS (SELECT ROWNUM AS cnum FROM dual CONNECT BY LEVEL <= 1000),
-- set of numbers that are factors of candidate set
divisors AS (SELECT c.cnum AS dnum FROM candidates c WHERE 1 < c.cnum AND c.cnum <= 500),
-- perform a cartesian join (yikes!) to eliminate multiples of primes, filtering for numbers whose square is less than N
multiples AS (SELECT DISTINCT d.dnum * e.dnum AS mnum
              FROM divisors d, divisors e
              WHERE d.dnum < (1000 / e.dnum) + 1
             ),
-- perform set difference btw candidates and multiples to identify primes
primes AS (SELECT c.cnum AS pnum FROM candidates c WHERE c.cnum >= 2
           MINUS
           SELECT m.mnum AS pnum FROM multiples m)
-- concat list of primes using listagg
SELECT LISTAGG(p.pnum, '&') WITHIN GROUP (ORDER BY p.pnum) FROM primes p;