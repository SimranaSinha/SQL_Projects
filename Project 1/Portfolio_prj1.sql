CREATE database Portfolio_prj1;
USE Portfolio_prj1;

SELECT * 
FROM listings;

#How does the availability of listings impact their projected revenue for the next 30 days
#Top 20 most successful
SELECT id, listing_url, 30 - availability_30 AS booked_out_30,
CAST(REPLACE(Price,'$','') AS UNSIGNED) AS price_clean,
CAST(REPLACE(Price,'$','') AS UNSIGNED)*(30 - availability_30) AS proj_rev_30
FROM listings
ORDER BY proj_rev_30 DESC LIMIT 20;

