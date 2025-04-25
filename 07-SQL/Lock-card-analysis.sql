SQL ANALYSIS 

--Find how many cards are currently locked

SELECT Count(*)
FROM cards
WHERE status = 'locked'; 

--Show the total number of card lock and unlock actions

SELECT action, COUNT(*) AS total
FROM card_logs
WHERE action IN ('lock, unlock')
GROUP BY action; 

--Get the top 5 users who locked their card most frequently

SELECT user_id, COUNT(*) AS lock_count
FROM card_logs
WHERE action = 'lock'
GROUP BY user_id
ORDER BY lock_count DESC
LIMIT 5; 

--Total transactions volume by day

SELECT txn_date, SUM(amount) AS total_volume
FROM transactions
GROUP BY txn_date
ORDER BY txn_date; 

--Users who locked their cards more than twice in one month

SELECT user_id, COUNT(*) AS times_locked
FROM card_logs
WHERE action = 'lock' 
  AND timestamp >= '2025-03-25'
AND timestamp < '2025-04-25'
GROUP BY user_id
HAVING COUNT(*) > 2;

--Daily usage trend of lock feature

SELECT DATE(timestamp) AS lock_day, COUNT(*) AS lock_count
FROM card_logs
WHERE action = 'lock'
GROUP BY lock_day
ORDER BY lock_day;





