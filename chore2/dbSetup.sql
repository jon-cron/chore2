CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';

DROP TABLE accounts;
DROP TABLE chores;

CREATE TABLE chores(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(255) NOT NULL,
  archived BOOLEAN NOT NULL DEFAULT false,
  category VARCHAR(255) NOT NULL,
  creatorId VARCHAR(255) NOT NULL,

  FOREIGN KEY (creatorId) REFERENCES accounts (id) ON DELETE CASCADE
) default charset utf8 COMMENT '';

INSERT INTO chores
(description,category,`creatorId`)
VALUES
('pick up leaves', 'yard work', '6387da8cdf89658f5215b5b5');

SELECT * FROM chores;
SELECT * FROM accounts;