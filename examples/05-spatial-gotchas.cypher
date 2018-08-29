/* This is not a meaningful query! */
RETURN distance(
    point({ latitude: 0, longitude: 0, crs: 'WGS-84' }),
    point({ x: 0, y: 0, z: 0, crs: 'cartesian-3D' })
);