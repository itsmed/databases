CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  'messageID' INT(10) NOT NULL PRIMARY KEY AUTOINCREMENT,
  'messageText' VARCHAR(140) NOT NULL,
  'roomID' VARCHAR(10) NOT NULL,
  'userID' INT(10) NOT NULL,
  FOREIGN KEY ('userID') REFERENCES 'users' ('userID')
);

/* Create other tables and define schemas for them here! */
CREATE TABLE users (
  'userID' INT(10) NOT NULL,
  'userName' VARCHAR(15) NOT NULL,
 'messageID' INT(10) NOT NULL,
  PRIMARY KEY ('userID'),
  FOREIGN KEY ('messageID') REFERENCES 'messages' ('messageID')
);

CREATE TABLE rooms (
'roomID' INT(10) NOT NULL,
'roomName' VARCHAR(15) NOT NULL,
'messageID' INT(10) NOT NULL,
'userID' INT(10) NOT NULL,
PRIMARY KEY ('roomID'),
FOREIGN KEY ('messageID') REFERENCES 'messages' ('messageID'),
FOREIGN KEY ('userID') REFERENCES 'users' ('userID')
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

