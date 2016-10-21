#内容表
CREATE TABLE `MARS_FEED_CONTENT` (
  `ID` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `AUTHOR_ID` BIGINT NOT NULL COMMENT '谁写的',
  `CONTENT_TYPE` TINYINT NOT NULL COMMENT '写的什么类型的内容',
  `TITLE` TEXT COMMENT '内容的主题是什么,也可以没主题,随笔无题',
  `CONTENT` TEXT COMMENT '写的什么内容',
  `VERSION` TINYINT NOT NULL DEFAULT '1' COMMENT '泼出去的水,还是可以改的',
  `M_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '什么时候修改的',
  `C_TIME` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '什么时候保存的',
  `IS_DELETE` TINYINT NOT NULL DEFAULT '0' COMMENT '是不是删了',
  PRIMARY KEY (`ID`)
);

#文章表
CREATE TABLE `MARS_FEED_ARTICLE` (
  `ID` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  PRIMARY KEY (`ID`)
);

#评论表
CREATE TABLE `MARS_FEED_COMMENT` (
  `ID` BIGINT NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  PRIMARY KEY (`ID`)
);
