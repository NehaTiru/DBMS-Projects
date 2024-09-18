-- Query 1
SELECT t.textbody AS tweet_text, u.screen_name, u.category, u.sub_category, t.retweet_count
FROM Tweet AS t
JOIN Twitter_User AS u ON t.posting_user = u.screen_name
WHERE YEAR(t.created_at) = 2016
ORDER BY t.retweet_count DESC
LIMIT 10;

-- Query 2
SELECT COUNT(DISTINCT u.state) AS count, 
       GROUP_CONCAT(DISTINCT u.state ORDER BY u.state ASC) AS state, 
       UPPER(h.hastagname) AS hashtag
FROM Tweet AS t
JOIN has_tagged AS tg ON t.tid = tg.tid
JOIN hashtag AS h ON tg.hastagname = h.hastagname
JOIN Twitter_User AS u ON t.posting_user = u.screen_name
WHERE YEAR(t.created_at) = 2016
AND u.state <> 'na'
GROUP BY h.hastagname
ORDER BY count DESC
LIMIT 10;

-- Query 3
SELECT 
    u.screen_name, 
    u.state
FROM 
    Twitter_User AS u
JOIN 
    Tweet AS t ON u.screen_name = t.posting_user
JOIN 
    has_tagged AS tg ON t.tid = tg.tid
JOIN 
    hashtag AS h ON tg.hastagname = h.hastagname
WHERE 
    h.hastagname IN ('iowacaucus', 'iacaucus') 
GROUP BY 
    u.screen_name, u.state
ORDER BY 
    COUNT(DISTINCT t.tid) DESC;

-- Query 4
-- GOP
SELECT u.screen_name, 'GOP' AS party, u.numFollowers
FROM Twitter_User AS u
WHERE u.sub_category = 'GOP'
ORDER BY u.numFollowers DESC
LIMIT 5;

-- DEMOCRAT
SELECT u.screen_name, 'DEMOCRAT' AS party, u.numFollowers
FROM Twitter_User AS u
WHERE u.sub_category = 'DEMOCRAT'
ORDER BY u.numFollowers DESC
LIMIT 5;

-- Query 5
SELECT h.hastagname AS hashtag, COUNT(t.tid) AS tweet_count
FROM Tweet AS t
JOIN has_tagged AS tg ON t.tid = tg.tid
JOIN hashtag AS h ON tg.hastagname = h.hastagname
JOIN Twitter_User AS u ON t.posting_user = u.screen_name
WHERE u.state = 'Iowa'
AND MONTH(t.created_at) = 1
AND YEAR(t.created_at) = 2016
GROUP BY h.hastagname;

-- Query 6
SELECT t.textbody AS tweet_text, h.hastagname, u.screen_name, u.sub_category AS party
FROM Tweet AS t
JOIN has_tagged AS tg ON t.tid = tg.tid
JOIN hashtag AS h ON tg.hastagname = h.hastagname
JOIN Twitter_User AS u ON t.posting_user = u.screen_name
WHERE h.hastagname = 'Iowa'
AND u.sub_category IN ('GOP', 'DEMOCRAT')
AND MONTH(t.created_at) = 2
AND YEAR(t.created_at) = 2016;

-- Query 7
SELECT 
    tu.screen_name,
    COUNT(t.tid) AS cntOfTweets,
    GROUP_CONCAT(DISTINCT u.url ORDER BY u.url ASC SEPARATOR ' ') AS URLs
FROM 
    Twitter_User AS tu
JOIN 
    Tweet AS t ON tu.screen_name = t.posting_user
JOIN 
    has_url AS uu ON t.tid = uu.tid
JOIN 
    url AS u ON uu.url = u.url
WHERE 
    tu.sub_category = 'GOP'
    AND MONTH(t.created_at) = 1
    AND YEAR(t.created_at) = 2016
GROUP BY 
    tu.screen_name
ORDER BY 
    cntOfTweets DESC;

-- Query 8
SELECT m.screen_name AS mentionedUser, u.numFollowers, COUNT(DISTINCT t.posting_user) AS cntPostUser
FROM mentioned AS m
JOIN Twitter_User AS u ON m.screen_name = u.screen_name
JOIN Tweet AS t ON m.tid = t.tid
GROUP BY m.screen_name, u.numFollowers
ORDER BY COUNT(m.tid) DESC, u.numFollowers DESC
LIMIT 10;

-- Query 9
SELECT uu.url, COUNT(t.tid) AS url_count
FROM url AS uu
JOIN has_url AS hu ON uu.url = hu.url
JOIN Tweet AS t ON hu.tid = t.tid
JOIN Twitter_User AS u ON t.posting_user = u.screen_name
WHERE u.sub_category = 'GOP'
AND MONTH(t.created_at) IN (1, 2, 3)
AND YEAR(t.created_at) = 2016
GROUP BY uu.url
ORDER BY url_count DESC
LIMIT 10;

