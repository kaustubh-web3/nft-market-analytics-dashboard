SELECT
    project,
    SUM(amount_usd) AS trading_volume_usd
FROM nft.trades
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY project
ORDER BY trading_volume_usd DESC
LIMIT 10;
