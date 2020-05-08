DROP DATABASE IF EXISTS cuni2;

CREATE DATABASE cuni2;

USE cuni2;

CREATE TABLE article (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    regDate DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` CHAR(100) NOT NULL
);

INSERT INTO article
SET regDate = NOW(),
title = '제목1',
`body` = '제목1';

INSERT INTO article
SET regDate = NOW(),
title = '제목2',
`body` = '제목2';

INSERT INTO article
SET regDate = NOW(),
title = '제목3',
`body` = '제목3',