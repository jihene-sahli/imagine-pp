LOCK TABLES `IW_USER_DETAILS` WRITE;
ALTER TABLE `IW_USER_DETAILS` ADD `IW_TIMEZONE` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'Africa/Algiers';
UNLOCK TABLES;

LOCK TABLES `IW_LIST` WRITE;
INSERT INTO `IW_LIST` (`IW_NAME`, `IW_TITLE`) VALUES ('TIMEZONE', 'Fuseau horaire');
UNLOCK TABLES;

LOCK TABLES `IW_LIST_OPTIONS` WRITE;
SET @LIST_ID = LAST_INSERT_ID();
INSERT INTO `IW_LIST_OPTIONS` (`IW_NAME`, `IW_DESCIRPTION`, `IW_LIST_ID`) VALUES
	('America/Puerto_Rico','Puerto Rico (Atlantic)', @LIST_ID),
	('America/New_York','New York (Eastern)', @LIST_ID),
	('America/Chicago','Chicago (Central)', @LIST_ID),
	('America/Denver','Denver (Mountain)', @LIST_ID),
	('America/Phoenix','Phoenix (MST)', @LIST_ID),
	('America/Los_Angeles','Los Angeles (Pacific)', @LIST_ID),
	('America/Anchorage','Anchorage (Alaska)', @LIST_ID),
	('Pacific/Honolulu','Honolulu (Hawaii)', @LIST_ID),
	('America/Adak','Adak', @LIST_ID),
	('America/Anchorage','Anchorage', @LIST_ID),
	('America/Anguilla','Anguilla', @LIST_ID),
	('America/Antigua','Antigua', @LIST_ID),
	('America/Araguaina','Araguaina', @LIST_ID),
	('America/Argentina/Buenos_Aires','Argentina - Buenos Aires', @LIST_ID),
	('America/Argentina/Catamarca','Argentina - Catamarca', @LIST_ID),
	('America/Argentina/ComodRivadavia','Argentina - ComodRivadavia', @LIST_ID),
	('America/Argentina/Cordoba','Argentina - Cordoba', @LIST_ID),
	('America/Argentina/Jujuy','Argentina - Jujuy', @LIST_ID),
	('America/Argentina/La_Rioja','Argentina - La Rioja', @LIST_ID),
	('America/Argentina/Mendoza','Argentina - Mendoza', @LIST_ID),
	('America/Argentina/Rio_Gallegos','Argentina - Rio Gallegos', @LIST_ID),
	('America/Argentina/Salta','Argentina - Salta', @LIST_ID),
	('America/Argentina/San_Juan','Argentina - San Juan', @LIST_ID),
	('America/Argentina/San_Luis','Argentina - San Luis', @LIST_ID),
	('America/Argentina/Tucuman','Argentina - Tucuman', @LIST_ID),
	('America/Argentina/Ushuaia','Argentina - Ushuaia', @LIST_ID),
	('America/Aruba','Aruba', @LIST_ID),
	('America/Asuncion','Asuncion', @LIST_ID),
	('America/Atikokan','Atikokan', @LIST_ID),
	('America/Atka','Atka', @LIST_ID),
	('America/Bahia','Bahia', @LIST_ID),
	('America/Barbados','Barbados', @LIST_ID),
	('America/Belem','Belem', @LIST_ID),
	('America/Belize','Belize', @LIST_ID),
	('America/Blanc-Sablon','Blanc-Sablon', @LIST_ID),
	('America/Boa_Vista','Boa Vista', @LIST_ID),
	('America/Bogota','Bogota', @LIST_ID),
	('America/Boise','Boise', @LIST_ID),
	('America/Buenos_Aires','Buenos Aires', @LIST_ID),
	('America/Cambridge_Bay','Cambridge Bay', @LIST_ID),
	('America/Campo_Grande','Campo Grande', @LIST_ID),
	('America/Cancun','Cancun', @LIST_ID),
	('America/Caracas','Caracas', @LIST_ID),
	('America/Catamarca','Catamarca', @LIST_ID),
	('America/Cayenne','Cayenne', @LIST_ID),
	('America/Cayman','Cayman', @LIST_ID),
	('America/Chicago','Chicago', @LIST_ID),
	('America/Chihuahua','Chihuahua', @LIST_ID),
	('America/Coral_Harbour','Coral Harbour', @LIST_ID),
	('America/Cordoba','Cordoba', @LIST_ID),
	('America/Costa_Rica','Costa Rica', @LIST_ID),
	('America/Cuiaba','Cuiaba', @LIST_ID),
	('America/Curacao','Curacao', @LIST_ID),
	('America/Danmarkshavn','Danmarkshavn', @LIST_ID),
	('America/Dawson','Dawson', @LIST_ID),
	('America/Dawson_Creek','Dawson Creek', @LIST_ID),
	('America/Denver','Denver', @LIST_ID),
	('America/Detroit','Detroit', @LIST_ID),
	('America/Dominica','Dominica', @LIST_ID),
	('America/Edmonton','Edmonton', @LIST_ID),
	('America/Eirunepe','Eirunepe', @LIST_ID),
	('America/El_Salvador','El Salvador', @LIST_ID),
	('America/Ensenada','Ensenada', @LIST_ID),
	('America/Fortaleza','Fortaleza', @LIST_ID),
	('America/Fort_Wayne','Fort Wayne', @LIST_ID),
	('America/Glace_Bay','Glace Bay', @LIST_ID),
	('America/Godthab','Godthab', @LIST_ID),
	('America/Goose_Bay','Goose Bay', @LIST_ID),
	('America/Grand_Turk','Grand Turk', @LIST_ID),
	('America/Grenada','Grenada', @LIST_ID),
	('America/Guadeloupe','Guadeloupe', @LIST_ID),
	('America/Guatemala','Guatemala', @LIST_ID),
	('America/Guayaquil','Guayaquil', @LIST_ID),
	('America/Guyana','Guyana', @LIST_ID),
	('America/Halifax','Halifax', @LIST_ID),
	('America/Havana','Havana', @LIST_ID),
	('America/Hermosillo','Hermosillo', @LIST_ID),
	('America/Indiana/Indianapolis','Indiana - Indianapolis', @LIST_ID),
	('America/Indiana/Knox','Indiana - Knox', @LIST_ID),
	('America/Indiana/Marengo','Indiana - Marengo', @LIST_ID),
	('America/Indiana/Petersburg','Indiana - Petersburg', @LIST_ID),
	('America/Indiana/Tell_City','Indiana - Tell City', @LIST_ID),
	('America/Indiana/Vevay','Indiana - Vevay', @LIST_ID),
	('America/Indiana/Vincennes','Indiana - Vincennes', @LIST_ID),
	('America/Indiana/Winamac','Indiana - Winamac', @LIST_ID),
	('America/Indianapolis','Indianapolis', @LIST_ID),
	('America/Inuvik','Inuvik', @LIST_ID),
	('America/Iqaluit','Iqaluit', @LIST_ID),
	('America/Jamaica','Jamaica', @LIST_ID),
	('America/Jujuy','Jujuy', @LIST_ID),
	('America/Juneau','Juneau', @LIST_ID),
	('America/Kentucky/Louisville','Kentucky - Louisville', @LIST_ID),
	('America/Kentucky/Monticello','Kentucky - Monticello', @LIST_ID),
	('America/Knox_IN','Knox IN', @LIST_ID),
	('America/La_Paz','La Paz', @LIST_ID),
	('America/Lima','Lima', @LIST_ID),
	('America/Los_Angeles','Los Angeles', @LIST_ID),
	('America/Louisville','Louisville', @LIST_ID),
	('America/Maceio','Maceio', @LIST_ID),
	('America/Managua','Managua', @LIST_ID),
	('America/Manaus','Manaus', @LIST_ID),
	('America/Marigot','Marigot', @LIST_ID),
	('America/Martinique','Martinique', @LIST_ID),
	('America/Matamoros','Matamoros', @LIST_ID),
	('America/Mazatlan','Mazatlan', @LIST_ID),
	('America/Mendoza','Mendoza', @LIST_ID),
	('America/Menominee','Menominee', @LIST_ID),
	('America/Merida','Merida', @LIST_ID),
	('America/Mexico_City','Mexico City', @LIST_ID),
	('America/Miquelon','Miquelon', @LIST_ID),
	('America/Moncton','Moncton', @LIST_ID),
	('America/Monterrey','Monterrey', @LIST_ID),
	('America/Montevideo','Montevideo', @LIST_ID),
	('America/Montreal','Montreal', @LIST_ID),
	('America/Montserrat','Montserrat', @LIST_ID),
	('America/Nassau','Nassau', @LIST_ID),
	('America/New_York','New York', @LIST_ID),
	('America/Nipigon','Nipigon', @LIST_ID),
	('America/Nome','Nome', @LIST_ID),
	('America/Noronha','Noronha', @LIST_ID),
	('America/North_Dakota/Center','North Dakota - Center', @LIST_ID),
	('America/North_Dakota/New_Salem','North Dakota - New Salem', @LIST_ID),
	('America/Ojinaga','Ojinaga', @LIST_ID),
	('America/Panama','Panama', @LIST_ID),
	('America/Pangnirtung','Pangnirtung', @LIST_ID),
	('America/Paramaribo','Paramaribo', @LIST_ID),
	('America/Phoenix','Phoenix', @LIST_ID),
	('America/Port-au-Prince','Port-au-Prince', @LIST_ID),
	('America/Porto_Acre','Porto Acre', @LIST_ID),
	('America/Port_of_Spain','Port of Spain', @LIST_ID),
	('America/Porto_Velho','Porto Velho', @LIST_ID),
	('America/Puerto_Rico','Puerto Rico', @LIST_ID),
	('America/Rainy_River','Rainy River', @LIST_ID),
	('America/Rankin_Inlet','Rankin Inlet', @LIST_ID),
	('America/Recife','Recife', @LIST_ID),
	('America/Regina','Regina', @LIST_ID),
	('America/Resolute','Resolute', @LIST_ID),
	('America/Rio_Branco','Rio Branco', @LIST_ID),
	('America/Rosario','Rosario', @LIST_ID),
	('America/Santa_Isabel','Santa Isabel', @LIST_ID),
	('America/Santarem','Santarem', @LIST_ID),
	('America/Santiago','Santiago', @LIST_ID),
	('America/Santo_Domingo','Santo Domingo', @LIST_ID),
	('America/Sao_Paulo','Sao Paulo', @LIST_ID),
	('America/Scoresbysund','Scoresbysund', @LIST_ID),
	('America/Shiprock','Shiprock', @LIST_ID),
	('America/St_Barthelemy','St Barthelemy', @LIST_ID),
	('America/St_Johns','St Johns', @LIST_ID),
	('America/St_Kitts','St Kitts', @LIST_ID),
	('America/St_Lucia','St Lucia', @LIST_ID),
	('America/St_Thomas','St Thomas', @LIST_ID),
	('America/St_Vincent','St Vincent', @LIST_ID),
	('America/Swift_Current','Swift Current', @LIST_ID),
	('America/Tegucigalpa','Tegucigalpa', @LIST_ID),
	('America/Thule','Thule', @LIST_ID),
	('America/Thunder_Bay','Thunder Bay', @LIST_ID),
	('America/Tijuana','Tijuana', @LIST_ID),
	('America/Toronto','Toronto', @LIST_ID),
	('America/Tortola','Tortola', @LIST_ID),
	('America/Vancouver','Vancouver', @LIST_ID),
	('America/Virgin','Virgin', @LIST_ID),
	('America/Whitehorse','Whitehorse', @LIST_ID),
	('America/Winnipeg','Winnipeg', @LIST_ID),
	('America/Yakutat','Yakutat', @LIST_ID),
	('America/Yellowknife','Yellowknife', @LIST_ID),
	('Europe/Amsterdam','Amsterdam', @LIST_ID),
	('Europe/Andorra','Andorra', @LIST_ID),
	('Europe/Athens','Athens', @LIST_ID),
	('Europe/Belfast','Belfast', @LIST_ID),
	('Europe/Belgrade','Belgrade', @LIST_ID),
	('Europe/Berlin','Berlin', @LIST_ID),
	('Europe/Bratislava','Bratislava', @LIST_ID),
	('Europe/Brussels','Brussels', @LIST_ID),
	('Europe/Bucharest','Bucharest', @LIST_ID),
	('Europe/Budapest','Budapest', @LIST_ID),
	('Europe/Chisinau','Chisinau', @LIST_ID),
	('Europe/Copenhagen','Copenhagen', @LIST_ID),
	('Europe/Dublin','Dublin', @LIST_ID),
	('Europe/Gibraltar','Gibraltar', @LIST_ID),
	('Europe/Guernsey','Guernsey', @LIST_ID),
	('Europe/Helsinki','Helsinki', @LIST_ID),
	('Europe/Isle_of_Man','Isle of Man', @LIST_ID),
	('Europe/Istanbul','Istanbul', @LIST_ID),
	('Europe/Jersey','Jersey', @LIST_ID),
	('Europe/Kaliningrad','Kaliningrad', @LIST_ID),
	('Europe/Kiev','Kiev', @LIST_ID),
	('Europe/Lisbon','Lisbon', @LIST_ID),
	('Europe/Ljubljana','Ljubljana', @LIST_ID),
	('Europe/London','London', @LIST_ID),
	('Europe/Luxembourg','Luxembourg', @LIST_ID),
	('Europe/Madrid','Madrid', @LIST_ID),
	('Europe/Malta','Malta', @LIST_ID),
	('Europe/Mariehamn','Mariehamn', @LIST_ID),
	('Europe/Minsk','Minsk', @LIST_ID),
	('Europe/Monaco','Monaco', @LIST_ID),
	('Europe/Moscow','Moscow', @LIST_ID),
	('Europe/Nicosia','Nicosia', @LIST_ID),
	('Europe/Oslo','Oslo', @LIST_ID),
	('Europe/Paris','Paris', @LIST_ID),
	('Europe/Podgorica','Podgorica', @LIST_ID),
	('Europe/Prague','Prague', @LIST_ID),
	('Europe/Riga','Riga', @LIST_ID),
	('Europe/Rome','Rome', @LIST_ID),
	('Europe/Samara','Samara', @LIST_ID),
	('Europe/San_Marino','San Marino', @LIST_ID),
	('Europe/Sarajevo','Sarajevo', @LIST_ID),
	('Europe/Simferopol','Simferopol', @LIST_ID),
	('Europe/Skopje','Skopje', @LIST_ID),
	('Europe/Sofia','Sofia', @LIST_ID),
	('Europe/Stockholm','Stockholm', @LIST_ID),
	('Europe/Tallinn','Tallinn', @LIST_ID),
	('Europe/Tirane','Tirane', @LIST_ID),
	('Europe/Tiraspol','Tiraspol', @LIST_ID),
	('Europe/Uzhgorod','Uzhgorod', @LIST_ID),
	('Europe/Vaduz','Vaduz', @LIST_ID),
	('Europe/Vatican','Vatican', @LIST_ID),
	('Europe/Vienna','Vienna', @LIST_ID),
	('Europe/Vilnius','Vilnius', @LIST_ID),
	('Europe/Volgograd','Volgograd', @LIST_ID),
	('Europe/Warsaw','Warsaw', @LIST_ID),
	('Europe/Zagreb','Zagreb', @LIST_ID),
	('Europe/Zaporozhye','Zaporozhye', @LIST_ID),
	('Europe/Zurich','Zurich', @LIST_ID),
	('Asia/Aden','Aden', @LIST_ID),
	('Asia/Almaty','Almaty', @LIST_ID),
	('Asia/Amman','Amman', @LIST_ID),
	('Asia/Anadyr','Anadyr', @LIST_ID),
	('Asia/Aqtau','Aqtau', @LIST_ID),
	('Asia/Aqtobe','Aqtobe', @LIST_ID),
	('Asia/Ashgabat','Ashgabat', @LIST_ID),
	('Asia/Ashkhabad','Ashkhabad', @LIST_ID),
	('Asia/Baghdad','Baghdad', @LIST_ID),
	('Asia/Bahrain','Bahrain', @LIST_ID),
	('Asia/Baku','Baku', @LIST_ID),
	('Asia/Bangkok','Bangkok', @LIST_ID),
	('Asia/Beirut','Beirut', @LIST_ID),
	('Asia/Bishkek','Bishkek', @LIST_ID),
	('Asia/Brunei','Brunei', @LIST_ID),
	('Asia/Calcutta','Calcutta', @LIST_ID),
	('Asia/Choibalsan','Choibalsan', @LIST_ID),
	('Asia/Chongqing','Chongqing', @LIST_ID),
	('Asia/Chungking','Chungking', @LIST_ID),
	('Asia/Colombo','Colombo', @LIST_ID),
	('Asia/Dacca','Dacca', @LIST_ID),
	('Asia/Damascus','Damascus', @LIST_ID),
	('Asia/Dhaka','Dhaka', @LIST_ID),
	('Asia/Dili','Dili', @LIST_ID),
	('Asia/Dubai','Dubai', @LIST_ID),
	('Asia/Dushanbe','Dushanbe', @LIST_ID),
	('Asia/Gaza','Gaza', @LIST_ID),
	('Asia/Harbin','Harbin', @LIST_ID),
	('Asia/Ho_Chi_Minh','Ho Chi Minh', @LIST_ID),
	('Asia/Hong_Kong','Hong Kong', @LIST_ID),
	('Asia/Hovd','Hovd', @LIST_ID),
	('Asia/Irkutsk','Irkutsk', @LIST_ID),
	('Asia/Istanbul','Istanbul', @LIST_ID),
	('Asia/Jakarta','Jakarta', @LIST_ID),
	('Asia/Jayapura','Jayapura', @LIST_ID),
	('Asia/Jerusalem','Jerusalem', @LIST_ID),
	('Asia/Kabul','Kabul', @LIST_ID),
	('Asia/Kamchatka','Kamchatka', @LIST_ID),
	('Asia/Karachi','Karachi', @LIST_ID),
	('Asia/Kashgar','Kashgar', @LIST_ID),
	('Asia/Kathmandu','Kathmandu', @LIST_ID),
	('Asia/Katmandu','Katmandu', @LIST_ID),
	('Asia/Kolkata','Kolkata', @LIST_ID),
	('Asia/Krasnoyarsk','Krasnoyarsk', @LIST_ID),
	('Asia/Kuala_Lumpur','Kuala Lumpur', @LIST_ID),
	('Asia/Kuching','Kuching', @LIST_ID),
	('Asia/Kuwait','Kuwait', @LIST_ID),
	('Asia/Macao','Macao', @LIST_ID),
	('Asia/Macau','Macau', @LIST_ID),
	('Asia/Magadan','Magadan', @LIST_ID),
	('Asia/Makassar','Makassar', @LIST_ID),
	('Asia/Manila','Manila', @LIST_ID),
	('Asia/Muscat','Muscat', @LIST_ID),
	('Asia/Nicosia','Nicosia', @LIST_ID),
	('Asia/Novokuznetsk','Novokuznetsk', @LIST_ID),
	('Asia/Novosibirsk','Novosibirsk', @LIST_ID),
	('Asia/Omsk','Omsk', @LIST_ID),
	('Asia/Oral','Oral', @LIST_ID),
	('Asia/Phnom_Penh','Phnom Penh', @LIST_ID),
	('Asia/Pontianak','Pontianak', @LIST_ID),
	('Asia/Pyongyang','Pyongyang', @LIST_ID),
	('Asia/Qatar','Qatar', @LIST_ID),
	('Asia/Qyzylorda','Qyzylorda', @LIST_ID),
	('Asia/Rangoon','Rangoon', @LIST_ID),
	('Asia/Riyadh','Riyadh', @LIST_ID),
	('Asia/Saigon','Saigon', @LIST_ID),
	('Asia/Sakhalin','Sakhalin', @LIST_ID),
	('Asia/Samarkand','Samarkand', @LIST_ID),
	('Asia/Seoul','Seoul', @LIST_ID),
	('Asia/Shanghai','Shanghai', @LIST_ID),
	('Asia/Singapore','Singapore', @LIST_ID),
	('Asia/Taipei','Taipei', @LIST_ID),
	('Asia/Tashkent','Tashkent', @LIST_ID),
	('Asia/Tbilisi','Tbilisi', @LIST_ID),
	('Asia/Tehran','Tehran', @LIST_ID),
	('Asia/Tel_Aviv','Tel Aviv', @LIST_ID),
	('Asia/Thimbu','Thimbu', @LIST_ID),
	('Asia/Thimphu','Thimphu', @LIST_ID),
	('Asia/Tokyo','Tokyo', @LIST_ID),
	('Asia/Ujung_Pandang','Ujung Pandang', @LIST_ID),
	('Asia/Ulaanbaatar','Ulaanbaatar', @LIST_ID),
	('Asia/Ulan_Bator','Ulan Bator', @LIST_ID),
	('Asia/Urumqi','Urumqi', @LIST_ID),
	('Asia/Vientiane','Vientiane', @LIST_ID),
	('Asia/Vladivostok','Vladivostok', @LIST_ID),
	('Asia/Yakutsk','Yakutsk', @LIST_ID),
	('Asia/Yekaterinburg','Yekaterinburg', @LIST_ID),
	('Asia/Yerevan','Yerevan', @LIST_ID),
	('Africa/Abidjan','Abidjan', @LIST_ID),
	('Africa/Accra','Accra', @LIST_ID),
	('Africa/Addis_Ababa','Addis Ababa', @LIST_ID),
	('Africa/Algiers','Algiers', @LIST_ID),
	('Africa/Asmara','Asmara', @LIST_ID),
	('Africa/Asmera','Asmera', @LIST_ID),
	('Africa/Bamako','Bamako', @LIST_ID),
	('Africa/Bangui','Bangui', @LIST_ID),
	('Africa/Banjul','Banjul', @LIST_ID),
	('Africa/Bissau','Bissau', @LIST_ID),
	('Africa/Blantyre','Blantyre', @LIST_ID),
	('Africa/Brazzaville','Brazzaville', @LIST_ID),
	('Africa/Bujumbura','Bujumbura', @LIST_ID),
	('Africa/Cairo','Cairo', @LIST_ID),
	('Africa/Casablanca','Casablanca', @LIST_ID),
	('Africa/Ceuta','Ceuta', @LIST_ID),
	('Africa/Conakry','Conakry', @LIST_ID),
	('Africa/Dakar','Dakar', @LIST_ID),
	('Africa/Dar_es_Salaam','Dar es Salaam', @LIST_ID),
	('Africa/Djibouti','Djibouti', @LIST_ID),
	('Africa/Douala','Douala', @LIST_ID),
	('Africa/El_Aaiun','El Aaiun', @LIST_ID),
	('Africa/Freetown','Freetown', @LIST_ID),
	('Africa/Gaborone','Gaborone', @LIST_ID),
	('Africa/Harare','Harare', @LIST_ID),
	('Africa/Johannesburg','Johannesburg', @LIST_ID),
	('Africa/Kampala','Kampala', @LIST_ID),
	('Africa/Khartoum','Khartoum', @LIST_ID),
	('Africa/Kigali','Kigali', @LIST_ID),
	('Africa/Kinshasa','Kinshasa', @LIST_ID),
	('Africa/Lagos','Lagos', @LIST_ID),
	('Africa/Libreville','Libreville', @LIST_ID),
	('Africa/Lome','Lome', @LIST_ID),
	('Africa/Luanda','Luanda', @LIST_ID),
	('Africa/Lubumbashi','Lubumbashi', @LIST_ID),
	('Africa/Lusaka','Lusaka', @LIST_ID),
	('Africa/Malabo','Malabo', @LIST_ID),
	('Africa/Maputo','Maputo', @LIST_ID),
	('Africa/Maseru','Maseru', @LIST_ID),
	('Africa/Mbabane','Mbabane', @LIST_ID),
	('Africa/Mogadishu','Mogadishu', @LIST_ID),
	('Africa/Monrovia','Monrovia', @LIST_ID),
	('Africa/Nairobi','Nairobi', @LIST_ID),
	('Africa/Ndjamena','Ndjamena', @LIST_ID),
	('Africa/Niamey','Niamey', @LIST_ID),
	('Africa/Nouakchott','Nouakchott', @LIST_ID),
	('Africa/Ouagadougou','Ouagadougou', @LIST_ID),
	('Africa/Porto-Novo','Porto-Novo', @LIST_ID),
	('Africa/Sao_Tome','Sao Tome', @LIST_ID),
	('Africa/Timbuktu','Timbuktu', @LIST_ID),
	('Africa/Tripoli','Tripoli', @LIST_ID),
	('Africa/Tunis','Tunis', @LIST_ID),
	('Africa/Windhoek','Windhoek', @LIST_ID),
	('Australia/ACT','ACT', @LIST_ID),
	('Australia/Adelaide','Adelaide', @LIST_ID),
	('Australia/Brisbane','Brisbane', @LIST_ID),
	('Australia/Broken_Hill','Broken Hill', @LIST_ID),
	('Australia/Canberra','Canberra', @LIST_ID),
	('Australia/Currie','Currie', @LIST_ID),
	('Australia/Darwin','Darwin', @LIST_ID),
	('Australia/Eucla','Eucla', @LIST_ID),
	('Australia/Hobart','Hobart', @LIST_ID),
	('Australia/LHI','LHI', @LIST_ID),
	('Australia/Lindeman','Lindeman', @LIST_ID),
	('Australia/Lord_Howe','Lord Howe', @LIST_ID),
	('Australia/Melbourne','Melbourne', @LIST_ID),
	('Australia/North','North', @LIST_ID),
	('Australia/NSW','NSW', @LIST_ID),
	('Australia/Perth','Perth', @LIST_ID),
	('Australia/Queensland','Queensland', @LIST_ID),
	('Australia/South','South', @LIST_ID),
	('Australia/Sydney','Sydney', @LIST_ID),
	('Australia/Tasmania','Tasmania', @LIST_ID),
	('Australia/Victoria','Victoria', @LIST_ID),
	('Australia/West','West', @LIST_ID),
	('Australia/Yancowinna','Yancowinna', @LIST_ID),
	('Indian/Antananarivo','Antananarivo', @LIST_ID),
	('Indian/Chagos','Chagos', @LIST_ID),
	('Indian/Christmas','Christmas', @LIST_ID),
	('Indian/Cocos','Cocos', @LIST_ID),
	('Indian/Comoro','Comoro', @LIST_ID),
	('Indian/Kerguelen','Kerguelen', @LIST_ID),
	('Indian/Mahe','Mahe', @LIST_ID),
	('Indian/Maldives','Maldives', @LIST_ID),
	('Indian/Mauritius','Mauritius', @LIST_ID),
	('Indian/Mayotte','Mayotte', @LIST_ID),
	('Indian/Reunion','Reunion', @LIST_ID),
	('Atlantic/Azores','Azores', @LIST_ID),
	('Atlantic/Bermuda','Bermuda', @LIST_ID),
	('Atlantic/Canary','Canary', @LIST_ID),
	('Atlantic/Cape_Verde','Cape Verde', @LIST_ID),
	('Atlantic/Faeroe','Faeroe', @LIST_ID),
	('Atlantic/Faroe','Faroe', @LIST_ID),
	('Atlantic/Jan_Mayen','Jan Mayen', @LIST_ID),
	('Atlantic/Madeira','Madeira', @LIST_ID),
	('Atlantic/Reykjavik','Reykjavik', @LIST_ID),
	('Atlantic/South_Georgia','South Georgia', @LIST_ID),
	('Atlantic/Stanley','Stanley', @LIST_ID),
	('Atlantic/St_Helena','St Helena', @LIST_ID),
	('Pacific/Apia','Apia', @LIST_ID),
	('Pacific/Auckland','Auckland', @LIST_ID),
	('Pacific/Chatham','Chatham', @LIST_ID),
	('Pacific/Easter','Easter', @LIST_ID),
	('Pacific/Efate','Efate', @LIST_ID),
	('Pacific/Enderbury','Enderbury', @LIST_ID),
	('Pacific/Fakaofo','Fakaofo', @LIST_ID),
	('Pacific/Fiji','Fiji', @LIST_ID),
	('Pacific/Funafuti','Funafuti', @LIST_ID),
	('Pacific/Galapagos','Galapagos', @LIST_ID),
	('Pacific/Gambier','Gambier', @LIST_ID),
	('Pacific/Guadalcanal','Guadalcanal', @LIST_ID),
	('Pacific/Guam','Guam', @LIST_ID),
	('Pacific/Honolulu','Honolulu', @LIST_ID),
	('Pacific/Johnston','Johnston', @LIST_ID),
	('Pacific/Kiritimati','Kiritimati', @LIST_ID),
	('Pacific/Kosrae','Kosrae', @LIST_ID),
	('Pacific/Kwajalein','Kwajalein', @LIST_ID),
	('Pacific/Majuro','Majuro', @LIST_ID),
	('Pacific/Marquesas','Marquesas', @LIST_ID),
	('Pacific/Midway','Midway', @LIST_ID),
	('Pacific/Nauru','Nauru', @LIST_ID),
	('Pacific/Niue','Niue', @LIST_ID),
	('Pacific/Norfolk','Norfolk', @LIST_ID),
	('Pacific/Noumea','Noumea', @LIST_ID),
	('Pacific/Pago_Pago','Pago Pago', @LIST_ID),
	('Pacific/Palau','Palau', @LIST_ID),
	('Pacific/Pitcairn','Pitcairn', @LIST_ID),
	('Pacific/Ponape','Ponape', @LIST_ID),
	('Pacific/Port_Moresby','Port Moresby', @LIST_ID),
	('Pacific/Rarotonga','Rarotonga', @LIST_ID),
	('Pacific/Saipan','Saipan', @LIST_ID),
	('Pacific/Samoa','Samoa', @LIST_ID),
	('Pacific/Tahiti','Tahiti', @LIST_ID),
	('Pacific/Tarawa','Tarawa', @LIST_ID),
	('Pacific/Tongatapu','Tongatapu', @LIST_ID),
	('Pacific/Truk','Truk', @LIST_ID),
	('Pacific/Wake','Wake', @LIST_ID),
	('Pacific/Wallis','Wallis', @LIST_ID),
	('Pacific/Yap','Yap', @LIST_ID),
	('Antarctica/Casey','Casey', @LIST_ID),
	('Antarctica/Davis','Davis', @LIST_ID),
	('Antarctica/DumontDUrville','DumontDUrville', @LIST_ID),
	('Antarctica/Macquarie','Macquarie', @LIST_ID),
	('Antarctica/Mawson','Mawson', @LIST_ID),
	('Antarctica/McMurdo','McMurdo', @LIST_ID),
	('Antarctica/Palmer','Palmer', @LIST_ID),
	('Antarctica/Rothera','Rothera', @LIST_ID),
	('Antarctica/South_Pole','South Pole', @LIST_ID),
	('Antarctica/Syowa','Syowa', @LIST_ID),
	('Antarctica/Vostok','Vostok', @LIST_ID),
	('Arctic/Longyearbyen','Longyearbyen', @LIST_ID);
UNLOCK TABLES;