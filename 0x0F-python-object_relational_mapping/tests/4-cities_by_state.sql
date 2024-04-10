-- Create states table in hbtn_0e_4_usa with some data

CREATE DATABASE IF NOT EXISTS hbtn_0e_4_usa;
USE hbtn_0e_4_usa;

CREATE TABLE IF NOT EXISTS states (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(256) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO states (name) VALUES ("California"), ("Arizona"), ("Texas"), ("New York"), ("Nevada");

CREATE TABLE IF NOT EXISTS cities (
  id INT NOT NULL AUTO_INCREMENT,
  state_id INT NOT NULL,
  name VARCHAR(256) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY(state_id) REFERENCES states(id)
);
