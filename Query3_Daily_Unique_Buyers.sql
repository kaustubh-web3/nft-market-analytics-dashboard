SELECT
    block_date,
    COUNT(DISTINCT buyer) AS unique_buyers
FROM nft.trades
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
