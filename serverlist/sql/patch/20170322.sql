-- ---------
-- tbl_account_info
-- ---------
DROP TABLE IF EXISTS `tbl_account_info`;
CREATE TABLE `tbl_account_info` (
    `ACCOUNT` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ʺ�',
    `SERVER_LIST` varchar(1024) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '��¼�����б�',
    PRIMARY KEY (`ACCOUNT`)
) ENGINE=InnoDB;
