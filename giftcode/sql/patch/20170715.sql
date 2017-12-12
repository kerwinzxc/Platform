-- ---------------
-- tbl_giftcode_public
-- ---------------
ALTER TABLE `tbl_giftcode_public`
ADD `start_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '��ʼʱ��'
AFTER `player_id`;

ALTER TABLE `tbl_giftcode_public`
ADD `end_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '����ʱ��'
AFTER `start_time`;

-- ---------------
-- tbl_giftcode_unique
-- ---------------
ALTER TABLE `tbl_giftcode_unique`
ADD `start_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '��ʼʱ��'
AFTER `player_id`;

ALTER TABLE `tbl_giftcode_unique`
ADD `end_time` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '����ʱ��'
AFTER `start_time`;
