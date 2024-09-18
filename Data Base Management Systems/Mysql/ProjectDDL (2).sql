CREATE DATABASE  IF NOT EXISTS Coms363_Project3_2;
USE Coms363_Project3_2;

DROP TABLE IF EXISTS has_url;
DROP TABLE IF EXISTS has_tagged;
DROP TABLE IF EXISTS mentioned;
DROP TABLE IF EXISTS Tweet;
DROP TABLE IF EXISTS Twitter_User;
DROP TABLE IF EXISTS hashtag;
DROP TABLE IF EXISTS url;

CREATE TABLE Tweet (
	tid bigint NOT NULL,
    textbody text,
    retweet_count int(11) DEFAULT NULL,
    retweeted tinyint(1) DEFAULT NULL,
    created_at datetime default null,
    posting_user varchar(50) DEFAULT NULL,
    PRIMARY KEY (tid));
  
CREATE TABLE Twitter_User (
	screen_name varchar(20) NOT NULL,
    name varchar(50),
    sub_category ENUM ('GOP','DEMOCRAT','NULL', 'na'),
    category ENUM ('senate_group','presidential_candidate', 'reporter', 'Senator', 'House_representative', 'General',  'NULL'),
    state varchar(20) DEFAULT NULL,
    numFollowers int DEFAULT NULL,
    numFollowing int default NULL,
    PRIMARY KEY (screen_name));
  
CREATE TABLE mentioned (
	tid bigint NOT NULL,
    screen_name VARCHAR(20) NOT NULL,
    PRIMARY KEY (tid,screen_name),
    FOREIGN KEY (tid) references Tweet(tid),
    FOREIGN KEY (screen_name) references Twitter_User(screen_name)
);
CREATE TABLE hashtag(
	hastagname VARCHAR(300) Primary KEY
);

CREATE TABLE has_tagged (
	tid bigint NOT NULL,
    hastagname VARCHAR(100) NOT NULL,
    PRIMARY KEY (tid, hastagname),
    CONSTRAINT has_tagged_tid FOREIGN KEY (tid) REFERENCES Tweet(tid),
    CONSTRAINT has_tagged_hastagname FOREIGN KEY (hastagname) REFERENCES hashtag(hastagname)
);

CREATE TABLE url(
	url varchar(555) NOT NULL,
	PRIMARY KEY (url)
);

CREATE TABLE has_url (
	tid bigint NOT NULL,
    url varchar(555) NOT NULL,
    PRIMARY KEY (tid, url),
    CONSTRAINT has_url_tid FOREIGN KEY (tid) REFERENCES Tweet(tid),
    CONSTRAINT has_url FOREIGN KEY (url) REFERENCES url(url)
);