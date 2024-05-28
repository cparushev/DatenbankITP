DROP DATABASE IF EXISTS Swapp;
CREATE DATABASE Swapp;
USE Swapp;


CREATE TABLE User (
    username VARCHAR(50) PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(255)
);


CREATE TABLE EBike(
    id BIGINT PRIMARY KEY,
    name VARCHAR(255),
    marke VARCHAR(255),
    preis VARCHAR(255),
    akkulaufzeit VARCHAR(255),
    gebrauchszustand VARCHAR(255),
    image VARCHAR(255)
);


CREATE TABLE Inserat (
    username VARCHAR(50),
    ebike BIGINT PRIMARY KEY,
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ebike) REFERENCES Ebike(id) ON DELETE CASCADE ON UPDATE CASCADE
);


#CREATE USER 'test'@'%' IDENTIFIED BY 'test';
#GRANT ALL PRIVILEGES ON *.* TO 'test'@'%' WITH GRANT OPTION;
#FLUSH PRIVILEGES;



CREATE TABLE Favourites (
    id BIGINT PRIMARY KEY,
    username VARCHAR(50),
    ebike BIGINT,
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ebike) REFERENCES Ebike(id) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE Dislikes (
    id BIGINT PRIMARY KEY,
    username VARCHAR(50),
    ebike BIGINT,
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (ebike) REFERENCES Ebike(id) ON DELETE CASCADE ON UPDATE CASCADE
);