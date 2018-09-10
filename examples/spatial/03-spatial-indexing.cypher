CREATE INDEX ON :Place(location);

/* 
 * Bounding box query, which exploits index. 
 * Plug in your own 
 */
MATCH (l:Place)
WHERE point({ x: 1, y: 5 })< l.location < point({ x: 2, y: 6 })
RETURN l;