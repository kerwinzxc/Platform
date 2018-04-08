-- -------------------
-- tbl_talkingdata_ad_click
-- -------------------
DROP TABLE IF EXISTS `tbl_talkingdata_ad_click`;
CREATE TABLE `tbl_talkingdata_ad_click` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appkey` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'APPKEY',
  `spread_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�Ψһ��ʶ',
  `spread_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�����',
  `ua` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸UA��Ϣ',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸IP��Ϣ',
  `click_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�������ʱ��',
  `adnet_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ���������',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- -------------------
-- tbl_talkingdata_ad_active
-- -------------------
DROP TABLE IF EXISTS `tbl_talkingdata_ad_active`;
CREATE TABLE `tbl_talkingdata_ad_active` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appkey` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'APPKEY',
  `event_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Ӧ�ü���ʱ��',
  `os_version` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸��ϵͳ�汾',
  `device_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸������',
  `mac` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `advertising_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `android_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `imei` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'IMEI',
  `tdid` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'TDID',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '����IP',
  `spread_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�Ψһ��ʶ',
  `spread_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�����',
  `ua` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸UA��Ϣ',
  `click_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸IP��Ϣ',
  `click_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�������ʱ��',
  `adnet_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ���������',
  `channel_package_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Ӧ���м��ɵķְ�ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- -------------------
-- tbl_talkingdata_ad_register
-- -------------------
DROP TABLE IF EXISTS `tbl_talkingdata_ad_register`;
CREATE TABLE `tbl_talkingdata_ad_register` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appkey` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'APPKEY',
  `event_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Ӧ�ü���ʱ��',
  `os_version` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸��ϵͳ�汾',
  `device_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸������',
  `mac` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `advertising_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `android_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `imei` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'IMEI',
  `tdid` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'TDID',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '����IP',
  `spread_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�Ψһ��ʶ',
  `spread_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�����',
  `ua` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸UA��Ϣ',
  `click_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸IP��Ϣ',
  `click_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�������ʱ��',
  `adnet_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ���������',
  `channel_package_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Ӧ���м��ɵķְ�ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- -------------------
-- tbl_talkingdata_ad_create_role
-- -------------------
DROP TABLE IF EXISTS `tbl_talkingdata_ad_create_role`;
CREATE TABLE `tbl_talkingdata_ad_create_role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appkey` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'APPKEY',
  `role_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��ɫ��',
  `account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Account ID',
  `event_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�¼�ʱ��',
  `os_version` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸��ϵͳ�汾',
  `device_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸������',
  `mac` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `advertising_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `android_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `imei` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'IMEI',
  `tdid` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'TDID',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '����IP',
  `spread_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�Ψһ��ʶ',
  `spread_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�����',
  `ua` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸UA��Ϣ',
  `click_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸IP��Ϣ',
  `click_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�������ʱ��',
  `adnet_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ���������',
  `deeplink` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'deeplink',
  `channel_package_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Ӧ���м��ɵķְ�ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB;

-- -------------------
-- tbl_talkingdata_ad_pay
-- -------------------
DROP TABLE IF EXISTS `tbl_talkingdata_ad_pay`;
CREATE TABLE `tbl_talkingdata_ad_pay` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `appkey` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'APPKEY',
  `order_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '������',
  `amount` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '������',
  `currency_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������',
  `account_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Account ID',
  `event_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�¼�ʱ��',
  `os_version` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸��ϵͳ�汾',
  `device_type` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�豸������',
  `mac` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `advertising_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `android_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'android�豸id',
  `imei` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'IMEI',
  `tdid` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'TDID',
  `ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '����IP',
  `spread_url` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�Ψһ��ʶ',
  `spread_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ�����',
  `ua` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸UA��Ϣ',
  `click_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '��������豸IP��Ϣ',
  `click_time` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�������ʱ��',
  `adnet_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '�ƹ���������',
  `deeplink` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'deeplink',
  `channel_package_id` varchar(128) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'Ӧ���м��ɵķְ�ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY unq_ua(`order_id`)
) ENGINE=InnoDB;

