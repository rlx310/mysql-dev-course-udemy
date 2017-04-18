SELECT CONCAT(lName, ", ", fName) AS "Player",
    CONCAT(SUBSTRING(fName, 1, 1), SUBSTRING(lName, 1, 1)) AS "Initials",
    game1 AS "G1",
    game2 AS "G2",
    game3 AS "G3",
    game4 AS "G4",
    (game1 + game2 + game3 + game4) AS "Total Score",
    (game1 + game2 + game3 + game4) / 4 AS "Average Score"
    
    FROM Bowlers
;