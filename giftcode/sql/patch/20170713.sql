-- ---------------
-- tbl_giftcode_public
-- ---------------
ALTER TABLE `tbl_giftcode_public`
ADD `use_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'ʹ��ʱ��'
AFTER `batch_id`;

ALTER TABLE `tbl_giftcode_public`
ADD `player_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '���id'
AFTER `use_time`;

-- ---------------
-- tbl_giftcode_unique
-- ---------------
ALTER TABLE `tbl_giftcode_unique`
ADD `use_time` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'ʹ��ʱ��'
AFTER `batch_id`;

ALTER TABLE `tbl_giftcode_unique`
ADD `player_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '���id'
AFTER `use_time`;
