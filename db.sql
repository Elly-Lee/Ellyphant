DROP DATABASE IF EXISTS cuni2;

CREATE DATABASE cuni2;

USE cuni2;

CREATE TABLE board (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    regDate DATETIME NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `code` VARCHAR(50) NOT NULL
);

ALTER TABLE board ADD INDEX(`code`);

INSERT INTO board
SET regDate = NOW(),
`name` = '공지사항',
`code` = 'notice';

INSERT INTO board
SET regDate = NOW(),
`name` = '자유게시판',
`code` = 'free';

CREATE TABLE article (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    regDate DATETIME NOT NULL,
    boardId INT(10) UNSIGNED NOT NULL,
    title CHAR(100) NOT NULL,
    `body` CHAR(100) NOT NULL
);

INSERT INTO article
SET regDate = NOW(),
boardId = 1,
title = '제목1',
`body` = '제목1';

INSERT INTO article
SET regDate = NOW(),
boardId = 2,
title = '제목2',
`body` = '제목2';

INSERT INTO article
SET regDate = NOW(),
boardId = 1,
title = '제목3',
`body` = '제목3',