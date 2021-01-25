CREATE TABLE sailors ( sid integer not null,
sname varchar(32),
rating integer,
age real,
PRIMARY KEY (sid) );

CREATE TABLE reserves ( sid integer not null,
bid integer not null,
day datetime not null );

CREATE TABLE boats ( bid integer not null,
bname varchar (20),
color varchar(10) );

INSERT INTO sailors (sid, sname, rating, age) VALUES
(12, 'Ram', 8, 45.0), 
(15, 'Ravinder', 7, 50.0),
(30, 'Sam', 9, 35.0),
(25, 'Bob', 8, 45.0);

INSERT INTO reserves ( sid, bid, day ) VALUES 
( 12, 101, '1998-10-10'),
( 15, 112, '1993-9-10'),
( 30, 152, '1996-9-10'),
( 25, 109, '1998-10-10');

INSERT INTO boats ( bid, bname, color ) VALUES 
( 101, 'Sagara', 'red'),
( 112, 'Samrat', 'red'),
( 152, 'Sea bird', 'black'),
( 109, 'Boeing', 'red');

SELECT A.SID , A.SNAME, A.RATING ,A.AGE
    FROM sailors AS A
    INNER JOIN reserves AS C ON A.SID =C.SID AND C.BID =101;
    
    SELECT B.BNAME
    FROM reserves AS C
    INNER JOIN sailors AS A ON A.SID =C.SID AND A.SNAME ='BOB'
    INNER JOIN boats AS B ON B.BID = C.BID;
    
    SELECT A.SNAME
    FROM sailors AS A
    INNER JOIN reserves AS C ON A.SID = C.SID
    INNER JOIN boats AS B ON B.BID = C.BID AND B.COLOR ='RED'
    ORDER BY A.AGE ;
    
	SELECT DISTINCT A.SNAME
    FROM sailors AS A 
    INNER JOIN reserves AS c ON A.SID IN (C.SID);
    
    SELECT A.SID , A.SNAME
    FROM reserves AS C
    INNER JOIN reserves AS D ON C.SID <> D.SID AND C.DAY =D.DAY
    INNER JOIN sailors AS A ON D.SID = A.SID;









