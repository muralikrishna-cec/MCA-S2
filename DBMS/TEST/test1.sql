CREATE TABLE ACTOR (
    Act_id INT PRIMARY KEY,
    Act_Name VARCHAR(100),
    Act_Gender CHAR(1)
);

CREATE TABLE DIRECTOR (
    Dir_id INT PRIMARY KEY,
    Dir_Name VARCHAR(100),
    Dir_Phone VARCHAR(15)
);

CREATE TABLE MOVIES (
    Mov_id INT PRIMARY KEY,
    Mov_Title VARCHAR(100),
    Mov_Year INT,
    Mov_Lang VARCHAR(50),
    Dir_id INT,
    FOREIGN KEY (Dir_id) REFERENCES DIRECTOR(Dir_id)
);

CREATE TABLE MOVIE_CAST (
    Act_id INT,
    Mov_id INT,
    Role VARCHAR(100),
    PRIMARY KEY (Act_id, Mov_id),
    FOREIGN KEY (Act_id) REFERENCES ACTOR(Act_id),
    FOREIGN KEY (Mov_id) REFERENCES MOVIES(Mov_id)
);

CREATE TABLE RATING (
    Mov_id INT PRIMARY KEY,
    Rev_Stars INT,
    FOREIGN KEY (Mov_id) REFERENCES MOVIES(Mov_id)
);


-- ACTORS
INSERT INTO ACTOR VALUES (1, 'Mohanlal', 'M');
INSERT INTO ACTOR VALUES (2, 'Dulquer Salmaan', 'M');
INSERT INTO ACTOR VALUES (3, 'Parvathy', 'F');

-- DIRECTORS
INSERT INTO DIRECTOR VALUES (1, 'Priyadarshan', '1234567890');
INSERT INTO DIRECTOR VALUES (2, 'Vineeth Sreenivasan', '0987654321');

-- MOVIES
INSERT INTO MOVIES VALUES (101, 'Kireedam', 1989, 'Malayalam', 1);
INSERT INTO MOVIES VALUES (102, 'Drishyam', 2013, 'Malayalam', 1);
INSERT INTO MOVIES VALUES (103, 'Hridayam', 2022, 'Malayalam', 2);
INSERT INTO MOVIES VALUES (104, 'Classmates', 2006, 'Malayalam', 2);
INSERT INTO MOVIES VALUES (105, 'Spadikam', 1995, 'Malayalam', 1);

-- MOVIE_CAST
INSERT INTO MOVIE_CAST VALUES (1, 101, 'Sethumadhavan');
INSERT INTO MOVIE_CAST VALUES (1, 102, 'Georgekutty');
INSERT INTO MOVIE_CAST VALUES (2, 103, 'Arun');
INSERT INTO MOVIE_CAST VALUES (3, 103, 'Darshana');
INSERT INTO MOVIE_CAST VALUES (2, 104, 'Sukumaran');

-- RATING
INSERT INTO RATING VALUES (101, 4);
INSERT INTO RATING VALUES (102, 5);
INSERT INTO RATING VALUES (103, 4);
INSERT INTO RATING VALUES (104, 3);


SELECT DISTINCT M.Mov_Title
FROM MOVIES M
JOIN MOVIE_CAST MC ON M.Mov_id = MC.Mov_id
JOIN ACTOR A ON MC.Act_id = A.Act_id
WHERE A.Act_Name = 'Mohanlal';

SELECT DISTINCT M.Mov_Title
FROM MOVIES M
JOIN MOVIE_CAST MC ON M.Mov_id = MC.Mov_id
WHERE MC.Act_id IN (
    SELECT Act_id
    FROM MOVIE_CAST
    GROUP BY Act_id
    HAVING COUNT(DISTINCT Mov_id) >= 2
);


SELECT D.Dir_Name
FROM DIRECTOR D
WHERE D.Dir_id IN (
    SELECT Dir_id FROM MOVIES WHERE Mov_Year < 2000
)
AND D.Dir_id IN (
    SELECT Dir_id FROM MOVIES WHERE Mov_Year > 2015
);



UPDATE RATING
SET Rev_Stars = 5
WHERE Mov_id IN (
    SELECT M.Mov_id
    FROM MOVIES M
    JOIN DIRECTOR D ON M.Dir_id = D.Dir_id
    WHERE D.Dir_Name = 'Vineeth Sreenivasan'
);


DELIMITER $$

CREATE PROCEDURE AddMovieDetails(
    IN p_title VARCHAR(100),
    IN p_year INT,
    IN p_lang VARCHAR(50),
    IN p_dir_id INT
)
BEGIN
    INSERT INTO MOVIES (Mov_Title, Mov_Year, Mov_Lang, Dir_id)
    VALUES (p_title, p_year, p_lang, p_dir_id);
END $$

DELIMITER ;
