CREATE TABLE BowlResults (
    BowlResultID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    fName VARCHAR(50) DEFAULT NULL,
    lName VARCHAR(50) DEFAULT NULL,
    game_sum INT DEFAULT NULL,
    game_score INT DEFAULT NULL,
    
    PRIMARY KEY (BowlResultID)
);

INSERT INTO BowlResults(fName, lName, game_num, game_score) VALUES
    ('Mashur', 'Hossain', 1, 121),
    ('Mashur', 'Hossain', 2, 87),
    ('Mashur', 'Hossain', 3, 115),
    ('Mashir', 'Hossain', 4, 124),
    ('Matt', 'Berstein', 1, 111),
    ('Matt', 'Berstein', 2, 99),
    ('Matt', 'Berstein', 3, 135),
    ('Matt', 'Berstein', 4, 105),
    ('Anastasia', 'Ivanov', 1, 75),
    ('Anastasia', 'Ivanov', 2, 99),
    ('Anastasia', 'Ivanov', 3, 125),
    ('Anastasia', 'Ivanov', 4, 141),
    ('Mark', 'Futre', 1, 115),
    ('Mark', 'Futre', 2, 128),
    ('Mark', 'Futre', 3, 101),
    ('Mark', 'Futre', 4, 84)
;
