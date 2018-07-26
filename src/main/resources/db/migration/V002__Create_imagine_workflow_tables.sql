CREATE TABLE `IW_AGENDA` (
	`IW_AGENDA_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_COLOR` varchar(50) DEFAULT NULL,
	`IW_DESCRIPTION` longtext,
	`IW_END_DATE` date DEFAULT NULL,
	`IW_START_DATE` date DEFAULT NULL,
	`IW_TITLE` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`IW_AGENDA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_APPLICATION` (
	`IW_APPLICATION_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_COLOR` varchar(255) DEFAULT NULL,
	`IW_DATE` date DEFAULT NULL,
	`IW_DESCRIPTION` varchar(255) DEFAULT NULL,
	`IW_ICON` varchar(255) DEFAULT NULL,
	`IW_KEY` varchar(255) DEFAULT NULL,
	`IW_LISTING_INDEX` int(11) DEFAULT NULL,
	`IW_NAME` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`IW_APPLICATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_APPLICATION_PROCESS` (
	`IW_APPlICATION_PROCESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_APPlICATION_KEY` varchar(50) DEFAULT NULL,
	`IW_PROCESS_KEY` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`IW_APPlICATION_PROCESS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_BOOKING` (
	`IW_BOOKING_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_ALL_DAY` bit(1) NOT NULL,
	`IW_END_TIME` datetime NOT NULL,
	`IW_START_TIME` datetime NOT NULL,
	`IW_STATUS` varchar(64) NOT NULL,
	`IW_TENANT` varchar(255) NOT NULL,
	`IW_RESOURCE_ID` int(11) NOT NULL,
	PRIMARY KEY (`IW_BOOKING_ID`),
	KEY `IW_FK_BOOKING_RESOURCE` (`IW_RESOURCE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_CAR` (
	`IW_CAR_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_DESCRIPTION` varchar(45) DEFAULT NULL,
	`IW_INTITULE` varchar(255) NOT NULL,
	PRIMARY KEY (`IW_CAR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_CENTRAL_AISLE` (
	`IW_CENTRAL_AISLE_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_DESCRIPTION` varchar(45) DEFAULT NULL,
	`IW_INTITULE` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`IW_CENTRAL_AISLE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_CONFIG` (
	`CONFIG_NAME` varchar(250) NOT NULL,
	`CONFIG_DESCRIPTION` longtext,
	`CONFIG_EDITABLE` bit(1) DEFAULT NULL,
	`CONFIG_VALUE` longtext,
	`DEFAULT_VALUE` longtext,
	PRIMARY KEY (`CONFIG_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_EVENT` (
	`IW_EVENT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_ALL_DAY` bit(1) DEFAULT NULL,
	`IW_COLOR` varchar(255) DEFAULT NULL,
	`IW_DESCRIPTION` varchar(255) DEFAULT NULL,
	`IW_END_DATE` datetime DEFAULT NULL,
	`IW_GROUP` varchar(255) DEFAULT NULL,
	`IW_START_DATE` datetime DEFAULT NULL,
	`IW_TITRE` varchar(255) DEFAULT NULL,
	`IW_USER` varchar(255) DEFAULT NULL,
	`IW_EVENT_TYPE` bigint(20) DEFAULT NULL,
	PRIMARY KEY (`IW_EVENT_ID`),
	KEY `IW_FK_EVENT_TYPE` (`IW_EVENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_EVENT_TYPE` (
	`IW_EVENT_TYPE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_NAME` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`IW_EVENT_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_FILE` (
	`IW_FILE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_MIME` longtext NOT NULL,
	`IW_NAME` longtext NOT NULL,
	`IW_PATH` longtext NOT NULL,
	`IW_SIZE` bigint(20) NOT NULL,
	`IW_UPLOAD` bigint(20) NOT NULL,
	PRIMARY KEY (`IW_FILE_ID`),
	KEY `IW_FK_FILE_UPLOAD` (`IW_UPLOAD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_FORM` (
	`IW_FORM_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_CREATE_TIME` datetime DEFAULT NULL,
	`IW_DESCRIPTION` varchar(255) DEFAULT NULL,
	`IW_FORM_SOURCE_JSON` longtext,
	`IW_LAST_UPDATE_TIME` datetime DEFAULT NULL,
	`IW_LISTING_INDEX` int(11) DEFAULT NULL,
	`IW_NAME` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`IW_FORM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_FORM_TEMPLATE` (
	`IW_FORM_TEMPLATE_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_DESCRIPTION` varchar(254) DEFAULT NULL,
	`IW_NAME` varchar(254) DEFAULT NULL,
	`IW_VALUE` varchar(254) DEFAULT NULL,
	PRIMARY KEY (`IW_FORM_TEMPLATE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_GROUP_DETAILS` (
	`IW_GROUP_DETAILS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_ACTIVE` bit(1) DEFAULT NULL,
	`IW_GROUP` varchar(64) NOT NULL,
	`IW_RESPONSIBLE` varchar(64) DEFAULT NULL,
	`IW_TYPE` varchar(64) DEFAULT NULL,
	`IW_VISIBALE` bit(1) DEFAULT NULL,
	PRIMARY KEY (`IW_GROUP_DETAILS_ID`),
	UNIQUE KEY `IW_UK_GROUP` (`IW_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_GROUP_HIERARCHY` (
	`IW_GROUP_HIERARCHY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_GROUP` varchar(64) DEFAULT NULL,
	`IW_HIERARCHY_TYPE` varchar(45) DEFAULT NULL,
	`IW_PARANT` varchar(64) DEFAULT NULL,
	PRIMARY KEY (`IW_GROUP_HIERARCHY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_HEAD_GONDOLA` (
	`IW_HEAD_GONDOLA_ID` int(11) NOT NULL,
	`IW_DESCRIPTION` varchar(45) DEFAULT NULL,
	`IW_INTITULE` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`IW_HEAD_GONDOLA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_INPUT` (
	`IW_INPUT_ID` varchar(255) NOT NULL,
	`IW_EXPORT` tinyint(1) DEFAULT '0',
	`IW_IMPORT` tinyint(1) DEFAULT '0',
	`IW_SEARCH` tinyint(1) DEFAULT '0',
	`IW_INPUT_TYPE` varchar(64) NOT NULL,
	`IW_DATE_FORMAT` varchar(64) DEFAULT NULL,
	`IW_DESCRIPTION` longtext,
	`IW_EDITABLE` bit(1) DEFAULT NULL,
	`IW_ENTITY_FILTER` longblob,
	`IW_VALIDATION_ERROR_MSG` varchar(255) DEFAULT NULL,
	`IW_INDEX` int(11) DEFAULT NULL,
	`IW_LABEL` varchar(250) DEFAULT NULL,
	`IW_MULTIPLE` bit(1) DEFAULT NULL,
	`IW_NUMBER_SUB_COLOMNS` longblob,
	`IW_NUMBER_SUB_ROWS` longblob,
	`IW_TAB1` varchar(254) DEFAULT NULL,
	`IW_TAB2` varchar(254) DEFAULT NULL,
	`IW_OPTIONS` longblob,
	`IW_OPTIONS2` longblob,
	`IW_OPTIONS3` longblob,
	`IW_PLACEHOLDER` varchar(250) DEFAULT NULL,
	`IW_READ_GROUPS` longblob,
	`IW_READ_USERS` longblob,
	`IW_VALIDATION_REGEX` varchar(255) DEFAULT NULL,
	`IW_REQUIRED` bit(1) DEFAULT NULL,
	`IW_SUB_COLUMNS` longblob,
	`IW_SUB_ROWS` longblob,
	`IW_VALIDATION` varchar(250) DEFAULT NULL,
	`IW_VALUE` longtext,
	`IW_WIDTH_SUB_COLUMNS` longblob,
	`IW_WRITE_GROUPS` longblob,
	`IW_WRITE_USERS` longblob,
	`IW_FORM` bigint(20) NOT NULL,
	`IW_VARIABLE_PROCESS` bigint(20) DEFAULT NULL,
	PRIMARY KEY (`IW_INPUT_ID`),
	KEY `IW_FK_INPUT_FORM` (`IW_FORM`),
	KEY `IW_FK_INPUT_VARIABLE_PROCESS` (`IW_VARIABLE_PROCESS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_LICENSE` (
	`IW_LICENSE_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_ACTIVE` bit(1) DEFAULT NULL,
	`IW_DATE` datetime DEFAULT NULL,
	`IW_FILE_NAME` varchar(255) DEFAULT NULL,
	`IW_LICENSE_BYTES` longblob,
	PRIMARY KEY (`IW_LICENSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_LIST` (
	`IW_LIST_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_DESCIRPTION` varchar(45) DEFAULT NULL,
	`IW_NAME` varchar(50) DEFAULT NULL,
	`IW_POSTED_DATE` date DEFAULT NULL,
	`IW_TITLE` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`IW_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_LIST_OPTIONS` (
	`IW_LIST_OPTIONS_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_DESCIRPTION` longtext,
	`IW_NAME` varchar(50) DEFAULT NULL,
	`IW_LIST_ID` bigint(20) DEFAULT NULL,
	PRIMARY KEY (`IW_LIST_OPTIONS_ID`),
	KEY `IW_PK_OPTIONS_LIST` (`IW_LIST_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_LIST_TEST` (
	`ID_PERSON` int(11) NOT NULL AUTO_INCREMENT,
	`NOM` varchar(255) DEFAULT NULL,
	`OPTION_VALUE` varchar(255) DEFAULT NULL,
	`PRENOM` varchar(255) DEFAULT NULL,
	`IWLISTID` bigint(20) DEFAULT NULL,
	PRIMARY KEY (`ID_PERSON`),
	KEY `IW_FK_LIST` (`IWLISTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_LOAN` (
	`IW_LOAN_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_ALL_DAY` bit(1) NOT NULL,
	`IW_END_TIME` datetime NOT NULL,
	`IW_START_TIME` datetime NOT NULL,
	`IW_STATUS` varchar(64) NOT NULL,
	`IW_TENANT` varchar(255) NOT NULL,
	`IW_CAR` int(11) NOT NULL,
	PRIMARY KEY (`IW_LOAN_ID`),
	KEY `IW_LOAN_CAR` (`IW_CAR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_MAIL` (
	`IW_MAIL_ID` bigint(20) NOT NULL,
	`IW_CONTENT` longtext,
	`IW_RECIEVER` varchar(50) DEFAULT NULL,
	`IW_SENDER` varchar(50) DEFAULT NULL,
	`IW_SENDING_DATE` date DEFAULT NULL,
	`IW_SUBJECT` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`IW_MAIL_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_MEETING_ROOM` (
	`IW_MEETING_ROOM_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_DESCRIPTION` varchar(45) DEFAULT NULL,
	`IW_INTITULE` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`IW_MEETING_ROOM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_MODEL_DETAILS` (
	`IW_MODEL_DETAILS_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_ACT_MODEL_ID` varchar(255) DEFAULT NULL,
	`IW_LISTING_INDEX` int(11) DEFAULT NULL,
	PRIMARY KEY (`IW_MODEL_DETAILS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_MULTILINE_ENTITY` (
	`IW_MULTILINE_ENTITY_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_CLASS` varchar(254) DEFAULT NULL,
	`IW_NAME` varchar(254) DEFAULT NULL,
	PRIMARY KEY (`IW_MULTILINE_ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_MULTILINE_ENTITY_FIELD` (
	`IW_MULTILINE_ENTITY_FIELD_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_MULTILINE_ENTITY_FIELD_DESCRIPTION` varchar(64) DEFAULT NULL,
	`IW_MULTILINE_ENTITY_FIELD_NAME` varchar(64) DEFAULT NULL,
	`IW_LIST` bigint(20) DEFAULT NULL,
	`IW_MULTILINE_ENTITY` bigint(20) DEFAULT NULL,
	PRIMARY KEY (`IW_MULTILINE_ENTITY_FIELD_ID`),
	KEY `IW_FK_FIELD_LIST` (`IW_LIST`),
	KEY `IW_FK_MULTILINE_ENTITY` (`IW_MULTILINE_ENTITY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_PHASE` (
	`IW_PHASE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_PHASE_NAME` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`IW_PHASE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_PROGRESS` (
	`IW_PROGRESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_PROC_KEY` varchar(64) NOT NULL,
	`IW_PROGRESS_END` decimal(5,2) NOT NULL,
	`IW_PROGRESS_RATE` decimal(5,2) NOT NULL,
	`IW_TASK` varchar(64) NOT NULL,
	`IW_PHASE` bigint(20) DEFAULT NULL,
	PRIMARY KEY (`IW_PROGRESS_ID`),
	KEY `IW_FK_PROGRESS_PHASE` (`IW_PHASE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_RECORDING_STUDIO` (
	`IW_RECORDING_STUDIO_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_DESCRIPTION` varchar(45) DEFAULT NULL,
	`IW_INTITULE` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`IW_RECORDING_STUDIO_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_REGISTRE` (
	`IW_REGISTRE_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_NAME` varchar(255) DEFAULT NULL,
	`IW_VALUE` bigint(20) DEFAULT NULL,
	PRIMARY KEY (`IW_REGISTRE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_RESOURCE` (
	`ID_RESOURCE` int(11) NOT NULL AUTO_INCREMENT,
	`IW_ENTITY_ID` int(11) DEFAULT NULL,
	`IW_ENTITY_NAME` int(11) DEFAULT NULL,
	PRIMARY KEY (`ID_RESOURCE`),
	UNIQUE KEY `IW_UK_RESOURCE` (`IW_ENTITY_NAME`,`IW_ENTITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_RESOURCE_TYPE` (
	`RESOURCE_TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
	`IW_DESCRIPTION` varchar(50) DEFAULT NULL,
	`IW_ENTITY_NAME` varchar(50) DEFAULT NULL,
	PRIMARY KEY (`RESOURCE_TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_RIGHT` (
	`IW_RIGHT_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_APPLICATION_KEY` varchar(254) DEFAULT NULL,
	`IW_GROUP` varchar(64) DEFAULT NULL,
	`IW_PROCESS_KEY` varchar(254) DEFAULT NULL,
	`IW_USER` varchar(64) DEFAULT NULL,
	`IW_STANDALONE_ID` int(11) NOT NULL,
	PRIMARY KEY (`IW_RIGHT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_UPLOAD` (
	`IW_UPLOAD_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`IW_UPLOAD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_USER_DETAILS` (
	`IW_USER_DETAILS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_ACT_ID_USER` varchar(255) DEFAULT NULL,
	`IW_ACTIVE` bit(1) DEFAULT NULL,
	`IW_GENERATED_PASSWORD_PLAIN` varchar(255) DEFAULT NULL,
	`IW_PASSWORD_CHANGE_DATE` datetime DEFAULT NULL,
	`IW_TYPE_AUTHENTIFICATION` varchar(45) DEFAULT NULL,
	PRIMARY KEY (`IW_USER_DETAILS_ID`),
	UNIQUE KEY `IW_UK_USER` (`IW_ACT_ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

CREATE TABLE `IW_VARIABLE_PROCESS` (
	`IW_VARIABLE_PROCESS_ID` bigint(20) NOT NULL AUTO_INCREMENT,
	`IW_INDEX` int(11) DEFAULT NULL,
	`IW_INDEX_COLONNE` int(11) DEFAULT NULL,
	`IW_PROCESS_KEY` varchar(255) DEFAULT NULL,
	`IW_SHOW_TASK_FORM` bit(1) DEFAULT NULL,
	`IW_SHOW_TASK_LIST` bit(1) DEFAULT NULL,
	`IW_INPUT` varchar(255) DEFAULT NULL,
	PRIMARY KEY (`IW_VARIABLE_PROCESS_ID`),
	KEY `IW_VARIABLE_PROCESS_INPUT` (`IW_INPUT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
