LOCK TABLES `IW_RIGHT` WRITE;
	ALTER TABLE `IW_RIGHT`
		ADD COLUMN `IW_RIGHT_TO_LAUNCH` BIT(1) NULL DEFAULT NULL AFTER `IW_STANDALONE_ID`,
		CHANGE COLUMN `IW_STANDALONE_ID` `IW_STANDALONE_ID` BIGINT(20) NULL DEFAULT NULL ;
UNLOCK TABLES;
