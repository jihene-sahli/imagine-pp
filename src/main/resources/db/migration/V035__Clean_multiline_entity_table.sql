LOCK TABLES `IW_MULTILINE_ENTITY` WRITE;
UPDATE `IW_MULTILINE_ENTITY` SET `IW_CLASS` = 'com.imaginepartners.imagineworkflow.models.rh.RhCandidat', `IW_NAME` = 'RhCandidat' WHERE `IW_MULTILINE_ENTITY_ID`='105';
DELETE FROM `IW_MULTILINE_ENTITY` WHERE `IW_MULTILINE_ENTITY_ID`='140';
UNLOCK TABLES;
