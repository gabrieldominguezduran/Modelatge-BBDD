127.0.0.1/usairlineflights2/flights/		http://localhost/phpmyadmin/tbl_sql.php?db=usairlineflights2&table=flights
Su consulta se ejecut� con �xito.

SELECT COUNT(*) FROM `flights`

4758	


127.0.0.1/usairlineflights2/flights/		http://localhost/phpmyadmin/tbl_sql.php?db=usairlineflights2&table=flights
 Mostrando filas 0 - 24 (total de 213, La consulta tard� 0,0000 segundos.)

SELECT Origin, AVG(ArrDelay) as prom_llegadas, AVG(DepDelay) as prom_salidas FROM `flights` GROUP BY Origin


Origin	prom_llegadas	prom_salidas	
ABE	17.1250	15.7500	
ABQ	3.8158	6.8684	
ABY	4.5000	19.0000	
AGS	19.0000	15.3333	
ALB	-2.2500	-0.1250	
AMA	1.2500	0.0000	
ANC	1.8571	3.5000	
ASE	7.0000	10.0000	
ATL	9.5720	9.8833	
ATW	0.6667	1.6667	
AUS	1.5455	1.2273	
AVL	-7.6667	-3.3333	
AZO	-10.0000	-5.0000	
BDL	-4.4348	2.7826	
BET	1.0000	-2.0000	
BFL	-6.0000	0.0000	
BGR	45.0000	60.0000	
BHM	5.7500	8.3750	
BIL	14.0000	4.5000	
BIS	17.0000	0.0000	
BNA	7.8936	8.9574	
BOI	3.6667	2.0000	
BOS	5.8286	8.3238	
BTR	7.6667	-0.8333	
BTV	-11.4444	-4.0000	


127.0.0.1/usairlineflights2/flights/		http://localhost/phpmyadmin/tbl_sql.php?db=usairlineflights2&table=flights
 Mostrando filas 0 - 24 (total de 3997, La consulta tardó 0,0000 segundos.) [colYear: 1988... - 1999...] [colMonth: 5... - 4...]

SELECT origin, colYear, colMonth, AVG(ArrDelay) AS prom_llegadas FROM flights GROUP by colYear, colMonth, ArrDelay ORDER by Origin, colYear, colMonth


origin	colYear   	colMonth   	prom_llegadas	
ABE	1988	5	73.0000	
ABE	1988	11	26.0000	
ABE	1990	1	-4.0000	
ABE	1990	12	-5.0000	
ABE	1991	7	10.0000	
ABE	1992	6	-5.0000	
ABE	2005	1	-18.0000	
ABE	2006	1	60.0000	
ABQ	1987	10	10.0000	
ABQ	1989	1	7.0000	
ABQ	1990	4	-3.0000	
ABQ	1991	1	6.0000	
ABQ	1993	11	3.0000	
ABQ	1994	1	12.0000	
ABQ	1995	1	-8.0000	
ABQ	1995	8	7.0000	
ABQ	1995	9	1.0000	
ABQ	1996	7	0.0000	
ABQ	1997	9	-8.0000	
ABQ	1997	11	-11.0000	
ABQ	1997	12	14.0000	
ABQ	1998	1	5.0000	
ABQ	1998	1	-15.0000	
ABQ	1998	3	9.0000	
ABQ	1999	4	-25.0000	

	


127.0.0.1/usairlineflights2/flights/		http://localhost/phpmyadmin/tbl_sql.php?db=usairlineflights2&table=flights
 Mostrando filas 0 - 24 (total de 3999, La consulta tardó 0,0000 segundos.) [City: ALBANY... - ALBUQUERQUE...] [colYear: 1988... - 1997...] [colMonth: 3... - 11...]

SELECT usairports.City, flights.colYear, flights.colMonth, AVG(flights.ArrDelay) AS prom_llegadas FROM flights JOIN usairports ON usairports.IATA = flights.Origin GROUP BY colYear, colMonth, usairports.City  ORDER BY usairports.City, colYear,colMonth


City   	colYear   	colMonth   	prom_llegadas	
Albany	1988	3	-6.0000	
Albany	1992	12	-18.0000	
Albany	1993	10	0.0000	
Albany	1994	10	-11.0000	
Albany	2003	3	-4.0000	
Albany	2004	10	1.0000	
Albany	2006	1	-8.0000	
Albany	2006	3	17.0000	
Albany	2007	6	5.0000	
Albany	2008	12	15.0000	
Albuquerque	1987	10	10.0000	
Albuquerque	1989	1	7.0000	
Albuquerque	1990	4	-3.0000	
Albuquerque	1991	1	6.0000	
Albuquerque	1993	11	3.0000	
Albuquerque	1994	1	12.0000	
Albuquerque	1995	1	-8.0000	
Albuquerque	1995	7	-1.0000	
Albuquerque	1995	8	7.0000	
Albuquerque	1995	9	-2.0000	
Albuquerque	1996	1	-1.0000	
Albuquerque	1996	7	0.0000	
Albuquerque	1997	9	-8.0000	
Albuquerque	1997	10	12.0000	
Albuquerque	1997	11	-11.0000	



127.0.0.1/usairlineflights2/flights/		http://localhost/phpmyadmin/tbl_sql.php?db=usairlineflights2&table=flights
 Mostrando filas 0 - 24 (total de 255, La consulta tardó 0,0000 segundos.)

SELECT UniqueCarrier, colYear, colMonth, AVG(ArrDelay) as avgdelay, SUM(Cancelled) AS total_cancelled FROM flights GROUP by colMonth, colYear ORDER  BY total_cancelled DESC


UniqueCarrier	colYear	colMonth	avgdelay	total_cancelled   	
AA	1988	1	29.5294	3	
CO	1990	5	12.0556	1	
UA	1989	2	12.6250	1	
PI	1988	7	8.1667	1	
EA	1989	5	6.0000	1	
WN	1990	8	-1.5000	1	
TW	1988	9	-0.1765	1	
DL	1989	8	7.2353	1	
US	1990	2	5.0769	1	
UA	1987	11	7.2941	1	
UA	1988	2	2.0625	1	
HP	1987	12	16.8333	1	
PI	1988	4	1.7059	1	
OO	2004	4	-0.4348	0	
CO	1991	6	-1.4706	0	
MQ	2001	9	1.8889	0	
HA	2007	9	31.6667	0	
MQ	2004	9	-5.2083	0	
YV	2006	2	19.0000	0	
NW	1991	3	9.0000	0	
CO	1997	3	6.3158	0	
WN	2000	8	21.6500	0	
AA	1996	10	10.9444	0	
US	1992	12	11.0588	0	
NW	2003	8	9.1818	0	


	



127.0.0.1/usairlineflights2/flights/		http://localhost/phpmyadmin/tbl_sql.php?db=usairlineflights2&table=flights
 Mostrando filas 0 -  9 (total de 10, La consulta tardó 0,0000 segundos.)

SELECT TailNum, SUM(Distance) AS totalDistance FROM `flights` WHERE TailNum LIKE 'n%' GROUP BY TailNum ORDER BY totalDistance DESC LIMIT 10


TailNum	totalDistance   	
N543UA	7675	
N12238	6829	
N580JB	6277	
N5DCAA	5300	
N637DL	5223	
N5DJAA	5046	
N653UA	5005	
N614UA	4950	
N615DL	4948	
N128DL	4584	
	
	


127.0.0.1/usairlineflights2/flights/		http://localhost/phpmyadmin/tbl_sql.php?db=usairlineflights2&table=flights
 Mostrando filas 0 -  8 (total de 9, La consulta tardó 0,0000 segundos.)

SELECT UniqueCarrier, AVG(ArrDelay) AS avgDelay  FROM flights GROUP BY UniqueCarrier HAVING avgDelay > 10 ORDER by avgDelay  DESC


UniqueCarrier	avgDelay   	
TZ	38.5714	
F9	32.8571	
B6	20.3611	
PI	17.7273	
9E	16.4000	
YV	13.2727	
EV	13.0725	
OH	12.9310	
FL	12.0435	





