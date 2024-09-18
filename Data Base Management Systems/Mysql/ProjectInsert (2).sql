Use Coms363_Project3_2;
LOAD DATA LOCAL INFILE '/Users/neha/Documents/ComS363/Projects/Project3/dataCSV/tweets.csv'
IGNORE
INTO TABLE Tweet
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

LOAD DATA LOCAL INFILE '/Users/neha/Documents/ComS363/Projects/Project3/dataCSV/user.csv'
INTO TABLE Twitter_user
FIELDS TERMINATED BY ';'  
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(screen_name, name, sub_category, category, state, numFollowers, numFollowing);

LOAD DATA LOCAL INFILE '/Users/neha/Documents/ComS363/Projects/Project3/dataCSV/mentioned.csv'
IGNORE
INTO TABLE mentioned
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tid, screen_name);

LOAD DATA LOCAL INFILE '/Users/neha/Documents/ComS363/Projects/Project3/dataCSV/tagged.csv'
IGNORE
INTO TABLE hashtag
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@dummy, hastagname);

LOAD DATA LOCAL INFILE '/Users/neha/Documents/ComS363/Projects/Project3/dataCSV/urlused.csv'
IGNORE
INTO TABLE url
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@dummy, url);

LOAD DATA LOCAL INFILE '/Users/neha/Documents/ComS363/Projects/Project3/dataCSV/tagged.csv'
IGNORE
INTO TABLE has_tagged
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tid, hastagname);

LOAD DATA LOCAL INFILE '/Users/neha/Documents/ComS363/Projects/Project3/dataCSV/urlused.csv'
IGNORE
INTO TABLE has_url
FIELDS TERMINATED BY ';' OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(tid, url);