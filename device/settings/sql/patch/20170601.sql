-- -------------------
-- tbl_device
-- -------------------
ALTER TABLE `tbl_device`
ADD `record_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'ʱ��'
AFTER `device_id`;
