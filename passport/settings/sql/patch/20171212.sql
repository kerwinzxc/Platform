
ALTER TABLE `tbl_account`
ADD `last_login_time` bigint NOT NULL DEFAULT 0 COMMENT '�ϴε�¼ʱ��'
AFTER `id_num`;
