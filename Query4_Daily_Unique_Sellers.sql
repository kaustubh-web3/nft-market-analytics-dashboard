SELECT
    block_date,
    COUNT(DISTINCT seller) AS unique_sellers
FROM nft.trades
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
