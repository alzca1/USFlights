SELECT COUNT(*) AS total_vuelos FROM Flights;
SELECT Origin, AVG(ArrDelay) AS promedio_retraso_llegadas, AVG(DepDelay) AS promedio_retraso_salidas FROM Flights GROUP BY Origin ;
SELECT Origin, colYear,colMonth,ArrDelay AS prom_arribades FROM Flights ORDER BY Origin, colYear,colMonth;
SELECT City, colYear, colMonth,ArrDelay AS promedio_retraso_llegadas FROM Flights INNER JOIN USAirports ON (Flights.Origin=USAirports.IATA) ORDER BY City, colYear, colMonth;
SELECT UniqueCarrier, colYear, colMonth, SUM(Cancelled) AS total_vuelos_cancelados from Flights GROUP BY UniqueCarrier, colYear, colMonth HAVING total_vuelos_cancelados > 0 ORDER BY total_vuelos_cancelados DESC; 
SELECT TailNum, SUM(Distance) AS distancia_total from Flights GROUP BY TailNum ORDER BY distancia_total DESC LIMIT 1,10; 
Select UniqueCarrier, AVG(ArrDelay) AS promedio_retraso_llegadas from Flights GROUP BY UniqueCarrier HAVING promedio_retraso_llegadas > 10 ORDER BY promedio_retraso_llegadas DESC LIMIT 1,10; 