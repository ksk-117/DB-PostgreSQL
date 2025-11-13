START TRANSACTION;

DELETE FROM s_characters
WHERE
  DATE '2025-10-15' - CAST(last_login_at AS DATE) >= 60;

ROLLBACK;

SELECT
  id,
  name,
  last_login_at,
  DATE '2025-10-15' - CAST(last_login_at AS DATE) || ' days ago' AS "Days Since Last Login"