ALTER TABLE `tbl_account`
ADD `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin COMMENT '����'
AFTER `create_time`;

ALTER TABLE `tbl_account`
ADD `id_num` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin COMMENT '���֤��'
AFTER `name`;
