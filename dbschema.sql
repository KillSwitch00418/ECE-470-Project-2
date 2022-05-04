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
  sensorid TEXT NOT NULL,
  recordtime TEXT NOT NULL,
  readvalue REAL NOT NULL
);


INSERT INTO users (username, upassword, alias) VALUES("user1", "pass1", "me");
INSERT INTO users (username, upassword, alias) VALUES("user2", "pass2", "you");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("YIELD", "2022-21-04 00:00:00.0", "1874.79:");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 00:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 00:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 00:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 03:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 03:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 03:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 06:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 06:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 06:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 09:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 09:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 09:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 12:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 12:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 12:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 15:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 15:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 15:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 18:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 18:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 18:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-21-04 21:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-21-04 21:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-21-04 21:00:00.0", "1775.92");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("YIELD", "2022-22-04 00:00:00.0", "1912.13");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("TEMP_DHT22", "2022-22-04 00:00:00.0", "75.77");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("HMDY_DHT22", "2022-22-04 00:00:00.0", "45.01");
INSERT INTO greenhousedata (sensorid, recordtime, readvalue) VALUES("NUTR_PPM47", "2022-22-04 00:00:00.0", "1775.92");
