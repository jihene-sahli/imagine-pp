LOCK TABLES `IW_GROUP_DETAILS` WRITE;
UPDATE `IW_GROUP_DETAILS` SET `IW_VISIBALE` = 1 WHERE `IW_GROUP` NOT IN ('ROLE_SUPER_ADMIN','ROLE_USER');
UPDATE `IW_GROUP_DETAILS` SET `IW_VISIBALE` = 0 WHERE `IW_GROUP` IN ('ROLE_SUPER_ADMIN','ROLE_USER');
UNLOCK TABLES;