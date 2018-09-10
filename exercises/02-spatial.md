# Spatial Exercises

## Hints

* Make sure to check the examples directory in this repo for code samples you
can copy and paste to speed things up.
* If you want to experiment with a cypher function, just call it with "RETURN" like this:

```
RETURN point({ latitude: 1, longitude: 1 });
```

## Exercise 1: Find All Cities in an Area

1.  Load the city data found in this repository
2.  Create an index on the location property
3.  Use [bboxfinder.com](http://bboxfinder.com) to define a bounding box that is interesting to you.   As a sample, you might use [this rough box](http://bboxfinder.com/#35.746512,-15.996094,60.673179,34.804687) to define all of Europe
4. Write a query which returns a list of all global cities in the dataset which
exist in the bounding box.
5. If you need help, check the examples in this source code repository for syntax examples.
6.  Bonus points to show understanding of the WGS 84 CRS: write a query that returns all cities in the southern hemisphere, that are west of London.

## Exercise 2:  Determine the distance from all cities to all other cities.

1. Load city data found in this repository.
2. Create relationships `(:City)-[:FLIGHT { distance: X }]->(:City)`, where
the distance between cities is calculated using the distance function.
3. To create relationships between all cities, but only one relationship per pair, you can use this construct:

```
MATCH (a:City), (b:City)
CREATE (a)-[:FLIGHT { /* your code here!!! */ }]->(b)
WHERE id(a) < id(b)
```

## Advanced Exercise 3:  Flight Route Planning

1. Determine the shortest path in flights that goes from Los Angeles to London, that goes through at least 2 other cities.  (As in, the absolute shortest path will be Los Angeles -> London direct, but that doesn't count for this exercise)
2. Hints:  consider using [neo4j graph algorithms and the dijkstra's shortest path function](https://neo4j.com/docs/graph-algorithms/current/algorithms/shortest-path/#_the_dijkstra_shortest_path_algorithm) to compute the path.  Make sure to place limits on which paths you will consider.
