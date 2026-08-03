SELECT
    block_date,
    COUNT(*) AS total_sales
FROM nft.trades
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
