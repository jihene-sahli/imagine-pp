LOCK TABLES `IW_MULTILINE_ENTITY` WRITE;
DELETE FROM `IW_MULTILINE_ENTITY` WHERE `IW_MULTILINE_ENTITY_ID` >= 201 AND `IW_MULTILINE_ENTITY_ID` <= 240;
UNLOCK TABLES;