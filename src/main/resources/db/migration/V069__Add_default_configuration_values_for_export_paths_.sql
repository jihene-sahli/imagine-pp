LOCK TABLES `IW_CONFIG` WRITE;
	UPDATE `IW_CONFIG` SET `CONFIG_VALUE`='UPLOADED_FILES', `DEFAULT_VALUE`='UPLOADED_FILES' WHERE `CONFIG_NAME`='file_export_path_csv';
	UPDATE `IW_CONFIG` SET `CONFIG_VALUE`='UPLOADED_FILES', `DEFAULT_VALUE`='UPLOADED_FILES' WHERE `CONFIG_NAME`='file_export_path_excel';
	UPDATE `IW_CONFIG` SET `CONFIG_VALUE`='UPLOADED_FILES', `DEFAULT_VALUE`='UPLOADED_FILES' WHERE `CONFIG_NAME`='file_export_path_pdf';
	UPDATE `IW_CONFIG` SET `CONFIG_VALUE`='UPLOADED_FILES', `DEFAULT_VALUE`='UPLOADED_FILES' WHERE `CONFIG_NAME`='file_export_path_log';
UNLOCK TABLES;
