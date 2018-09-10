CREATE (hotel:Place {
    name: "New York Marriott Marquis - GraphConnect 2018",
    address: "",
    location: point({ 
        latitude: 40.7587183, 
        longitude: -73.9862168, 
        crs: 'WGS-84' })
});

CREATE (headquarters:Place {
    name: "Neo4j Headquarters",
    address: "111 E 5th Ave, San Mateo, CA 94401",
    location: point({
        latitude: 37.5634399,
        longitude: -122.3222646
    })
});