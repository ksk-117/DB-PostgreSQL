SELECT
  id,
  name,
  job,
  level,
  buff,
  guild,
  last_login_at,
  created_on
FROM
  s_characters
ORDER BY
  level ASC,
  guild ASC NULLS FIRST;
