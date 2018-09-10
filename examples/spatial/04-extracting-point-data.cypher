MATCH (p:Place)
RETURN p.name, p.location.latitude;

MATCH (p:Place)
WHERE p.location.crs = 'wgs-84'
RETURN p.name;