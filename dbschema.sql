DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS greenhousedata;



CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  username TEXT UNIQUE NOT NULL,
  upassword TEXT NOT NULL,
  alias TEXT NOT NULL
);

CREATE TABLE greenhousedata (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  recordtime TEXT NOT NULL,
  yield REAL NOT NULL,
  temperature REAL NOT NULL,
  humidity REAL NOT NULL
);


INSERT INTO users (username, upassword, alias) VALUES("user1", "pass1", "me");
INSERT INTO users (username, upassword, alias) VALUES("user2", "pass2", "you");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 00:00:00.0", "1874.79","67.8","62.0");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 03:00:00.0", "0","68.1","63.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 06:00:00.0", "0","72.4","57.4");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 09:00:00.0", "0","75.2","56.6");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 12:00:00.0", "0","79.6","52.9");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 15:00:00.0", "0","80.4","53.8");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 18:00:00.0", "0","77.1","57.1");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-21-04 21:00:00.0", "0","71.2","56.4");
INSERT INTO greenhousedata (recordtime, yield,temperature,humidity) VALUES("2022-22-04 00:00:00.0", "1489.21","69.3","61.4");