DROP DATABASE IF  EXISTS poodleclub;
CREATE DATABASE poodleclub;
USE poodleclub;
CREATE TABLE dogowner (
dogowner VARCHAR(50) NOT NULL,
phonenumber int PRIMARY KEY 
);

CREATE TABLE dog(
pedigreenumner VARCHAR(5) PRIMARY KEY,
dogname VARCHAR(50) NOT NULL,
points int NOT NULL,
ownersphonenumber int,
FOREIGN KEY(ownersphonenumber) REFERENCES dogowner(phonenumber)
);

INSERT INTO dogowner (dogowner,phonenumber)
VALUES (
("John schmidt",66771026),
("Marie Anderson", 27097688),
("Erna Lang", 87561021),
("H. F. Lehmann", 45196400),
("J.Garmin", 78563423),
("John Schmidt", 66771026),
("Bo Karmann", 58902322),
("Erna Lang", 87561021),
("John Schmidt", 66771026)
);

INSERT INTO dog (pedigreenumner, dogname,points,ownersphonenumber)
VALUE (
("F2076","Mille",87,66771026),
("M1872","Whiskey",84,27097688),
("M2001","Udo",91,87561021),
("M1752","Basti",81,45196400),
("F2109","Dual",91,78563423),
("F2074","Molly",89,66771026),
("M1992","Mono",93,58902322),
("M2002","Cecil",92,87561021),
("M1950","King",80,66771026)
);




