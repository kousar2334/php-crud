DROP TABLE buyer_product;

CREATE TABLE `buyer_product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(300) NOT NULL,
  `negotiable` int(10) NOT NULL,
  `product_image` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE country;

CREATE TABLE `country` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=734 DEFAULT CHARSET=latin1;

INSERT INTO country VALUES("491","af","Afghanistan");
INSERT INTO country VALUES("492","ax","&Aring;land Islands");
INSERT INTO country VALUES("493","al","Albania");
INSERT INTO country VALUES("494","dz","Algeria");
INSERT INTO country VALUES("495","as","American Samoa");
INSERT INTO country VALUES("496","ad","Andorra");
INSERT INTO country VALUES("497","ao","Angola");
INSERT INTO country VALUES("498","ai","Anguilla");
INSERT INTO country VALUES("499","ag","Antigua and Barbuda");
INSERT INTO country VALUES("500","ar","Argentina");
INSERT INTO country VALUES("501","am","Armenia");
INSERT INTO country VALUES("502","aw","Aruba");
INSERT INTO country VALUES("503","au","Australia");
INSERT INTO country VALUES("504","at","Austria");
INSERT INTO country VALUES("505","az","Azerbaijan");
INSERT INTO country VALUES("506","bs","Bahamas (the)");
INSERT INTO country VALUES("507","bh","Bahrain");
INSERT INTO country VALUES("508","bd","Bangladesh");
INSERT INTO country VALUES("509","bb","Barbados");
INSERT INTO country VALUES("510","by","Belarus");
INSERT INTO country VALUES("511","be","Belgium");
INSERT INTO country VALUES("512","bz","Belize");
INSERT INTO country VALUES("513","bj","Benin");
INSERT INTO country VALUES("514","bm","Bermuda");
INSERT INTO country VALUES("515","bt","Bhutan");
INSERT INTO country VALUES("516","bo","Bolivia (Plurinational State of)");
INSERT INTO country VALUES("517","ba","Bosnia and Herzegovina");
INSERT INTO country VALUES("518","bw","Botswana");
INSERT INTO country VALUES("519","bv","Bouvet Island");
INSERT INTO country VALUES("520","br","Brazil");
INSERT INTO country VALUES("521","io","British Indian Ocean Territory (the)");
INSERT INTO country VALUES("522","bn","Brunei Darussalam");
INSERT INTO country VALUES("523","bg","Bulgaria");
INSERT INTO country VALUES("524","bf","Burkina Faso");
INSERT INTO country VALUES("525","bi","Burundi");
INSERT INTO country VALUES("526","kh","Cambodia");
INSERT INTO country VALUES("527","cv","Cabo Verde");
INSERT INTO country VALUES("528","cm","Cameroon");
INSERT INTO country VALUES("529","ca","Canada");
INSERT INTO country VALUES("530","ct","Catalonia");
INSERT INTO country VALUES("531","ky","Cayman Islands (the)");
INSERT INTO country VALUES("532","cf","Central African Republic (the)");
INSERT INTO country VALUES("533","td","Chad");
INSERT INTO country VALUES("534","cl","Chile");
INSERT INTO country VALUES("535","cn","China");
INSERT INTO country VALUES("536","cx","Christmas Island");
INSERT INTO country VALUES("537","cc","Cocos (Keeling) Islands (the)");
INSERT INTO country VALUES("538","co","Colombia");
INSERT INTO country VALUES("539","km","Comoros");
INSERT INTO country VALUES("540","cd","Congo (the Democratic Republic of the)");
INSERT INTO country VALUES("541","cg","Congo (the)");
INSERT INTO country VALUES("542","ck","Cook Islands (the)");
INSERT INTO country VALUES("543","cr","Costa Rica");
INSERT INTO country VALUES("544","hr","Croatia");
INSERT INTO country VALUES("545","cu","Cuba");
INSERT INTO country VALUES("546","cy","Cyprus");
INSERT INTO country VALUES("547","cz","Czech Republic (the)");
INSERT INTO country VALUES("548","dk","Denmark");
INSERT INTO country VALUES("549","dj","Djibouti");
INSERT INTO country VALUES("550","dm","Dominica");
INSERT INTO country VALUES("551","do","Dominican Republic (the)");
INSERT INTO country VALUES("552","ec","Ecuador");
INSERT INTO country VALUES("553","eg","Egypt");
INSERT INTO country VALUES("554","sv","El Salvador");
INSERT INTO country VALUES("555","en","England");
INSERT INTO country VALUES("556","gq","Equatorial Guinea");
INSERT INTO country VALUES("557","er","Eritrea");
INSERT INTO country VALUES("558","ee","Estonia");
INSERT INTO country VALUES("559","et","Ethiopia");
INSERT INTO country VALUES("560","eu","European Union");
INSERT INTO country VALUES("561","fk","Falkland Islands (the) [Malvinas]");
INSERT INTO country VALUES("562","fo","Faroe Islands (the)");
INSERT INTO country VALUES("563","fj","Fiji");
INSERT INTO country VALUES("564","fi","Finland");
INSERT INTO country VALUES("565","fr","France");
INSERT INTO country VALUES("566","gf","French Guiana");
INSERT INTO country VALUES("567","pf","French Polynesia");
INSERT INTO country VALUES("568","tf","French Southern Territories (the)");
INSERT INTO country VALUES("569","ga","Gabon");
INSERT INTO country VALUES("570","gm","Gambia (the)");
INSERT INTO country VALUES("571","ge","Georgia");
INSERT INTO country VALUES("572","de","Germany");
INSERT INTO country VALUES("573","gh","Ghana");
INSERT INTO country VALUES("574","gi","Gibraltar");
INSERT INTO country VALUES("575","gr","Greece");
INSERT INTO country VALUES("576","gl","Greenland");
INSERT INTO country VALUES("577","gd","Grenada");
INSERT INTO country VALUES("578","gp","Guadeloupe");
INSERT INTO country VALUES("579","gu","Guam");
INSERT INTO country VALUES("580","gt","Guatemala");
INSERT INTO country VALUES("581","gn","Guinea");
INSERT INTO country VALUES("582","gw","Guinea-Bissau");
INSERT INTO country VALUES("583","gy","Guyana");
INSERT INTO country VALUES("584","ht","Haiti");
INSERT INTO country VALUES("585","hm","Heard Island and McDonald Islands");
INSERT INTO country VALUES("586","va","Holy See (the)");
INSERT INTO country VALUES("587","hn","Honduras");
INSERT INTO country VALUES("588","hk","Hong Kong");
INSERT INTO country VALUES("589","hu","Hungary");
INSERT INTO country VALUES("590","is","Iceland");
INSERT INTO country VALUES("591","in","India");
INSERT INTO country VALUES("592","id","Indonesia");
INSERT INTO country VALUES("593","ir","Iran (Islamic Republic of)");
INSERT INTO country VALUES("594","iq","Iraq");
INSERT INTO country VALUES("595","ie","Ireland");
INSERT INTO country VALUES("596","il","Israel");
INSERT INTO country VALUES("597","it","Italy");
INSERT INTO country VALUES("598","jm","Jamaica");
INSERT INTO country VALUES("599","jp","Japan");
INSERT INTO country VALUES("600","jo","Jordan");
INSERT INTO country VALUES("601","kz","Kazakhstan");
INSERT INTO country VALUES("602","ke","Kenya");
INSERT INTO country VALUES("603","ki","Kiribati");
INSERT INTO country VALUES("604","kr","Korea (the Republic of)");
INSERT INTO country VALUES("605","kw","Kuwait");
INSERT INTO country VALUES("606","kg","Kyrgyzstan");
INSERT INTO country VALUES("607","lv","Latvia");
INSERT INTO country VALUES("608","lb","Lebanon");
INSERT INTO country VALUES("609","ls","Lesotho");
INSERT INTO country VALUES("610","lr","Liberia");
INSERT INTO country VALUES("611","ly","Libya");
INSERT INTO country VALUES("612","li","Liechtenstein");
INSERT INTO country VALUES("613","lt","Lithuania");
INSERT INTO country VALUES("614","lu","Luxembourg");
INSERT INTO country VALUES("615","mo","Macao");
INSERT INTO country VALUES("616","mk","Macedonia (the former Yugoslav Republic of)");
INSERT INTO country VALUES("617","mg","Madagascar");
INSERT INTO country VALUES("618","mw","Malawi");
INSERT INTO country VALUES("619","my","Malaysia");
INSERT INTO country VALUES("620","mv","Maldives");
INSERT INTO country VALUES("621","ml","Mali");
INSERT INTO country VALUES("622","mt","Malta");
INSERT INTO country VALUES("623","mh","Marshall Islands (the)");
INSERT INTO country VALUES("624","mq","Martinique");
INSERT INTO country VALUES("625","mr","Mauritania");
INSERT INTO country VALUES("626","mu","Mauritius");
INSERT INTO country VALUES("627","yt","Mayotte");
INSERT INTO country VALUES("628","mx","Mexico");
INSERT INTO country VALUES("629","fm","Micronesia (Federated States of)");
INSERT INTO country VALUES("630","md","Moldova (the Republic of)");
INSERT INTO country VALUES("631","mc","Monaco");
INSERT INTO country VALUES("632","mn","Mongolia");
INSERT INTO country VALUES("633","me","Montenegro");
INSERT INTO country VALUES("634","ms","Montserrat");
INSERT INTO country VALUES("635","ma","Morocco");
INSERT INTO country VALUES("636","mz","Mozambique");
INSERT INTO country VALUES("637","mm","Myanmar");
INSERT INTO country VALUES("638","na","Namibia");
INSERT INTO country VALUES("639","nr","Nauru");
INSERT INTO country VALUES("640","np","Nepal");
INSERT INTO country VALUES("641","nl","Netherlands (the)");
INSERT INTO country VALUES("642","an","Netherlands Antilles");
INSERT INTO country VALUES("643","nc","New Caledonia");
INSERT INTO country VALUES("644","nz","New Zealand");
INSERT INTO country VALUES("645","ni","Nicaragua");
INSERT INTO country VALUES("646","ne","Niger (the)");
INSERT INTO country VALUES("647","ng","Nigeria");
INSERT INTO country VALUES("648","nu","Niue");
INSERT INTO country VALUES("649","nf","Norfolk Island");
INSERT INTO country VALUES("650","mp","Northern Mariana Islands (the)");
INSERT INTO country VALUES("651","no","Norway");
INSERT INTO country VALUES("652","om","Oman");
INSERT INTO country VALUES("653","pk","Pakistan");
INSERT INTO country VALUES("654","pw","Palau");
INSERT INTO country VALUES("655","ps","Palestine, State of");
INSERT INTO country VALUES("656","pa","Panama");
INSERT INTO country VALUES("657","pg","Papua New Guinea");
INSERT INTO country VALUES("658","py","Paraguay");
INSERT INTO country VALUES("659","pe","Peru");
INSERT INTO country VALUES("660","ph","Philippines (the)");
INSERT INTO country VALUES("661","pn","Pitcairn");
INSERT INTO country VALUES("662","pl","Poland");
INSERT INTO country VALUES("663","pt","Portugal");
INSERT INTO country VALUES("664","pr","Puerto Rico");
INSERT INTO country VALUES("665","qa","Qatar");
INSERT INTO country VALUES("666","re","R&eacute;union");
INSERT INTO country VALUES("667","ro","Romania");
INSERT INTO country VALUES("668","ru","Russian Federation (the)");
INSERT INTO country VALUES("669","rw","Rwanda");
INSERT INTO country VALUES("670","sh","Saint Helena, Ascension and Tristan da Cunha");
INSERT INTO country VALUES("671","kn","Saint Kitts and Nevis");
INSERT INTO country VALUES("672","lc","Saint Lucia");
INSERT INTO country VALUES("673","pm","Saint Pierre and Miquelon");
INSERT INTO country VALUES("674","vc","Saint Vincent and the Grenadines");
INSERT INTO country VALUES("675","ws","Samoa");
INSERT INTO country VALUES("676","sm","San Marino");
INSERT INTO country VALUES("677","st","Sao Tome and Principe");
INSERT INTO country VALUES("678","sa","Saudi Arabia");
INSERT INTO country VALUES("679","ab","Scotland");
INSERT INTO country VALUES("680","sn","Senegal");
INSERT INTO country VALUES("681","rs","Serbia");
INSERT INTO country VALUES("682","cs","Serbia and Montenegro");
INSERT INTO country VALUES("683","sc","Seychelles");
INSERT INTO country VALUES("684","sl","Sierra Leone");
INSERT INTO country VALUES("685","sg","Singapore");
INSERT INTO country VALUES("686","sk","Slovakia");
INSERT INTO country VALUES("687","si","Slovenia");
INSERT INTO country VALUES("688","sb","Solomon Islands");
INSERT INTO country VALUES("689","so","Somalia");
INSERT INTO country VALUES("690","za","South Africa");
INSERT INTO country VALUES("691","gs","South Georgia and the South Sandwich Islands");
INSERT INTO country VALUES("692","es","Spain");
INSERT INTO country VALUES("693","lk","Sri Lanka");
INSERT INTO country VALUES("694","sd","Sudan (the)");
INSERT INTO country VALUES("695","sr","Suriname");
INSERT INTO country VALUES("696","sj","Svalbard and Jan Mayen");
INSERT INTO country VALUES("697","sz","Swaziland");
INSERT INTO country VALUES("698","se","Sweden");
INSERT INTO country VALUES("699","ch","Switzerland");
INSERT INTO country VALUES("700","sy","Syrian Arab Republic");
INSERT INTO country VALUES("701","tw","Taiwan (Province of China)");
INSERT INTO country VALUES("702","tj","Tajikistan");
INSERT INTO country VALUES("703","tz","Tanzania, United Republic of");
INSERT INTO country VALUES("704","th","Thailand");
INSERT INTO country VALUES("705","tl","Timor-Leste");
INSERT INTO country VALUES("706","tg","Togo");
INSERT INTO country VALUES("707","tk","Tokelau");
INSERT INTO country VALUES("708","to","Tonga");
INSERT INTO country VALUES("709","tt","Trinidad and Tobago");
INSERT INTO country VALUES("710","tn","Tunisia");
INSERT INTO country VALUES("711","tr","Turkey");
INSERT INTO country VALUES("712","tm","Turkmenistan");
INSERT INTO country VALUES("713","tc","Turks and Caicos Islands (the)");
INSERT INTO country VALUES("714","tv","Tuvalu");
INSERT INTO country VALUES("715","ug","Uganda");
INSERT INTO country VALUES("716","ua","Ukraine");
INSERT INTO country VALUES("717","ae","United Arab Emirates (the)");
INSERT INTO country VALUES("718","gb","United Kingdom of Great Britain and Northern Ireland (the)");
INSERT INTO country VALUES("719","um","United States Minor Outlying Islands (the)");
INSERT INTO country VALUES("720","us","United States of America (the)");
INSERT INTO country VALUES("721","uy","Uruguay");
INSERT INTO country VALUES("722","uz","Uzbekistan");
INSERT INTO country VALUES("723","vu","Vanuatu");
INSERT INTO country VALUES("724","ve","Venezuela (Bolivarian Republic of)");
INSERT INTO country VALUES("725","vn","Viet Nam");
INSERT INTO country VALUES("726","vg","Virgin Islands (British)");
INSERT INTO country VALUES("727","vi","Virgin Islands (U.S.)");
INSERT INTO country VALUES("728","wa","Wales");
INSERT INTO country VALUES("729","wf","Wallis and Futuna");
INSERT INTO country VALUES("730","eh","Western Sahara");
INSERT INTO country VALUES("731","ye","Yemen");
INSERT INTO country VALUES("732","zm","Zambia");
INSERT INTO country VALUES("733","zw","Zimbabwe");



DROP TABLE destination_country;

CREATE TABLE `destination_country` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=487 DEFAULT CHARSET=latin1;

INSERT INTO destination_country VALUES("1","af","Afghanistan");
INSERT INTO destination_country VALUES("2","ax","&Aring;land Islands");
INSERT INTO destination_country VALUES("3","al","Albania");
INSERT INTO destination_country VALUES("4","dz","Algeria");
INSERT INTO destination_country VALUES("5","as","American Samoa");
INSERT INTO destination_country VALUES("6","ad","Andorra");
INSERT INTO destination_country VALUES("7","ao","Angola");
INSERT INTO destination_country VALUES("8","ai","Anguilla");
INSERT INTO destination_country VALUES("9","ag","Antigua and Barbuda");
INSERT INTO destination_country VALUES("10","ar","Argentina");
INSERT INTO destination_country VALUES("11","am","Armenia");
INSERT INTO destination_country VALUES("12","aw","Aruba");
INSERT INTO destination_country VALUES("13","au","Australia");
INSERT INTO destination_country VALUES("14","at","Austria");
INSERT INTO destination_country VALUES("15","az","Azerbaijan");
INSERT INTO destination_country VALUES("16","bs","Bahamas (the)");
INSERT INTO destination_country VALUES("17","bh","Bahrain");
INSERT INTO destination_country VALUES("18","bd","Bangladesh");
INSERT INTO destination_country VALUES("19","bb","Barbados");
INSERT INTO destination_country VALUES("20","by","Belarus");
INSERT INTO destination_country VALUES("21","be","Belgium");
INSERT INTO destination_country VALUES("22","bz","Belize");
INSERT INTO destination_country VALUES("23","bj","Benin");
INSERT INTO destination_country VALUES("24","bm","Bermuda");
INSERT INTO destination_country VALUES("25","bt","Bhutan");
INSERT INTO destination_country VALUES("26","bo","Bolivia (Plurinational State of)");
INSERT INTO destination_country VALUES("27","ba","Bosnia and Herzegovina");
INSERT INTO destination_country VALUES("28","bw","Botswana");
INSERT INTO destination_country VALUES("29","bv","Bouvet Island");
INSERT INTO destination_country VALUES("30","br","Brazil");
INSERT INTO destination_country VALUES("31","io","British Indian Ocean Territory (the)");
INSERT INTO destination_country VALUES("32","bn","Brunei Darussalam");
INSERT INTO destination_country VALUES("33","bg","Bulgaria");
INSERT INTO destination_country VALUES("34","bf","Burkina Faso");
INSERT INTO destination_country VALUES("35","bi","Burundi");
INSERT INTO destination_country VALUES("36","kh","Cambodia");
INSERT INTO destination_country VALUES("37","cv","Cabo Verde");
INSERT INTO destination_country VALUES("38","cm","Cameroon");
INSERT INTO destination_country VALUES("39","ca","Canada");
INSERT INTO destination_country VALUES("40","ct","Catalonia");
INSERT INTO destination_country VALUES("41","ky","Cayman Islands (the)");
INSERT INTO destination_country VALUES("42","cf","Central African Republic (the)");
INSERT INTO destination_country VALUES("43","td","Chad");
INSERT INTO destination_country VALUES("44","cl","Chile");
INSERT INTO destination_country VALUES("45","cn","China");
INSERT INTO destination_country VALUES("46","cx","Christmas Island");
INSERT INTO destination_country VALUES("47","cc","Cocos (Keeling) Islands (the)");
INSERT INTO destination_country VALUES("48","co","Colombia");
INSERT INTO destination_country VALUES("49","km","Comoros");
INSERT INTO destination_country VALUES("50","cd","Congo (the Democratic Republic of the)");
INSERT INTO destination_country VALUES("51","cg","Congo (the)");
INSERT INTO destination_country VALUES("52","ck","Cook Islands (the)");
INSERT INTO destination_country VALUES("53","cr","Costa Rica");
INSERT INTO destination_country VALUES("54","hr","Croatia");
INSERT INTO destination_country VALUES("55","cu","Cuba");
INSERT INTO destination_country VALUES("56","cy","Cyprus");
INSERT INTO destination_country VALUES("57","cz","Czech Republic (the)");
INSERT INTO destination_country VALUES("58","dk","Denmark");
INSERT INTO destination_country VALUES("59","dj","Djibouti");
INSERT INTO destination_country VALUES("60","dm","Dominica");
INSERT INTO destination_country VALUES("61","do","Dominican Republic (the)");
INSERT INTO destination_country VALUES("62","ec","Ecuador");
INSERT INTO destination_country VALUES("63","eg","Egypt");
INSERT INTO destination_country VALUES("64","sv","El Salvador");
INSERT INTO destination_country VALUES("65","en","England");
INSERT INTO destination_country VALUES("66","gq","Equatorial Guinea");
INSERT INTO destination_country VALUES("67","er","Eritrea");
INSERT INTO destination_country VALUES("68","ee","Estonia");
INSERT INTO destination_country VALUES("69","et","Ethiopia");
INSERT INTO destination_country VALUES("70","eu","European Union");
INSERT INTO destination_country VALUES("71","fk","Falkland Islands (the) [Malvinas]");
INSERT INTO destination_country VALUES("72","fo","Faroe Islands (the)");
INSERT INTO destination_country VALUES("73","fj","Fiji");
INSERT INTO destination_country VALUES("74","fi","Finland");
INSERT INTO destination_country VALUES("75","fr","France");
INSERT INTO destination_country VALUES("76","gf","French Guiana");
INSERT INTO destination_country VALUES("77","pf","French Polynesia");
INSERT INTO destination_country VALUES("78","tf","French Southern Territories (the)");
INSERT INTO destination_country VALUES("79","ga","Gabon");
INSERT INTO destination_country VALUES("80","gm","Gambia (the)");
INSERT INTO destination_country VALUES("81","ge","Georgia");
INSERT INTO destination_country VALUES("82","de","Germany");
INSERT INTO destination_country VALUES("83","gh","Ghana");
INSERT INTO destination_country VALUES("84","gi","Gibraltar");
INSERT INTO destination_country VALUES("85","gr","Greece");
INSERT INTO destination_country VALUES("86","gl","Greenland");
INSERT INTO destination_country VALUES("87","gd","Grenada");
INSERT INTO destination_country VALUES("88","gp","Guadeloupe");
INSERT INTO destination_country VALUES("89","gu","Guam");
INSERT INTO destination_country VALUES("90","gt","Guatemala");
INSERT INTO destination_country VALUES("91","gn","Guinea");
INSERT INTO destination_country VALUES("92","gw","Guinea-Bissau");
INSERT INTO destination_country VALUES("93","gy","Guyana");
INSERT INTO destination_country VALUES("94","ht","Haiti");
INSERT INTO destination_country VALUES("95","hm","Heard Island and McDonald Islands");
INSERT INTO destination_country VALUES("96","va","Holy See (the)");
INSERT INTO destination_country VALUES("97","hn","Honduras");
INSERT INTO destination_country VALUES("98","hk","Hong Kong");
INSERT INTO destination_country VALUES("99","hu","Hungary");
INSERT INTO destination_country VALUES("100","is","Iceland");
INSERT INTO destination_country VALUES("101","in","India");
INSERT INTO destination_country VALUES("102","id","Indonesia");
INSERT INTO destination_country VALUES("103","ir","Iran (Islamic Republic of)");
INSERT INTO destination_country VALUES("104","iq","Iraq");
INSERT INTO destination_country VALUES("105","ie","Ireland");
INSERT INTO destination_country VALUES("106","il","Israel");
INSERT INTO destination_country VALUES("107","it","Italy");
INSERT INTO destination_country VALUES("108","jm","Jamaica");
INSERT INTO destination_country VALUES("109","jp","Japan");
INSERT INTO destination_country VALUES("110","jo","Jordan");
INSERT INTO destination_country VALUES("111","kz","Kazakhstan");
INSERT INTO destination_country VALUES("112","ke","Kenya");
INSERT INTO destination_country VALUES("113","ki","Kiribati");
INSERT INTO destination_country VALUES("114","kr","Korea (the Republic of)");
INSERT INTO destination_country VALUES("115","kw","Kuwait");
INSERT INTO destination_country VALUES("116","kg","Kyrgyzstan");
INSERT INTO destination_country VALUES("117","lv","Latvia");
INSERT INTO destination_country VALUES("118","lb","Lebanon");
INSERT INTO destination_country VALUES("119","ls","Lesotho");
INSERT INTO destination_country VALUES("120","lr","Liberia");
INSERT INTO destination_country VALUES("121","ly","Libya");
INSERT INTO destination_country VALUES("122","li","Liechtenstein");
INSERT INTO destination_country VALUES("123","lt","Lithuania");
INSERT INTO destination_country VALUES("124","lu","Luxembourg");
INSERT INTO destination_country VALUES("125","mo","Macao");
INSERT INTO destination_country VALUES("126","mk","Macedonia (the former Yugoslav Republic of)");
INSERT INTO destination_country VALUES("127","mg","Madagascar");
INSERT INTO destination_country VALUES("128","mw","Malawi");
INSERT INTO destination_country VALUES("129","my","Malaysia");
INSERT INTO destination_country VALUES("130","mv","Maldives");
INSERT INTO destination_country VALUES("131","ml","Mali");
INSERT INTO destination_country VALUES("132","mt","Malta");
INSERT INTO destination_country VALUES("133","mh","Marshall Islands (the)");
INSERT INTO destination_country VALUES("134","mq","Martinique");
INSERT INTO destination_country VALUES("135","mr","Mauritania");
INSERT INTO destination_country VALUES("136","mu","Mauritius");
INSERT INTO destination_country VALUES("137","yt","Mayotte");
INSERT INTO destination_country VALUES("138","mx","Mexico");
INSERT INTO destination_country VALUES("139","fm","Micronesia (Federated States of)");
INSERT INTO destination_country VALUES("140","md","Moldova (the Republic of)");
INSERT INTO destination_country VALUES("141","mc","Monaco");
INSERT INTO destination_country VALUES("142","mn","Mongolia");
INSERT INTO destination_country VALUES("143","me","Montenegro");
INSERT INTO destination_country VALUES("144","ms","Montserrat");
INSERT INTO destination_country VALUES("145","ma","Morocco");
INSERT INTO destination_country VALUES("146","mz","Mozambique");
INSERT INTO destination_country VALUES("147","mm","Myanmar");
INSERT INTO destination_country VALUES("148","na","Namibia");
INSERT INTO destination_country VALUES("149","nr","Nauru");
INSERT INTO destination_country VALUES("150","np","Nepal");
INSERT INTO destination_country VALUES("151","nl","Netherlands (the)");
INSERT INTO destination_country VALUES("152","an","Netherlands Antilles");
INSERT INTO destination_country VALUES("153","nc","New Caledonia");
INSERT INTO destination_country VALUES("154","nz","New Zealand");
INSERT INTO destination_country VALUES("155","ni","Nicaragua");
INSERT INTO destination_country VALUES("156","ne","Niger (the)");
INSERT INTO destination_country VALUES("157","ng","Nigeria");
INSERT INTO destination_country VALUES("158","nu","Niue");
INSERT INTO destination_country VALUES("159","nf","Norfolk Island");
INSERT INTO destination_country VALUES("160","mp","Northern Mariana Islands (the)");
INSERT INTO destination_country VALUES("161","no","Norway");
INSERT INTO destination_country VALUES("162","om","Oman");
INSERT INTO destination_country VALUES("163","pk","Pakistan");
INSERT INTO destination_country VALUES("164","pw","Palau");
INSERT INTO destination_country VALUES("165","ps","Palestine, State of");
INSERT INTO destination_country VALUES("166","pa","Panama");
INSERT INTO destination_country VALUES("167","pg","Papua New Guinea");
INSERT INTO destination_country VALUES("168","py","Paraguay");
INSERT INTO destination_country VALUES("169","pe","Peru");
INSERT INTO destination_country VALUES("170","ph","Philippines (the)");
INSERT INTO destination_country VALUES("171","pn","Pitcairn");
INSERT INTO destination_country VALUES("172","pl","Poland");
INSERT INTO destination_country VALUES("173","pt","Portugal");
INSERT INTO destination_country VALUES("174","pr","Puerto Rico");
INSERT INTO destination_country VALUES("175","qa","Qatar");
INSERT INTO destination_country VALUES("176","re","R&eacute;union");
INSERT INTO destination_country VALUES("177","ro","Romania");
INSERT INTO destination_country VALUES("178","ru","Russian Federation (the)");
INSERT INTO destination_country VALUES("179","rw","Rwanda");
INSERT INTO destination_country VALUES("180","sh","Saint Helena, Ascension and Tristan da Cunha");
INSERT INTO destination_country VALUES("181","kn","Saint Kitts and Nevis");
INSERT INTO destination_country VALUES("182","lc","Saint Lucia");
INSERT INTO destination_country VALUES("183","pm","Saint Pierre and Miquelon");
INSERT INTO destination_country VALUES("184","vc","Saint Vincent and the Grenadines");
INSERT INTO destination_country VALUES("185","ws","Samoa");
INSERT INTO destination_country VALUES("186","sm","San Marino");
INSERT INTO destination_country VALUES("187","st","Sao Tome and Principe");
INSERT INTO destination_country VALUES("188","sa","Saudi Arabia");
INSERT INTO destination_country VALUES("189","ab","Scotland");
INSERT INTO destination_country VALUES("190","sn","Senegal");
INSERT INTO destination_country VALUES("191","rs","Serbia");
INSERT INTO destination_country VALUES("192","cs","Serbia and Montenegro");
INSERT INTO destination_country VALUES("193","sc","Seychelles");
INSERT INTO destination_country VALUES("194","sl","Sierra Leone");
INSERT INTO destination_country VALUES("195","sg","Singapore");
INSERT INTO destination_country VALUES("196","sk","Slovakia");
INSERT INTO destination_country VALUES("197","si","Slovenia");
INSERT INTO destination_country VALUES("198","sb","Solomon Islands");
INSERT INTO destination_country VALUES("199","so","Somalia");
INSERT INTO destination_country VALUES("200","za","South Africa");
INSERT INTO destination_country VALUES("201","gs","South Georgia and the South Sandwich Islands");
INSERT INTO destination_country VALUES("202","es","Spain");
INSERT INTO destination_country VALUES("203","lk","Sri Lanka");
INSERT INTO destination_country VALUES("204","sd","Sudan (the)");
INSERT INTO destination_country VALUES("205","sr","Suriname");
INSERT INTO destination_country VALUES("206","sj","Svalbard and Jan Mayen");
INSERT INTO destination_country VALUES("207","sz","Swaziland");
INSERT INTO destination_country VALUES("208","se","Sweden");
INSERT INTO destination_country VALUES("209","ch","Switzerland");
INSERT INTO destination_country VALUES("210","sy","Syrian Arab Republic");
INSERT INTO destination_country VALUES("211","tw","Taiwan (Province of China)");
INSERT INTO destination_country VALUES("212","tj","Tajikistan");
INSERT INTO destination_country VALUES("213","tz","Tanzania, United Republic of");
INSERT INTO destination_country VALUES("214","th","Thailand");
INSERT INTO destination_country VALUES("215","tl","Timor-Leste");
INSERT INTO destination_country VALUES("216","tg","Togo");
INSERT INTO destination_country VALUES("217","tk","Tokelau");
INSERT INTO destination_country VALUES("218","to","Tonga");
INSERT INTO destination_country VALUES("219","tt","Trinidad and Tobago");
INSERT INTO destination_country VALUES("220","tn","Tunisia");
INSERT INTO destination_country VALUES("221","tr","Turkey");
INSERT INTO destination_country VALUES("222","tm","Turkmenistan");
INSERT INTO destination_country VALUES("223","tc","Turks and Caicos Islands (the)");
INSERT INTO destination_country VALUES("224","tv","Tuvalu");
INSERT INTO destination_country VALUES("225","ug","Uganda");
INSERT INTO destination_country VALUES("226","ua","Ukraine");
INSERT INTO destination_country VALUES("227","ae","United Arab Emirates (the)");
INSERT INTO destination_country VALUES("228","gb","United Kingdom of Great Britain and Northern Ireland (the)");
INSERT INTO destination_country VALUES("229","um","United States Minor Outlying Islands (the)");
INSERT INTO destination_country VALUES("230","us","United States of America (the)");
INSERT INTO destination_country VALUES("231","uy","Uruguay");
INSERT INTO destination_country VALUES("232","uz","Uzbekistan");
INSERT INTO destination_country VALUES("233","vu","Vanuatu");
INSERT INTO destination_country VALUES("234","ve","Venezuela (Bolivarian Republic of)");
INSERT INTO destination_country VALUES("235","vn","Viet Nam");
INSERT INTO destination_country VALUES("236","vg","Virgin Islands (British)");
INSERT INTO destination_country VALUES("237","vi","Virgin Islands (U.S.)");
INSERT INTO destination_country VALUES("238","wa","Wales");
INSERT INTO destination_country VALUES("239","wf","Wallis and Futuna");
INSERT INTO destination_country VALUES("240","eh","Western Sahara");
INSERT INTO destination_country VALUES("241","ye","Yemen");
INSERT INTO destination_country VALUES("242","zm","Zambia");
INSERT INTO destination_country VALUES("243","zw","Zimbabwe");
INSERT INTO destination_country VALUES("244","af","Afghanistan");
INSERT INTO destination_country VALUES("245","ax","&Aring;land Islands");
INSERT INTO destination_country VALUES("246","al","Albania");
INSERT INTO destination_country VALUES("247","dz","Algeria");
INSERT INTO destination_country VALUES("248","as","American Samoa");
INSERT INTO destination_country VALUES("249","ad","Andorra");
INSERT INTO destination_country VALUES("250","ao","Angola");
INSERT INTO destination_country VALUES("251","ai","Anguilla");
INSERT INTO destination_country VALUES("252","ag","Antigua and Barbuda");
INSERT INTO destination_country VALUES("253","ar","Argentina");
INSERT INTO destination_country VALUES("254","am","Armenia");
INSERT INTO destination_country VALUES("255","aw","Aruba");
INSERT INTO destination_country VALUES("256","au","Australia");
INSERT INTO destination_country VALUES("257","at","Austria");
INSERT INTO destination_country VALUES("258","az","Azerbaijan");
INSERT INTO destination_country VALUES("259","bs","Bahamas (the)");
INSERT INTO destination_country VALUES("260","bh","Bahrain");
INSERT INTO destination_country VALUES("261","bd","Bangladesh");
INSERT INTO destination_country VALUES("262","bb","Barbados");
INSERT INTO destination_country VALUES("263","by","Belarus");
INSERT INTO destination_country VALUES("264","be","Belgium");
INSERT INTO destination_country VALUES("265","bz","Belize");
INSERT INTO destination_country VALUES("266","bj","Benin");
INSERT INTO destination_country VALUES("267","bm","Bermuda");
INSERT INTO destination_country VALUES("268","bt","Bhutan");
INSERT INTO destination_country VALUES("269","bo","Bolivia (Plurinational State of)");
INSERT INTO destination_country VALUES("270","ba","Bosnia and Herzegovina");
INSERT INTO destination_country VALUES("271","bw","Botswana");
INSERT INTO destination_country VALUES("272","bv","Bouvet Island");
INSERT INTO destination_country VALUES("273","br","Brazil");
INSERT INTO destination_country VALUES("274","io","British Indian Ocean Territory (the)");
INSERT INTO destination_country VALUES("275","bn","Brunei Darussalam");
INSERT INTO destination_country VALUES("276","bg","Bulgaria");
INSERT INTO destination_country VALUES("277","bf","Burkina Faso");
INSERT INTO destination_country VALUES("278","bi","Burundi");
INSERT INTO destination_country VALUES("279","kh","Cambodia");
INSERT INTO destination_country VALUES("280","cv","Cabo Verde");
INSERT INTO destination_country VALUES("281","cm","Cameroon");
INSERT INTO destination_country VALUES("282","ca","Canada");
INSERT INTO destination_country VALUES("283","ct","Catalonia");
INSERT INTO destination_country VALUES("284","ky","Cayman Islands (the)");
INSERT INTO destination_country VALUES("285","cf","Central African Republic (the)");
INSERT INTO destination_country VALUES("286","td","Chad");
INSERT INTO destination_country VALUES("287","cl","Chile");
INSERT INTO destination_country VALUES("288","cn","China");
INSERT INTO destination_country VALUES("289","cx","Christmas Island");
INSERT INTO destination_country VALUES("290","cc","Cocos (Keeling) Islands (the)");
INSERT INTO destination_country VALUES("291","co","Colombia");
INSERT INTO destination_country VALUES("292","km","Comoros");
INSERT INTO destination_country VALUES("293","cd","Congo (the Democratic Republic of the)");
INSERT INTO destination_country VALUES("294","cg","Congo (the)");
INSERT INTO destination_country VALUES("295","ck","Cook Islands (the)");
INSERT INTO destination_country VALUES("296","cr","Costa Rica");
INSERT INTO destination_country VALUES("297","hr","Croatia");
INSERT INTO destination_country VALUES("298","cu","Cuba");
INSERT INTO destination_country VALUES("299","cy","Cyprus");
INSERT INTO destination_country VALUES("300","cz","Czech Republic (the)");
INSERT INTO destination_country VALUES("301","dk","Denmark");
INSERT INTO destination_country VALUES("302","dj","Djibouti");
INSERT INTO destination_country VALUES("303","dm","Dominica");
INSERT INTO destination_country VALUES("304","do","Dominican Republic (the)");
INSERT INTO destination_country VALUES("305","ec","Ecuador");
INSERT INTO destination_country VALUES("306","eg","Egypt");
INSERT INTO destination_country VALUES("307","sv","El Salvador");
INSERT INTO destination_country VALUES("308","en","England");
INSERT INTO destination_country VALUES("309","gq","Equatorial Guinea");
INSERT INTO destination_country VALUES("310","er","Eritrea");
INSERT INTO destination_country VALUES("311","ee","Estonia");
INSERT INTO destination_country VALUES("312","et","Ethiopia");
INSERT INTO destination_country VALUES("313","eu","European Union");
INSERT INTO destination_country VALUES("314","fk","Falkland Islands (the) [Malvinas]");
INSERT INTO destination_country VALUES("315","fo","Faroe Islands (the)");
INSERT INTO destination_country VALUES("316","fj","Fiji");
INSERT INTO destination_country VALUES("317","fi","Finland");
INSERT INTO destination_country VALUES("318","fr","France");
INSERT INTO destination_country VALUES("319","gf","French Guiana");
INSERT INTO destination_country VALUES("320","pf","French Polynesia");
INSERT INTO destination_country VALUES("321","tf","French Southern Territories (the)");
INSERT INTO destination_country VALUES("322","ga","Gabon");
INSERT INTO destination_country VALUES("323","gm","Gambia (the)");
INSERT INTO destination_country VALUES("324","ge","Georgia");
INSERT INTO destination_country VALUES("325","de","Germany");
INSERT INTO destination_country VALUES("326","gh","Ghana");
INSERT INTO destination_country VALUES("327","gi","Gibraltar");
INSERT INTO destination_country VALUES("328","gr","Greece");
INSERT INTO destination_country VALUES("329","gl","Greenland");
INSERT INTO destination_country VALUES("330","gd","Grenada");
INSERT INTO destination_country VALUES("331","gp","Guadeloupe");
INSERT INTO destination_country VALUES("332","gu","Guam");
INSERT INTO destination_country VALUES("333","gt","Guatemala");
INSERT INTO destination_country VALUES("334","gn","Guinea");
INSERT INTO destination_country VALUES("335","gw","Guinea-Bissau");
INSERT INTO destination_country VALUES("336","gy","Guyana");
INSERT INTO destination_country VALUES("337","ht","Haiti");
INSERT INTO destination_country VALUES("338","hm","Heard Island and McDonald Islands");
INSERT INTO destination_country VALUES("339","va","Holy See (the)");
INSERT INTO destination_country VALUES("340","hn","Honduras");
INSERT INTO destination_country VALUES("341","hk","Hong Kong");
INSERT INTO destination_country VALUES("342","hu","Hungary");
INSERT INTO destination_country VALUES("343","is","Iceland");
INSERT INTO destination_country VALUES("344","in","India");
INSERT INTO destination_country VALUES("345","id","Indonesia");
INSERT INTO destination_country VALUES("346","ir","Iran (Islamic Republic of)");
INSERT INTO destination_country VALUES("347","iq","Iraq");
INSERT INTO destination_country VALUES("348","ie","Ireland");
INSERT INTO destination_country VALUES("349","il","Israel");
INSERT INTO destination_country VALUES("350","it","Italy");
INSERT INTO destination_country VALUES("351","jm","Jamaica");
INSERT INTO destination_country VALUES("352","jp","Japan");
INSERT INTO destination_country VALUES("353","jo","Jordan");
INSERT INTO destination_country VALUES("354","kz","Kazakhstan");
INSERT INTO destination_country VALUES("355","ke","Kenya");
INSERT INTO destination_country VALUES("356","ki","Kiribati");
INSERT INTO destination_country VALUES("357","kr","Korea (the Republic of)");
INSERT INTO destination_country VALUES("358","kw","Kuwait");
INSERT INTO destination_country VALUES("359","kg","Kyrgyzstan");
INSERT INTO destination_country VALUES("360","lv","Latvia");
INSERT INTO destination_country VALUES("361","lb","Lebanon");
INSERT INTO destination_country VALUES("362","ls","Lesotho");
INSERT INTO destination_country VALUES("363","lr","Liberia");
INSERT INTO destination_country VALUES("364","ly","Libya");
INSERT INTO destination_country VALUES("365","li","Liechtenstein");
INSERT INTO destination_country VALUES("366","lt","Lithuania");
INSERT INTO destination_country VALUES("367","lu","Luxembourg");
INSERT INTO destination_country VALUES("368","mo","Macao");
INSERT INTO destination_country VALUES("369","mk","Macedonia (the former Yugoslav Republic of)");
INSERT INTO destination_country VALUES("370","mg","Madagascar");
INSERT INTO destination_country VALUES("371","mw","Malawi");
INSERT INTO destination_country VALUES("372","my","Malaysia");
INSERT INTO destination_country VALUES("373","mv","Maldives");
INSERT INTO destination_country VALUES("374","ml","Mali");
INSERT INTO destination_country VALUES("375","mt","Malta");
INSERT INTO destination_country VALUES("376","mh","Marshall Islands (the)");
INSERT INTO destination_country VALUES("377","mq","Martinique");
INSERT INTO destination_country VALUES("378","mr","Mauritania");
INSERT INTO destination_country VALUES("379","mu","Mauritius");
INSERT INTO destination_country VALUES("380","yt","Mayotte");
INSERT INTO destination_country VALUES("381","mx","Mexico");
INSERT INTO destination_country VALUES("382","fm","Micronesia (Federated States of)");
INSERT INTO destination_country VALUES("383","md","Moldova (the Republic of)");
INSERT INTO destination_country VALUES("384","mc","Monaco");
INSERT INTO destination_country VALUES("385","mn","Mongolia");
INSERT INTO destination_country VALUES("386","me","Montenegro");
INSERT INTO destination_country VALUES("387","ms","Montserrat");
INSERT INTO destination_country VALUES("388","ma","Morocco");
INSERT INTO destination_country VALUES("389","mz","Mozambique");
INSERT INTO destination_country VALUES("390","mm","Myanmar");
INSERT INTO destination_country VALUES("391","na","Namibia");
INSERT INTO destination_country VALUES("392","nr","Nauru");
INSERT INTO destination_country VALUES("393","np","Nepal");
INSERT INTO destination_country VALUES("394","nl","Netherlands (the)");
INSERT INTO destination_country VALUES("395","an","Netherlands Antilles");
INSERT INTO destination_country VALUES("396","nc","New Caledonia");
INSERT INTO destination_country VALUES("397","nz","New Zealand");
INSERT INTO destination_country VALUES("398","ni","Nicaragua");
INSERT INTO destination_country VALUES("399","ne","Niger (the)");
INSERT INTO destination_country VALUES("400","ng","Nigeria");
INSERT INTO destination_country VALUES("401","nu","Niue");
INSERT INTO destination_country VALUES("402","nf","Norfolk Island");
INSERT INTO destination_country VALUES("403","mp","Northern Mariana Islands (the)");
INSERT INTO destination_country VALUES("404","no","Norway");
INSERT INTO destination_country VALUES("405","om","Oman");
INSERT INTO destination_country VALUES("406","pk","Pakistan");
INSERT INTO destination_country VALUES("407","pw","Palau");
INSERT INTO destination_country VALUES("408","ps","Palestine, State of");
INSERT INTO destination_country VALUES("409","pa","Panama");
INSERT INTO destination_country VALUES("410","pg","Papua New Guinea");
INSERT INTO destination_country VALUES("411","py","Paraguay");
INSERT INTO destination_country VALUES("412","pe","Peru");
INSERT INTO destination_country VALUES("413","ph","Philippines (the)");
INSERT INTO destination_country VALUES("414","pn","Pitcairn");
INSERT INTO destination_country VALUES("415","pl","Poland");
INSERT INTO destination_country VALUES("416","pt","Portugal");
INSERT INTO destination_country VALUES("417","pr","Puerto Rico");
INSERT INTO destination_country VALUES("418","qa","Qatar");
INSERT INTO destination_country VALUES("419","re","R&eacute;union");
INSERT INTO destination_country VALUES("420","ro","Romania");
INSERT INTO destination_country VALUES("421","ru","Russian Federation (the)");
INSERT INTO destination_country VALUES("422","rw","Rwanda");
INSERT INTO destination_country VALUES("423","sh","Saint Helena, Ascension and Tristan da Cunha");
INSERT INTO destination_country VALUES("424","kn","Saint Kitts and Nevis");
INSERT INTO destination_country VALUES("425","lc","Saint Lucia");
INSERT INTO destination_country VALUES("426","pm","Saint Pierre and Miquelon");
INSERT INTO destination_country VALUES("427","vc","Saint Vincent and the Grenadines");
INSERT INTO destination_country VALUES("428","ws","Samoa");
INSERT INTO destination_country VALUES("429","sm","San Marino");
INSERT INTO destination_country VALUES("430","st","Sao Tome and Principe");
INSERT INTO destination_country VALUES("431","sa","Saudi Arabia");
INSERT INTO destination_country VALUES("432","ab","Scotland");
INSERT INTO destination_country VALUES("433","sn","Senegal");
INSERT INTO destination_country VALUES("434","rs","Serbia");
INSERT INTO destination_country VALUES("435","cs","Serbia and Montenegro");
INSERT INTO destination_country VALUES("436","sc","Seychelles");
INSERT INTO destination_country VALUES("437","sl","Sierra Leone");
INSERT INTO destination_country VALUES("438","sg","Singapore");
INSERT INTO destination_country VALUES("439","sk","Slovakia");
INSERT INTO destination_country VALUES("440","si","Slovenia");
INSERT INTO destination_country VALUES("441","sb","Solomon Islands");
INSERT INTO destination_country VALUES("442","so","Somalia");
INSERT INTO destination_country VALUES("443","za","South Africa");
INSERT INTO destination_country VALUES("444","gs","South Georgia and the South Sandwich Islands");
INSERT INTO destination_country VALUES("445","es","Spain");
INSERT INTO destination_country VALUES("446","lk","Sri Lanka");
INSERT INTO destination_country VALUES("447","sd","Sudan (the)");
INSERT INTO destination_country VALUES("448","sr","Suriname");
INSERT INTO destination_country VALUES("449","sj","Svalbard and Jan Mayen");
INSERT INTO destination_country VALUES("450","sz","Swaziland");
INSERT INTO destination_country VALUES("451","se","Sweden");
INSERT INTO destination_country VALUES("452","ch","Switzerland");
INSERT INTO destination_country VALUES("453","sy","Syrian Arab Republic");
INSERT INTO destination_country VALUES("454","tw","Taiwan (Province of China)");
INSERT INTO destination_country VALUES("455","tj","Tajikistan");
INSERT INTO destination_country VALUES("456","tz","Tanzania, United Republic of");
INSERT INTO destination_country VALUES("457","th","Thailand");
INSERT INTO destination_country VALUES("458","tl","Timor-Leste");
INSERT INTO destination_country VALUES("459","tg","Togo");
INSERT INTO destination_country VALUES("460","tk","Tokelau");
INSERT INTO destination_country VALUES("461","to","Tonga");
INSERT INTO destination_country VALUES("462","tt","Trinidad and Tobago");
INSERT INTO destination_country VALUES("463","tn","Tunisia");
INSERT INTO destination_country VALUES("464","tr","Turkey");
INSERT INTO destination_country VALUES("465","tm","Turkmenistan");
INSERT INTO destination_country VALUES("466","tc","Turks and Caicos Islands (the)");
INSERT INTO destination_country VALUES("467","tv","Tuvalu");
INSERT INTO destination_country VALUES("468","ug","Uganda");
INSERT INTO destination_country VALUES("469","ua","Ukraine");
INSERT INTO destination_country VALUES("470","ae","United Arab Emirates (the)");
INSERT INTO destination_country VALUES("471","gb","United Kingdom of Great Britain and Northern Ireland (the)");
INSERT INTO destination_country VALUES("472","um","United States Minor Outlying Islands (the)");
INSERT INTO destination_country VALUES("473","us","United States of America (the)");
INSERT INTO destination_country VALUES("474","uy","Uruguay");
INSERT INTO destination_country VALUES("475","uz","Uzbekistan");
INSERT INTO destination_country VALUES("476","vu","Vanuatu");
INSERT INTO destination_country VALUES("477","ve","Venezuela (Bolivarian Republic of)");
INSERT INTO destination_country VALUES("478","vn","Viet Nam");
INSERT INTO destination_country VALUES("479","vg","Virgin Islands (British)");
INSERT INTO destination_country VALUES("480","vi","Virgin Islands (U.S.)");
INSERT INTO destination_country VALUES("481","wa","Wales");
INSERT INTO destination_country VALUES("482","wf","Wallis and Futuna");
INSERT INTO destination_country VALUES("483","eh","Western Sahara");
INSERT INTO destination_country VALUES("484","ye","Yemen");
INSERT INTO destination_country VALUES("485","zm","Zambia");
INSERT INTO destination_country VALUES("486","zw","Zimbabwe");



DROP TABLE district;

CREATE TABLE `district` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(111) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO district VALUES("1","Bogra");
INSERT INTO district VALUES("2","Dhaka");
INSERT INTO district VALUES("3","Narail");



DROP TABLE messge_box;

CREATE TABLE `messge_box` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` int(10) NOT NULL,
  `receiver_id` int(10) NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO messge_box VALUES("1","1","2","This isa new message");
INSERT INTO messge_box VALUES("2","2","1","This is test");



DROP TABLE student;

CREATE TABLE `student` (
  `name` varchar(20) DEFAULT NULL,
  `roll` int(10) NOT NULL,
  `gpa` double(3,2) DEFAULT NULL,
  PRIMARY KEY (`roll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO student VALUES("kousar","1","3.50");
INSERT INTO student VALUES("shipon","2","4.40");
INSERT INTO student VALUES("shammi","3","3.40");
INSERT INTO student VALUES("sumon","4","3.40");
INSERT INTO student VALUES("akmal","5","6.40");
INSERT INTO student VALUES("raton","6","7.40");
INSERT INTO student VALUES("rijwana","7","5.40");



DROP TABLE thana;

CREATE TABLE `thana` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(111) NOT NULL,
  `district_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO thana VALUES("1","Dhunat","1");
INSERT INTO thana VALUES("2","Sherpur","1");
INSERT INTO thana VALUES("3","Dhanmondi","2");
INSERT INTO thana VALUES("4","Mirpur","2");



DROP TABLE user;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1111) NOT NULL,
  `email` varchar(1111) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `thana_id` int(11) NOT NULL,
  `image` varchar(210) NOT NULL,
  `status` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

INSERT INTO user VALUES("21","kousar Rahman","kousar.cse2334@gmail.com","01773340092","1","1","dhdhgfh.jpg","1");
INSERT INTO user VALUES("22","sumon","kousar.cse2334@gmail.com","232","2","3","49853217_2271785433105982_6654799929615056896_n.jpg","0");



