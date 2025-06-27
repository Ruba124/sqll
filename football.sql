-- Table for Teams
CREATE TABLE Team (
    TeamId INTEGER PRIMARY KEY,
    Name TEXT,
    League TEXT
);

-- Table for Players
CREATE TABLE Player (
    PlayerId INTEGER PRIMARY KEY,
    Name TEXT,
    Position TEXT,
    Age INTEGER,
    TeamId INTEGER,
    FOREIGN KEY (TeamId) REFERENCES Team(TeamId)
);

-- Add Arsenal and Real Madrid
INSERT INTO Team (TeamId, Name, League) VALUES
(1, 'Arsenal', 'Premier League'),
(2, 'Real Madrid', 'La Liga');

-- Add some players
INSERT INTO Player (PlayerId, Name, Position, Age, TeamId) VALUES
(1, 'Bukayo Saka', 'Winger', 22, 1),
(2, 'Martin Ødegaard', 'Midfielder', 25, 1),
(3, 'Declan Rice', 'Midfielder', 25, 1),
(4, 'Jude Bellingham', 'Midfielder', 21, 2),
(5, 'Vinícius Júnior', 'Winger', 24, 2),
(6, 'Toni Kroos', 'Midfielder', 34, 2);
