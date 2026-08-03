SELECT
    block_date,
    SUM(amount_usd) AS trading_volume_usd
FROM nft.trades
WHERE block_date >= CURRENT_DATE - INTERVAL '30' DAY
GROUP BY block_date
ORDER BY block_date;
