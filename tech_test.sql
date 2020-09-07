/*
Navicat MySQL Data Transfer

Source Server         : LOCALHOST
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : tech_test

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

*/
create database tech_test;

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for loc_element_types
-- ----------------------------
DROP TABLE IF EXISTS loc_element_types;
CREATE TABLE loc_element_types (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(245) DEFAULT NULL,
  is_active tinyint(1) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loc_element_types
-- ----------------------------
INSERT INTO loc_element_types VALUES ('1', 'Region', '1');
INSERT INTO loc_element_types VALUES ('2', 'Country', '1');
INSERT INTO loc_element_types VALUES ('3', 'Province', '1');
INSERT INTO loc_element_types VALUES ('4', 'District', '1');

-- ----------------------------
-- Table structure for loc_elements
-- ----------------------------
DROP TABLE IF EXISTS loc_elements;
CREATE TABLE loc_elements (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name text NOT NULL,
  iso_alpha_2 varchar(45) DEFAULT NULL,
  parent_id bigint(20) DEFAULT NULL,
  element_type_id bigint(20) DEFAULT NULL,
  is_active tinyint(1) NOT NULL,
  PRIMARY KEY (id)
  
) ENGINE=InnoDB AUTO_INCREMENT=852 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loc_elements
-- ----------------------------
INSERT INTO loc_elements VALUES ('7', 'Andorra', 'AD', '824', '2', '1');
INSERT INTO loc_elements VALUES ('8', 'United Arab Emirates', 'AE', '826', '2', '1');
INSERT INTO loc_elements VALUES ('9', 'Afghanistan', 'AF', '828', '2', '1');
INSERT INTO loc_elements VALUES ('10', 'Antigua and Barbuda', 'AG', '825', '2', '1');
INSERT INTO loc_elements VALUES ('12', 'Albania', 'AL', '824', '2', '1');
INSERT INTO loc_elements VALUES ('13', 'Armenia', 'AM', '824', '2', '1');
INSERT INTO loc_elements VALUES ('15', 'Angola', 'AO', '829', '2', '1');
INSERT INTO loc_elements VALUES ('17', 'Argentina', 'AR', '825', '2', '1');
INSERT INTO loc_elements VALUES ('18', 'American Samoa', 'AS', '823', '2', '1');
INSERT INTO loc_elements VALUES ('19', 'Austria', 'AT', '824', '2', '1');
INSERT INTO loc_elements VALUES ('20', 'Australia', 'AU', '823', '2', '1');
INSERT INTO loc_elements VALUES ('21', 'Aruba', 'AW', '825', '2', '1');
INSERT INTO loc_elements VALUES ('22', 'Azerbaijan', 'AZ', '824', '2', '1');
INSERT INTO loc_elements VALUES ('23', 'Bosnia and Herzegovina', 'BA', '824', '2', '1');
INSERT INTO loc_elements VALUES ('24', 'Barbados', 'BB', '825', '2', '1');
INSERT INTO loc_elements VALUES ('25', 'Bangladesh', 'BD', '828', '2', '1');
INSERT INTO loc_elements VALUES ('26', 'Belgium', 'BE', '824', '2', '1');
INSERT INTO loc_elements VALUES ('27', 'Burkina Faso', 'BF', '829', '2', '1');
INSERT INTO loc_elements VALUES ('28', 'Bulgaria', 'BG', '824', '2', '1');
INSERT INTO loc_elements VALUES ('29', 'Bahrain', 'BH', '826', '2', '1');
INSERT INTO loc_elements VALUES ('30', 'Burundi', 'BI', '829', '2', '1');
INSERT INTO loc_elements VALUES ('31', 'Benin', 'BJ', '829', '2', '1');
INSERT INTO loc_elements VALUES ('33', 'Bermuda', 'BM', '827', '2', '1');
INSERT INTO loc_elements VALUES ('35', 'Bolivia', 'BO', '825', '2', '1');
INSERT INTO loc_elements VALUES ('36', 'Brazil', 'BR', '825', '2', '1');
INSERT INTO loc_elements VALUES ('37', 'Bahamas', 'BS', '825', '2', '1');
INSERT INTO loc_elements VALUES ('38', 'Bhutan', 'BT', '828', '2', '1');
INSERT INTO loc_elements VALUES ('39', 'Botswana', 'BW', '829', '2', '1');
INSERT INTO loc_elements VALUES ('40', 'Belarus', 'BY', '824', '2', '1');
INSERT INTO loc_elements VALUES ('41', 'Belize', 'BZ', '825', '2', '1');
INSERT INTO loc_elements VALUES ('42', 'Canada', 'CA', '827', '2', '1');
INSERT INTO loc_elements VALUES ('44', 'Democratic Republic of the Congo', 'CD', '829', '2', '1');
INSERT INTO loc_elements VALUES ('45', 'Central African Republic', 'CF', '829', '2', '1');
INSERT INTO loc_elements VALUES ('47', 'Switzerland', 'CH', '824', '2', '1');
INSERT INTO loc_elements VALUES ('48', 'Côte d’Ivoire', 'CI', '829', '2', '1');
INSERT INTO loc_elements VALUES ('50', 'Chile', 'CL', '825', '2', '1');
INSERT INTO loc_elements VALUES ('51', 'Cameroon', 'CM', '829', '2', '1');
INSERT INTO loc_elements VALUES ('52', 'China', 'CN', '823', '2', '1');
INSERT INTO loc_elements VALUES ('53', 'Colombia', 'CO', '825', '2', '1');
INSERT INTO loc_elements VALUES ('54', 'Costa Rica', 'CR', '825', '2', '1');
INSERT INTO loc_elements VALUES ('55', 'Cuba', 'CU', '825', '2', '1');
INSERT INTO loc_elements VALUES ('56', 'Cape Verde', 'CV', '829', '2', '1');
INSERT INTO loc_elements VALUES ('58', 'Cyprus', 'CY', '824', '2', '1');
INSERT INTO loc_elements VALUES ('59', 'Czech Republic', 'CZ', '824', '2', '1');
INSERT INTO loc_elements VALUES ('60', 'Germany', 'DE', '824', '2', '1');
INSERT INTO loc_elements VALUES ('61', 'Djibouti', 'DJ', '826', '2', '1');
INSERT INTO loc_elements VALUES ('62', 'Denmark', 'DK', '824', '2', '1');
INSERT INTO loc_elements VALUES ('63', 'Dominica', 'DM', '825', '2', '1');
INSERT INTO loc_elements VALUES ('64', 'Dominican Republic', 'DO', '825', '2', '1');
INSERT INTO loc_elements VALUES ('65', 'Algeria', 'DZ', '826', '2', '1');
INSERT INTO loc_elements VALUES ('66', 'Ecuador', 'EC', '825', '2', '1');
INSERT INTO loc_elements VALUES ('67', 'Estonia', 'EE', '824', '2', '1');
INSERT INTO loc_elements VALUES ('68', 'Egypt', 'EG', '826', '2', '1');
INSERT INTO loc_elements VALUES ('70', 'Eritrea', 'ER', '829', '2', '1');
INSERT INTO loc_elements VALUES ('71', 'Spain', 'ES', '824', '2', '1');
INSERT INTO loc_elements VALUES ('72', 'Ethiopia', 'ET', '829', '2', '1');
INSERT INTO loc_elements VALUES ('73', 'Finland', 'FI', '824', '2', '1');
INSERT INTO loc_elements VALUES ('74', 'Fiji', 'FJ', '823', '2', '1');
INSERT INTO loc_elements VALUES ('77', 'Faroe Islands', 'FO', '824', '2', '1');
INSERT INTO loc_elements VALUES ('78', 'France', 'FR', '824', '2', '1');
INSERT INTO loc_elements VALUES ('79', 'Gabon', 'GA', '829', '2', '1');
INSERT INTO loc_elements VALUES ('80', 'United Kingdom', 'GB', '824', '2', '1');
INSERT INTO loc_elements VALUES ('81', 'Grenada', 'GD', '825', '2', '1');
INSERT INTO loc_elements VALUES ('82', 'Georgia', 'GE', '824', '2', '1');
INSERT INTO loc_elements VALUES ('83', 'Ghana', 'GH', '829', '2', '1');
INSERT INTO loc_elements VALUES ('84', 'Gibraltar', 'GI', '824', '2', '1');
INSERT INTO loc_elements VALUES ('85', 'Greenland', 'GL', '824', '2', '1');
INSERT INTO loc_elements VALUES ('86', 'Gambia', 'GM', '829', '2', '1');
INSERT INTO loc_elements VALUES ('87', 'Guinea', 'GN', '829', '2', '1');
INSERT INTO loc_elements VALUES ('88', 'Equatorial Guinea', 'GQ', '829', '2', '1');
INSERT INTO loc_elements VALUES ('89', 'Greece', 'GR', '824', '2', '1');
INSERT INTO loc_elements VALUES ('90', 'Guatemala', 'GT', '825', '2', '1');
INSERT INTO loc_elements VALUES ('91', 'Guam', 'GU', '823', '2', '1');
INSERT INTO loc_elements VALUES ('92', 'Guinea-Bissau', 'GW', '829', '2', '1');
INSERT INTO loc_elements VALUES ('93', 'Guyana', 'GY', '825', '2', '1');
INSERT INTO loc_elements VALUES ('95', 'Honduras', 'HN', '825', '2', '1');
INSERT INTO loc_elements VALUES ('96', 'Croatia', 'HR', '824', '2', '1');
INSERT INTO loc_elements VALUES ('97', 'Haiti', 'HT', '825', '2', '1');
INSERT INTO loc_elements VALUES ('98', 'Hungary', 'HU', '824', '2', '1');
INSERT INTO loc_elements VALUES ('99', 'Indonesia', 'ID', '823', '2', '1');
INSERT INTO loc_elements VALUES ('100', 'Ireland', 'IE', '824', '2', '1');
INSERT INTO loc_elements VALUES ('101', 'Israel', 'IL', '826', '2', '1');
INSERT INTO loc_elements VALUES ('102', 'Isle of Man', 'IM', '824', '2', '1');
INSERT INTO loc_elements VALUES ('103', 'India', 'IN', '828', '2', '1');
INSERT INTO loc_elements VALUES ('105', 'Iraq', 'IQ', '826', '2', '1');
INSERT INTO loc_elements VALUES ('106', 'Islamic Republic of Iran', 'IR', '826', '2', '1');
INSERT INTO loc_elements VALUES ('107', 'Iceland', 'IS', '824', '2', '1');
INSERT INTO loc_elements VALUES ('108', 'Italy', 'IT', '824', '2', '1');
INSERT INTO loc_elements VALUES ('109', 'Jersey', 'JE', '824', '2', '1');
INSERT INTO loc_elements VALUES ('110', 'Jamaica', 'JM', '825', '2', '1');
INSERT INTO loc_elements VALUES ('111', 'Jordan', 'JO', '826', '2', '1');
INSERT INTO loc_elements VALUES ('112', 'Japan', 'JP', '823', '2', '1');
INSERT INTO loc_elements VALUES ('113', 'Kenya', 'KE', '829', '2', '1');
INSERT INTO loc_elements VALUES ('114', 'Kyrgyzstan', 'KG', '824', '2', '1');
INSERT INTO loc_elements VALUES ('115', 'Cambodia', 'KH', '823', '2', '1');
INSERT INTO loc_elements VALUES ('116', 'Kiribati', 'KI', '823', '2', '1');
INSERT INTO loc_elements VALUES ('117', 'Comoros', 'KM', '829', '2', '1');
INSERT INTO loc_elements VALUES ('118', 'Saint Kitts and Nevis', 'KN', '825', '2', '1');
INSERT INTO loc_elements VALUES ('121', 'Kuwait', 'KW', '826', '2', '1');
INSERT INTO loc_elements VALUES ('122', 'Cayman Islands', 'KY', '825', '2', '1');
INSERT INTO loc_elements VALUES ('123', 'Kazakhstan', 'KZ', '824', '2', '1');
INSERT INTO loc_elements VALUES ('124', 'Lao PDR', 'LA', '823', '2', '1');
INSERT INTO loc_elements VALUES ('125', 'Lebanon', 'LB', '826', '2', '1');
INSERT INTO loc_elements VALUES ('126', 'Saint Lucia', 'LC', '825', '2', '1');
INSERT INTO loc_elements VALUES ('127', 'Liechtenstein', 'LI', '824', '2', '1');
INSERT INTO loc_elements VALUES ('128', 'Sri Lanka', 'LK', '828', '2', '1');
INSERT INTO loc_elements VALUES ('129', 'Liberia', 'LR', '829', '2', '1');
INSERT INTO loc_elements VALUES ('130', 'Lesotho', 'LS', '829', '2', '1');
INSERT INTO loc_elements VALUES ('131', 'Lithuania', 'LT', '824', '2', '1');
INSERT INTO loc_elements VALUES ('132', 'Luxembourg', 'LU', '824', '2', '1');
INSERT INTO loc_elements VALUES ('133', 'Libya', 'LY', '826', '2', '1');
INSERT INTO loc_elements VALUES ('134', 'Morocco', 'MA', '826', '2', '1');
INSERT INTO loc_elements VALUES ('135', 'Monaco', 'MC', '824', '2', '1');
INSERT INTO loc_elements VALUES ('136', 'Moldova', 'MD', '824', '2', '1');
INSERT INTO loc_elements VALUES ('137', 'Montenegro', 'ME', '824', '2', '1');
INSERT INTO loc_elements VALUES ('139', 'Madagascar', 'MG', '829', '2', '1');
INSERT INTO loc_elements VALUES ('140', 'Marshall Islands', 'MH', '823', '2', '1');
INSERT INTO loc_elements VALUES ('142', 'Mali', 'ML', '829', '2', '1');
INSERT INTO loc_elements VALUES ('143', 'Myanmar (Burma)', 'MM', '823', '2', '1');
INSERT INTO loc_elements VALUES ('144', 'Mongolia', 'MN', '823', '2', '1');
INSERT INTO loc_elements VALUES ('146', 'Northern Mariana Islands', 'MP', '823', '2', '1');
INSERT INTO loc_elements VALUES ('147', 'Mauritania', 'MR', '829', '2', '1');
INSERT INTO loc_elements VALUES ('149', 'Malta', 'MT', '826', '2', '1');
INSERT INTO loc_elements VALUES ('150', 'Mauritius', 'MU', '829', '2', '1');
INSERT INTO loc_elements VALUES ('151', 'Maldives', 'MV', '828', '2', '1');
INSERT INTO loc_elements VALUES ('152', 'Malawi', 'MW', '829', '2', '1');
INSERT INTO loc_elements VALUES ('153', 'Mexico', 'MX', '825', '2', '1');
INSERT INTO loc_elements VALUES ('154', 'Malaysia', 'MY', '823', '2', '1');
INSERT INTO loc_elements VALUES ('155', 'Mozambique', 'MZ', '829', '2', '1');
INSERT INTO loc_elements VALUES ('156', 'Namibia', 'NA', '829', '2', '1');
INSERT INTO loc_elements VALUES ('157', 'New Caledonia', 'NC', '823', '2', '1');
INSERT INTO loc_elements VALUES ('158', 'Niger', 'NE', '829', '2', '1');
INSERT INTO loc_elements VALUES ('159', 'Nigeria', 'NG', '829', '2', '1');
INSERT INTO loc_elements VALUES ('160', 'Nicaragua', 'NI', '825', '2', '1');
INSERT INTO loc_elements VALUES ('161', 'Netherlands', 'NL', '824', '2', '1');
INSERT INTO loc_elements VALUES ('162', 'Norway', 'NO', '824', '2', '1');
INSERT INTO loc_elements VALUES ('163', 'Nepal', 'NP', '828', '2', '1');
INSERT INTO loc_elements VALUES ('164', 'Nauru', 'NR', '823', '2', '1');
INSERT INTO loc_elements VALUES ('166', 'New Zealand', 'NZ', '823', '2', '1');
INSERT INTO loc_elements VALUES ('167', 'Oman', 'OM', '826', '2', '1');
INSERT INTO loc_elements VALUES ('168', 'Panama', 'PA', '825', '2', '1');
INSERT INTO loc_elements VALUES ('169', 'Peru', 'PE', '825', '2', '1');
INSERT INTO loc_elements VALUES ('170', 'French Polynesia', 'PF', '823', '2', '1');
INSERT INTO loc_elements VALUES ('171', 'Papua New Guinea', 'PG', '823', '2', '1');
INSERT INTO loc_elements VALUES ('172', 'Philippines', 'PH', '823', '2', '1');
INSERT INTO loc_elements VALUES ('173', 'Pakistan', 'PK', '828', '2', '1');
INSERT INTO loc_elements VALUES ('174', 'Poland', 'PL', '824', '2', '1');
INSERT INTO loc_elements VALUES ('177', 'Puerto Rico', 'PR', '825', '2', '1');
INSERT INTO loc_elements VALUES ('178', 'Portugal', 'PT', '824', '2', '1');
INSERT INTO loc_elements VALUES ('179', 'Palau', 'PW', '823', '2', '1');
INSERT INTO loc_elements VALUES ('180', 'Paraguay', 'PY', '825', '2', '1');
INSERT INTO loc_elements VALUES ('181', 'Qatar', 'QA', '826', '2', '1');
INSERT INTO loc_elements VALUES ('182', 'Romania', 'RO', '824', '2', '1');
INSERT INTO loc_elements VALUES ('183', 'Serbia', 'RS', '824', '2', '1');
INSERT INTO loc_elements VALUES ('184', 'Russian Federation', 'RU', '824', '2', '1');
INSERT INTO loc_elements VALUES ('185', 'Rwanda', 'RW', '829', '2', '1');
INSERT INTO loc_elements VALUES ('186', 'Saudi Arabia', 'SA', '826', '2', '1');
INSERT INTO loc_elements VALUES ('187', 'Solomon Islands', 'SB', '823', '2', '1');
INSERT INTO loc_elements VALUES ('188', 'Seychelles', 'SC', '829', '2', '1');
INSERT INTO loc_elements VALUES ('189', 'Sudan', 'SD', '829', '2', '1');
INSERT INTO loc_elements VALUES ('190', 'Sweden', 'SE', '824', '2', '1');
INSERT INTO loc_elements VALUES ('191', 'Singapore', 'SG', '823', '2', '1');
INSERT INTO loc_elements VALUES ('193', 'Slovenia', 'SI', '824', '2', '1');
INSERT INTO loc_elements VALUES ('195', 'Slovakia', 'SK', '824', '2', '1');
INSERT INTO loc_elements VALUES ('196', 'Sierra Leone', 'SL', '829', '2', '1');
INSERT INTO loc_elements VALUES ('197', 'San Marino', 'SM', '824', '2', '1');
INSERT INTO loc_elements VALUES ('198', 'Senegal', 'SN', '829', '2', '1');
INSERT INTO loc_elements VALUES ('199', 'Somalia', 'SO', '829', '2', '1');
INSERT INTO loc_elements VALUES ('200', 'Suriname', 'SR', '825', '2', '1');
INSERT INTO loc_elements VALUES ('201', 'Sao Tome and Principe', 'ST', '829', '2', '1');
INSERT INTO loc_elements VALUES ('202', 'El Salvador', 'SV', '825', '2', '1');
INSERT INTO loc_elements VALUES ('204', 'Swaziland', 'SZ', '829', '2', '1');
INSERT INTO loc_elements VALUES ('205', 'Turks and Caicos Islands', 'TC', '825', '2', '1');
INSERT INTO loc_elements VALUES ('206', 'Chad', 'TD', '829', '2', '1');
INSERT INTO loc_elements VALUES ('207', 'Togo', 'TG', '829', '2', '1');
INSERT INTO loc_elements VALUES ('208', 'Thailand', 'TH', '823', '2', '1');
INSERT INTO loc_elements VALUES ('209', 'Tajikistan', 'TJ', '824', '2', '1');
INSERT INTO loc_elements VALUES ('212', 'Turkmenistan', 'TM', '824', '2', '1');
INSERT INTO loc_elements VALUES ('213', 'Tunisia', 'TN', '826', '2', '1');
INSERT INTO loc_elements VALUES ('214', 'Tonga', 'TO', '823', '2', '1');
INSERT INTO loc_elements VALUES ('215', 'Turkey', 'TR', '824', '2', '1');
INSERT INTO loc_elements VALUES ('216', 'Trinidad and Tobago', 'TT', '825', '2', '1');
INSERT INTO loc_elements VALUES ('217', 'Tuvalu', 'TV', '823', '2', '1');
INSERT INTO loc_elements VALUES ('219', 'United Republic of Tanzania', 'TZ', '829', '2', '1');
INSERT INTO loc_elements VALUES ('220', 'Ukraine', 'UA', '824', '2', '1');
INSERT INTO loc_elements VALUES ('221', 'Uganda', 'UG', '829', '2', '1');
INSERT INTO loc_elements VALUES ('222', 'United States', 'US', '827', '2', '1');
INSERT INTO loc_elements VALUES ('223', 'Uruguay', 'UY', '825', '2', '1');
INSERT INTO loc_elements VALUES ('224', 'Uzbekistan', 'UZ', '824', '2', '1');
INSERT INTO loc_elements VALUES ('227', 'Venezuela', 'VE', '825', '2', '1');
INSERT INTO loc_elements VALUES ('228', 'British Virgin Islands', 'vg', '825', '2', '1');
INSERT INTO loc_elements VALUES ('230', 'Vietnam', 'VN', '823', '2', '1');
INSERT INTO loc_elements VALUES ('231', 'Vanuatu', 'VU', '823', '2', '1');
INSERT INTO loc_elements VALUES ('233', 'Samoa', 'WS', '823', '2', '1');
INSERT INTO loc_elements VALUES ('234', 'Yemen', 'YE', '826', '2', '1');
INSERT INTO loc_elements VALUES ('236', 'South Africa', 'ZA', '829', '2', '1');
INSERT INTO loc_elements VALUES ('237', 'Zambia', 'ZM', '829', '2', '1');
INSERT INTO loc_elements VALUES ('238', 'Zimbabwe', 'ZW', '829', '2', '1');
INSERT INTO loc_elements VALUES ('332', 'Trifinio region', null, '202', '3', '1');
INSERT INTO loc_elements VALUES ('337', 'Meta-Piedmonte', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('338', 'Meta-Altillanura', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('339', 'Cauca-Patia', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('343', 'Chorotega', null, '54', '3', '1');
INSERT INTO loc_elements VALUES ('344', 'Huetar Norte', null, '54', '3', '1');
INSERT INTO loc_elements VALUES ('345', 'Llanos-Piedmonte', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('346', 'Llanos-Altillanura', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('347', 'Patia', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('348', 'Plateau of Popayan', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('349', 'Chorotega', null, '54', '3', '1');
INSERT INTO loc_elements VALUES ('350', 'Huetar Norte', null, '54', '3', '1');
INSERT INTO loc_elements VALUES ('361', 'Paragominas', null, '36', '4', '1');
INSERT INTO loc_elements VALUES ('362', 'Paragominas', null, '36', '4', '1');
INSERT INTO loc_elements VALUES ('363', 'Paragominas', null, '36', '4', '1');
INSERT INTO loc_elements VALUES ('364', 'paragominas', null, '36', '4', '1');
INSERT INTO loc_elements VALUES ('370', 'Trifinio', null, '202', '3', '1');
INSERT INTO loc_elements VALUES ('371', 'NicaCentral', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('372', 'Trifinio', null, '95', '3', '1');
INSERT INTO loc_elements VALUES ('373', 'NicaCentral', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('377', 'Los Cerrillos Cauca', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('378', 'Cauca', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('380', 'Ucayali', null, '169', '3', '1');
INSERT INTO loc_elements VALUES ('385', 'Los Cerrillos Cauca', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('386', 'Puracé', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('387', 'Puno', null, '169', '3', '1');
INSERT INTO loc_elements VALUES ('388', 'Estelí, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('389', 'Madriz, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('390', 'Nueva Segovia, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('391', 'Quiché, Guatemala', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('392', 'Sololá, Guatemala', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('393', 'Estelí, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('394', 'Madriz, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('395', 'Nueva Segovia, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('396', 'Quiché, Guatemala', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('397', 'Sololá, Guatemala', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('398', 'Estelí, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('399', 'Madriz, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('400', 'Nueva Segovia, Nicaragua', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('401', 'Huehuetenango, Guatemala', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('403', 'Trifinio', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('404', 'NicaCentral', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('410', 'Junin', null, '169', '3', '1');
INSERT INTO loc_elements VALUES ('413', 'Trifinio', null, '95', '3', '1');
INSERT INTO loc_elements VALUES ('414', 'NicaCentral', null, '160', '3', '1');
INSERT INTO loc_elements VALUES ('416', 'Son La', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('417', 'Guinayangan, Quezon Province, Philippines', null, '172', '4', '1');
INSERT INTO loc_elements VALUES ('419', 'Vietnam - Dien Bien, Dien Bien province', null, '230', '4', '1');
INSERT INTO loc_elements VALUES ('420', 'Cambodia - Kone Mom district, Ratanakiri province', null, '115', '4', '1');
INSERT INTO loc_elements VALUES ('440', 'Bihar, India', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('445', 'Githunguri', null, '113', '4', '1');
INSERT INTO loc_elements VALUES ('446', 'Kayatta', null, '113', '4', '1');
INSERT INTO loc_elements VALUES ('447', 'Kaptumo', null, '113', '4', '1');
INSERT INTO loc_elements VALUES ('449', 'Kutai Kartanegara', null, '99', '4', '1');
INSERT INTO loc_elements VALUES ('459', 'Nandi', null, '221', '4', '1');
INSERT INTO loc_elements VALUES ('464', 'Hanoi', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('465', 'Yen Binh', null, '230', '4', '1');
INSERT INTO loc_elements VALUES ('466', 'Ky Anh', null, '230', '4', '1');
INSERT INTO loc_elements VALUES ('475', 'Nioro du Rip', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('478', 'Cinzana', null, '142', '4', '1');
INSERT INTO loc_elements VALUES ('479', 'Kaffrine', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('480', 'Lawra', null, '83', '4', '1');
INSERT INTO loc_elements VALUES ('481', 'Jirapa', null, '83', '4', '1');
INSERT INTO loc_elements VALUES ('483', 'Bougouni', null, '142', '4', '1');
INSERT INTO loc_elements VALUES ('496', 'Sikasso Region', null, '142', '3', '1');
INSERT INTO loc_elements VALUES ('504', 'Paragominas', null, '36', '4', '1');
INSERT INTO loc_elements VALUES ('505', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('506', 'Lushoto, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('508', 'Nandom', null, '83', '4', '1');
INSERT INTO loc_elements VALUES ('509', 'Bambey', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('510', 'Linguère', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('531', 'Lushoto, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('532', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('536', 'Lushoto , Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('537', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('538', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('539', 'Lushoto, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('540', 'Lushoto, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('541', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('559', 'Luwero Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('560', 'Mbale Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('561', 'Lushoto, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('562', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('566', 'Bugesera', null, '185', '3', '1');
INSERT INTO loc_elements VALUES ('567', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('568', 'Lushoto, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('569', 'Lushoto , Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('570', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('572', 'Pauri Garhwal', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('573', 'Rudra Prayag', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('574', 'Tehri Garhwal', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('575', 'Mandi', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('576', 'Sirmaur', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('578', 'Barmer', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('579', 'Jaisalmer', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('580', 'Jodhpur', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('581', 'Shahdol', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('582', 'Umaria', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('583', 'Koriya', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('584', 'Balrampur', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('585', 'Golaghat', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('586', 'Jorhat', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('587', 'Karbi Anglong', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('588', 'Tinsukia', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('589', 'Longleng', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('590', 'Peren', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('591', 'Mokokchung', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('592', 'Phek', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('593', 'Almora', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('594', 'Tanga/Arusha', null, '198', '3', '1');
INSERT INTO loc_elements VALUES ('595', 'Lushoto', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('596', 'Lushoto Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('597', 'Rakai, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('599', 'Lushoto, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('607', 'Maharashtra', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('608', 'Haryana', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('609', 'Madhya Pradesh', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('610', 'Bihar', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('620', 'Odisha, India', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('621', 'Luwero, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('622', 'Kilolo, Tanzania', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('627', 'Bihar', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('628', 'Haryana', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('629', 'Chiquimula (Trifinio)', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('631', 'Phongsali', null, '124', '3', '1');
INSERT INTO loc_elements VALUES ('632', 'Koutiala', null, '142', '4', '1');
INSERT INTO loc_elements VALUES ('633', 'Colombia: Tolima ', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('634', 'Perú: Jaen, ', null, '169', '4', '1');
INSERT INTO loc_elements VALUES ('635', 'Nicaragua: Malacatoya, Sebaco, Matagalpa y San Luis', null, '160', '4', '1');
INSERT INTO loc_elements VALUES ('636', 'Natagaima, Tolima', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('637', 'Nghe An', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('638', 'Dak Lak', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('639', 'Dong Nai', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('640', 'An Giang', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('643', 'Muzaffarpur', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('644', 'Sirajganj', null, '25', '4', '1');
INSERT INTO loc_elements VALUES ('645', 'Nwoya, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('646', 'Paragominas', null, '36', '4', '1');
INSERT INTO loc_elements VALUES ('647', 'Gimbi ', null, '72', '4', '1');
INSERT INTO loc_elements VALUES ('648', 'Digga', null, '72', '4', '1');
INSERT INTO loc_elements VALUES ('649', 'Mbale, Uganda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('650', 'Darbhanga', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('651', 'Samastipur', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('652', 'municipio de Gracias', null, '54', '4', '1');
INSERT INTO loc_elements VALUES ('653', 'Mahakam Hulu', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('656', 'Brunei Darussalam', 'BN', '823', '2', '1');
INSERT INTO loc_elements VALUES ('657', 'Hong Kong, Special Administrative Region of China', 'HK', '823', '2', '1');
INSERT INTO loc_elements VALUES ('658', 'Macao, Special Administrative Region of China', 'MO', '823', '2', '1');
INSERT INTO loc_elements VALUES ('659', 'Congo (Brazzaville)', 'CG', '829', '2', '1');
INSERT INTO loc_elements VALUES ('666', 'Guernsey', 'GG', '824', '2', '1');
INSERT INTO loc_elements VALUES ('670', 'Korea, Democratic People\'s Republic of', 'KP', '823', '2', '1');
INSERT INTO loc_elements VALUES ('671', 'Korea, Republic of', 'KR', '823', '2', '1');
INSERT INTO loc_elements VALUES ('673', 'Latvia', 'LV', '824', '2', '1');
INSERT INTO loc_elements VALUES ('674', 'Macedonia, Republic of', 'MK', '824', '2', '1');
INSERT INTO loc_elements VALUES ('676', 'Micronesia, Federated States of', 'FM', '823', '2', '1');
INSERT INTO loc_elements VALUES ('684', 'Saint-Martin (French part)', 'MF', '825', '2', '1');
INSERT INTO loc_elements VALUES ('685', 'Saint Vincent and Grenadines', 'VC', '825', '2', '1');
INSERT INTO loc_elements VALUES ('687', 'South Sudan', 'SS', '829', '2', '1');
INSERT INTO loc_elements VALUES ('690', 'Syrian Arab Republic (Syria)', 'SY', '826', '2', '1');
INSERT INTO loc_elements VALUES ('691', 'Taiwan (Province of China)', 'TW', '823', '2', '1');
INSERT INTO loc_elements VALUES ('693', 'Timor', 'TL', '823', '2', '1');
INSERT INTO loc_elements VALUES ('698', 'Virgin Islands, US', 'VI', '825', '2', '1');
INSERT INTO loc_elements VALUES ('719', 'Sint Maarten (Dutch part)', 'SX', '825', '2', '1');
INSERT INTO loc_elements VALUES ('720', 'Curaçao', 'CW', '825', '2', '1');
INSERT INTO loc_elements VALUES ('756', 'Gaza', null, '198', '3', '1');
INSERT INTO loc_elements VALUES ('757', 'Inhambane', null, '142', '3', '1');
INSERT INTO loc_elements VALUES ('758', 'Maputo', null, '155', '3', '1');
INSERT INTO loc_elements VALUES ('759', 'San Gil', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('760', 'Villanueva', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('761', 'Barichara', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('762', 'Cerete', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('763', 'Curiti', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('764', 'San Pelayo', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('765', 'Cotorra', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('766', 'Lorica', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('767', 'Chiquimula', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('768', 'Jalapa', null, '90', '3', '1');
INSERT INTO loc_elements VALUES ('769', 'Fatehgarh', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('770', 'Ludhiana', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('771', 'Sirsa', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('772', 'Yamunanagar', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('773', 'Fatehabad', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('774', 'Patiala', null, '103', '4', '1');
INSERT INTO loc_elements VALUES ('775', 'Laos - Phongsaly', null, '124', '4', '1');
INSERT INTO loc_elements VALUES ('776', 'Bihar', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('777', 'Bihar', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('778', 'Odisha', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('779', 'Uttar Pradesh', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('780', 'Madhya Pradesh', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('781', 'Odisha', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('782', 'Odisha', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('783', 'Madhya Pradesh', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('784', 'Uttar Pradesh', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('785', 'Bihar', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('786', 'Bac Lieu, Dong Thap, and Hau Giang', null, '25', '3', '1');
INSERT INTO loc_elements VALUES ('787', 'Ha Nam, Hai Duong, Nam Dinh, and Vinh Phuc', null, '25', '3', '1');
INSERT INTO loc_elements VALUES ('795', 'Bac Lieu, Vietnam', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('796', 'Dong Thap, Vietnam', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('797', 'Hau Giang, Vietnam', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('798', 'Ha Nam, Vietnam', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('799', 'Hai Duong, Vietnam', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('800', 'Nam Dinh, Vietnam', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('801', 'Vinh Phoc, Vietnam', null, '230', '3', '1');
INSERT INTO loc_elements VALUES ('808', 'Kaduna State', null, '159', '3', '1');
INSERT INTO loc_elements VALUES ('809', 'Kano State', null, '159', '3', '1');
INSERT INTO loc_elements VALUES ('810', 'Yen Bai', null, '115', '3', '1');
INSERT INTO loc_elements VALUES ('811', 'Kolda', null, '198', '4', '1');
INSERT INTO loc_elements VALUES ('812', 'Embu', null, '113', '3', '1');
INSERT INTO loc_elements VALUES ('823', 'East Asia and Pacific', null, null, '1', '1');
INSERT INTO loc_elements VALUES ('824', 'Europe and Central Asia', null, null, '1', '1');
INSERT INTO loc_elements VALUES ('825', 'Latin America & the Caribbean', null, null, '1', '1');
INSERT INTO loc_elements VALUES ('826', 'Middle East and North Africa', null, null, '1', '1');
INSERT INTO loc_elements VALUES ('827', 'North America', null, null, '1', '1');
INSERT INTO loc_elements VALUES ('828', 'South Asia', null, null, '1', '1');
INSERT INTO loc_elements VALUES ('829', 'Sub-Saharan Africa', null, null, '1', '1');
INSERT INTO loc_elements VALUES ('830', 'State of Palestine', 'PS', '826', '2', '1');
INSERT INTO loc_elements VALUES ('831', 'Hageresalam', null, '72', '3', '1');
INSERT INTO loc_elements VALUES ('832', 'Meket', null, '72', '4', '1');
INSERT INTO loc_elements VALUES ('833', 'Embalaje', null, '72', '4', '1');
INSERT INTO loc_elements VALUES ('834', 'Gimbichu', null, '72', '4', '1');
INSERT INTO loc_elements VALUES ('835', 'Bishoftu', null, '72', '4', '1');
INSERT INTO loc_elements VALUES ('838', 'Bhilwara', null, '103', '3', '1');
INSERT INTO loc_elements VALUES ('839', 'Bamenda', null, '51', '4', '1');
INSERT INTO loc_elements VALUES ('840', 'Valle del Cauca', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('841', 'Antioquia', null, '53', '3', '1');
INSERT INTO loc_elements VALUES ('842', 'Quito', null, '66', '3', '1');
INSERT INTO loc_elements VALUES ('843', 'Nairobi', null, '113', '4', '1');
INSERT INTO loc_elements VALUES ('845', 'Cali', null, '53', '4', '1');
INSERT INTO loc_elements VALUES ('846', 'Tete', null, '147', '3', '1');
INSERT INTO loc_elements VALUES ('847', 'Worreilu', null, '72', '4', '1');
INSERT INTO loc_elements VALUES ('848', 'Garu District, Upper East Region, Ghana', null, '83', '4', '1');
INSERT INTO loc_elements VALUES ('851', 'ba', null, '72', '3', '1');

-- ----------------------------
-- Table structure for institutions
-- ----------------------------
DROP TABLE IF EXISTS institutions;
CREATE TABLE institutions (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name text NOT NULL,
  acronym varchar(45) DEFAULT NULL,
  website_link varchar(255) DEFAULT NULL,
  program_id bigint(20) DEFAULT NULL,
  institution_type_id bigint(20) NOT NULL,
  added timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (id), 
  KEY FK_institutions_institution_types_idx (institution_type_id) USING BTREE,
  CONSTRAINT institutions_ibfk_1 FOREIGN KEY (institution_type_id) REFERENCES institution_types (id) ON DELETE CASCADE ON UPDATE CASCADE  
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of institutions
-- ----------------------------
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('1', 'Wageningen University and Research Centre', 'WUR', 'http://www.wur.nl/en.htm', NULL, '36', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('2', 'Mikocheni Agricultural Research Institute', 'MARI', 'http://www.ari-mikocheni.org/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('3', 'Institut National de Recherche Agricole du Benin', 'INRAB', 'http://inrab.org/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('4', 'Georg-August-Universit�t G�ttingen', 'GAU', 'http://www.uni-goettingen.de/', NULL, '36', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('5', 'International Rice Research Institute', 'IRRI', 'http://irri.org/', NULL, '3', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('7', 'National Agricultural Research Organisation (Uganda)', 'NARO', 'http://www.naro.go.ug/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('8', 'Mbeya Agricultural Research and Training Institute', NULL, '', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('10', 'Institut Senegalais de Recherche Agricole', 'ISRA', 'http://www.isra.sn/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('12', 'Institut d�Economie Rurale (Mali)', 'IER', 'http://www.ier.gouv.ml/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('13', 'Office du Niger', 'ON', 'http://www.on-mali.org/joomla/index.php/', NULL, '19', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('14', 'University of Nebraska', 'UNL', 'http://www.unl.edu/', NULL, '36', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('15', 'Ethiopian Biodiversity Institute', 'EBI', 'http://www.ebi.gov.et/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('16', 'National Agricultural Research Institute of Papua New Guinea', NULL, 'http://www.nari.org.pg/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('17', 'Indian Council of Agricultural Research', 'ICAR', 'http://www.icar.org.in/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('21', 'Ministerio de Agricultura, Ganader�a y Alimentaci�n (Guatemala)', 'MAGA', 'http://web.maga.gob.gt/', NULL, '25', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('25', 'National Bureau of Plant Genetic Resources', 'NBPGR', 'http://www.nbpgr.ernet.in/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('26', 'Ministry of Land Management, Agriculture & Cooperative\r\n of Nepal', 'MolMac', 'http://kathmandu.im/ministry-of-agriculture-and-cooperative/', NULL, '25', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('27', 'National Animal Genetic Resources Centre', 'NAGRC', 'http://www.nagrc.go.ug/', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('28', 'Nepal Agricultural Research Council', 'NARC', 'http://narc.gov.np/narc/index.php', NULL, '31', '2016-06-20 02:50:12');
INSERT INTO institutions (id, name, acronym, website_link, program_id, institution_type_id, added) VALUES ('30', 'Council on Renewable Natural Resources Bureau', 'CORRB', 'http://www.moaf.gov.bt/agencies/council-for-rnr-research-of-bhutan/corrb-about-us/', NULL, '31', '2016-06-20 02:50:12');


-- --------------------------------------
-- Table structure for institution_types
-- --------------------------------------

CREATE TABLE institution_types (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(255) NOT NULL,
  acronym varchar(200) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- --------------------------------------
-- Records of institution_types
-- --------------------------------------

INSERT INTO institution_types (id, name, acronym) VALUES ('3', 'CGIAR Center', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('11', 'Regional Organization', 'RO');
INSERT INTO institution_types (id, name, acronym) VALUES ('18', 'Other', 'Other');
INSERT INTO institution_types (id, name, acronym) VALUES ('19', 'Agricultural advisory and/or extension services', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('20', 'Associations (other than regional organizations, extension, and farmer/community level)', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('21', 'Bilateral development agency/bank', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('23', 'Farmer level/community level organization', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('24', 'Foundation', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('25', 'Government', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('26', 'International/regional financial institution', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('27', 'International NGO', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('28', 'International/regional research institution', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('29', 'National/local financial institution', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('30', 'National/Local NGO', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('31', 'National/local research Institution', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('32', 'International Organization (other than financial or research)', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('34', 'Private company (other than financial)', '');
INSERT INTO institution_types (id, name, acronym) VALUES ('36', 'University', '');



-- ----------------------------
-- Table structure for institution_locations
-- ----------------------------
DROP TABLE IF EXISTS institutions_locations;
CREATE TABLE institutions_locations (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  institution_id bigint(20) NOT NULL,
  loc_element_id bigint(20) NOT NULL,
  is_headquater tinyint(1) NOT NULL,
  city text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (id),
  KEY institution_id (institution_id),
  KEY loc_element_id (loc_element_id),
  CONSTRAINT institutions_locations_ibfk_1 FOREIGN KEY (institution_id) REFERENCES institutions (id),
  CONSTRAINT institutions_locations_ibfk_2 FOREIGN KEY (loc_element_id) REFERENCES loc_elements (id)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of institution_locations
-- ----------------------------

INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('1', '1', '161', '1', 'Wageningen');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('2', '2', '219', '1', 'Dar es Salaam');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('3', '3', '31', '1', 'Cotonou');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('4', '4', '60', '1', 'G�ttingen');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('5', '5', '172', '1', 'Los Ba�os');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('7', '7', '221', '1', 'Kampala');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('8', '8', '219', '1', 'Uyole');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('9', '10', '198', '1', 'Saint Louis');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('11', '12', '142', '1', 'Niono');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('12', '13', '142', '1', 'Niono');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('13', '14', '222', '1', 'Lincoln');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('14', '15', '72', '1', 'Addis Ababa');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('15', '16', '171', '1', 'LAE');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('16', '17', '103', '1', 'New Delhi');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('20', '21', '90', '1', 'Ciudad de Guatemala');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('24', '25', '103', '1', 'New Delhi');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('25', '26', '163', '1', 'Singhadurbar');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('26', '27', '221', '1', 'Kampala');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('27', '28', '163', '1', 'Kathamndu');
INSERT INTO institutions_locations (id, institution_id, loc_element_id, is_headquater, city) VALUES ('29', '30', '38', '1', 'Serbithang');


