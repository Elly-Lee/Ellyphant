DROP DATABASE IF EXISTS cuni2;

CREATE DATABASE cuni2;

USE cuni2;

CREATE TABLE `member` (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    regDate DATETIME NOT NULL,
    loginId CHAR(50) NOT NULL,
    loginPw CHAR(50) NOT NULL,
    `name` CHAR(50) NOT NULL
);

ALTER TABLE `cuni2`.`member` ADD UNIQUE INDEX (`loginId`);

INSERT INTO `member`
SET regDate = NOW(),
`name` = '홍길동',
`loginId` ='user1',
`loginPw` = 'user1';

INSERT INTO `member`
SET regDate = NOW(),
`name` = '홍길순',
`loginId` = 'user2',
`loginPw` = 'user2';

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
    memberId INT(10) UNSIGNED NOT NULL,
    title CHAR(100) NOT NULL,
    `body` CHAR(100) NOT NULL,
    hit INT(10) UNSIGNED DEFAULT 0 NOT NULL
);

INSERT INTO article
SET regDate = NOW(),
boardId = 1,
memberId = 1,
title = '제목1',
`body` = '제목1';

INSERT INTO article
SET regDate = NOW(),
boardId = 2,
memberId = 2,
title = '제목2',
`body` = '제목2';

INSERT INTO article
SET regDate = NOW(),
boardId = 1,
memberId = 2,
title = '제목3',
`body` = '제목3';

# 좋아요
CREATE TABLE `articleLike` (
    id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    PRIMARY KEY(id),
    regDate DATETIME NOT NULL,
    articleId INT(10) UNSIGNED NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    `point` TINYINT(1) UNSIGNED NOT NULL
);