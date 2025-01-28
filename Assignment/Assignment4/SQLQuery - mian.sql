CREATE DATABASE SecondDB;


CREATE TABLE Users (
    uid INT NOT NULL PRIMARY KEY ,
    uname NVARCHAR(255)
);

CREATE TABLE Forum (
    fname NVARCHAR(255) PRIMARY KEY NOT NULL,
    topic NVARCHAR(255) NOT NULL,
    createDate DATETIME DEFAULT
);

CREATE TABLE Message (
    mid INT NOT NULL PRIMARY KEY IDENTITY(1, 1),
    title NVARCHAR(255) NOT NULL,
    body NTEXT NOT NULL,
    createDate DATETIME DEFAULT,
    parentMsgId INT NULL, 
    fname NVARCHAR(255) NOT NULL,
    creatorId INT NOT NULL,
    FOREIGN KEY (parentMsgId) REFERENCES Message(mid), 
    FOREIGN KEY (fname) REFERENCES Forum(fname),
    FOREIGN KEY (creatorId) REFERENCES Users(uid)
);
