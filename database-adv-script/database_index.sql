EXPLAIN SELECT
    P.property_id,
    P.name  AS property_name,
    P.description,
    P.price_per_night,
    R.rating,
    R.comment
FROM
    Property AS P
LEFT JOIN
    Review AS R ON P.property_id = R.property_id
ORDER BY
    property_name ASC;

CREATE INDEX idx_property_host on Property (host_id);
CREATE INDEX idx_property_name ON Property (name);

EXPLAIN SELECT
    P.property_id,
    P.name  AS property_name,
    P.description,
    P.price_per_night,
    R.rating,
    R.comment
FROM
    Property AS P
LEFT JOIN
    Review AS R ON P.property_id = R.property_id
ORDER BY
    property_name ASC;