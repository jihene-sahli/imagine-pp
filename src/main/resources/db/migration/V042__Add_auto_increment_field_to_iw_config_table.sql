LOCK TABLES `IW_CONFIG` WRITE;
ALTER TABLE `IW_CONFIG`
	DROP PRIMARY KEY,
	ADD `ID` INT(10) NOT NULL AUTO_INCREMENT FIRST,
	ADD COLUMN `CREATED_AT` DATETIME DEFAULT CURRENT_TIMESTAMP AFTER `DEFAULT_VALUE`,
	ADD COLUMN `UPDATED_AT` DATETIME DEFAULT NULL AFTER `CREATED_AT`,
	ADD PRIMARY KEY (`ID`);
UNLOCK TABLES;
