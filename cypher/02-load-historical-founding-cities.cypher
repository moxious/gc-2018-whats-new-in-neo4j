LOAD CSV WITH HEADERS FROM 'https://raw.githubusercontent.com/moxious/gc-2018-whats-new-in-neo4j/master/data/historical-founding-of-cities.csv' as line
CREATE (city:City {
   id: line.n,
   name: line.City,
   otherName: line.OtherName,
   lat: line.Latitude,
   lon: line.Longitude,
   year: line.year,
   population: line.pop,
   offset: line.offset
})
MERGE (country:Country {
   name: line.Country
})
MERGE (year:Year {
   date: date({ year: coalesce(toInteger(line.yearorig), 5000) })
})
MERGE (city)-[r:LOCATED_IN]->(country)
MERGE (city)-[rel:FOUNDED_IN]->(year)
RETURN count(city);
