MATCH (p1:Place { name: "Neo4j Headquarters" })
MATCH (p2:Place { name: "New York Marriott Marquis - GraphConnect 2018" })
WITH distance(p1.location, p2.location) as distanceM

RETURN distanceM / 1000 as distanceKM, 
       (distanceM/1000) * 0.621371 as distanceMi;

