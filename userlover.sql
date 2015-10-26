CREATE DATABASE userlover;
USE userlover;

CREATE TABLE user (
	id int(10) NOT NULL AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	PRIMARY KEY (id)) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO user(name)
VALUES ('quan'),
	   ('thom'),
	   ('hien'),
	   ('chinh'),
	   ('trang'),
	   ('khoa');

CREATE TABLE lover (
	idlover int(11) NOT NULL AUTO_INCREMENT,
	user1 int(11) NOT NULL,
	user2 int(11) NOT NULL,
	PRIMARY KEY (idlover)) 
ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO lover(user1, user2)
VALUES (1,2),
	   (3,4),
	   (5,6);

SELECT X.name as Lover1, Y.name as Lover2
FROM (user as X JOIN user as Y) JOIN lover as L 
ON X.id = L.user1 AND Y.id = L.user2
