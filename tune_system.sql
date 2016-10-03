SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `vehicle_components` (
  `componentid` smallint(4) UNSIGNED NOT NULL,
  `part` enum('Exhausts','Front Bullbar','Front Bumper','Hood','Hydraulics','Lamps','Misc','Rear Bullbar','Rear Bumper','Roof','Side Skirts','Spoilers','Vents','Wheels') DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `cars` smallint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `vehicle_components` (`componentid`, `part`, `type`, `cars`) VALUES
(1000, 'Spoilers', 'Pro', 0),
(1001, 'Spoilers', 'Win', 0),
(1002, 'Spoilers', 'Drag', 0),
(1003, 'Spoilers', 'Alpha', 0),
(1004, 'Hood', 'Champ Scoop', 0),
(1005, 'Hood', 'Fury Scoop', 0),
(1006, 'Roof', 'Roof Scoop', 0),
(1007, 'Side Skirts', 'Sideskirt', 0),
(1011, 'Hood', 'Race Scoop', 0),
(1012, 'Hood', 'Worx Scoop', 0),
(1013, 'Lamps', 'Round Fog', 0),
(1014, 'Spoilers', 'Champ', 0),
(1015, 'Spoilers', 'Race', 0),
(1016, 'Spoilers', 'Worx', 0),
(1018, 'Exhausts', 'Upswept', 0),
(1019, 'Exhausts', 'Twin', 0),
(1020, 'Exhausts', 'Large', 0),
(1021, 'Exhausts', 'Medium', 0),
(1022, 'Exhausts', 'Small', 0),
(1023, 'Spoilers', 'Fury', 0),
(1024, 'Lamps', 'Square Fog', 0),
(1025, 'Wheels', 'Offroad', 0),
(1027, 'Side Skirts', 'Alien Sideskirt', 560),
(1028, 'Exhausts', 'Alien', 560),
(1029, 'Exhausts', 'X-Flow', 560),
(1030, 'Side Skirts', 'X-Flow Sideskirt', 560),
(1032, 'Roof', 'Alien Roof Vent', 560),
(1033, 'Roof', 'X-Flow Roof Vent', 560),
(1034, 'Exhausts', 'Alien', 562),
(1035, 'Roof', 'X-Flow Roof Vent', 562),
(1037, 'Exhausts', 'X-Flow', 562),
(1038, 'Roof', 'Alien Roof Vent', 562),
(1039, 'Side Skirts', 'X-Flow Sideskirt', 562),
(1040, 'Side Skirts', 'Alien Sideskirt', 562),
(1043, 'Exhausts', 'Slamin', 575),
(1044, 'Exhausts', 'Chrome', 575),
(1045, 'Exhausts', 'X-Flow', 565),
(1046, 'Exhausts', 'Alien', 565),
(1049, 'Spoilers', 'Alien', 565),
(1050, 'Spoilers', 'X-Flow', 565),
(1051, 'Side Skirts', 'Alien Sideskirt', 565),
(1052, 'Side Skirts', 'X-Flow Sideskirt', 565),
(1053, 'Roof', 'X-Flow', 565),
(1054, 'Roof', 'Alien', 565),
(1055, 'Roof', 'Alien', 561),
(1058, 'Spoilers', 'Alien', 561),
(1059, 'Exhausts', 'X-Flow', 561),
(1060, 'Spoilers', 'X-Flow', 561),
(1061, 'Roof', 'X-Flow', 561),
(1062, 'Side Skirts', 'Alien Sideskirt', 561),
(1063, 'Side Skirts', 'X-Flow Sideskirt', 561),
(1064, 'Exhausts', 'Alien', 561),
(1065, 'Exhausts', 'Alien', 559),
(1066, 'Exhausts', 'X-Flow', 559),
(1067, 'Roof', 'Alien', 559),
(1068, 'Roof', 'X-Flow', 559),
(1071, 'Side Skirts', 'Alien Sideskirt', 559),
(1072, 'Side Skirts', 'X-Flow Sideskirt', 559),
(1073, 'Wheels', 'Shadow', -1),
(1074, 'Wheels', 'Mega', -1),
(1075, 'Wheels', 'Rimshine', -1),
(1076, 'Wheels', 'Wires', -1),
(1077, 'Wheels', 'Classic', -1),
(1078, 'Wheels', 'Twist', -1),
(1079, 'Wheels', 'Cutter', -1),
(1080, 'Wheels', 'Switch', -1),
(1081, 'Wheels', 'Grove', -1),
(1082, 'Wheels', 'Import', -1),
(1083, 'Wheels', 'Dollar', -1),
(1084, 'Wheels', 'Trance', -1),
(1085, 'Wheels', 'Atomic', -1),
(1087, 'Hydraulics', 'Hydraulics', -1),
(1088, 'Roof', 'Alien', 558),
(1089, 'Exhausts', 'X-Flow', 558),
(1091, 'Roof', 'X-Flow', 558),
(1092, 'Exhausts', 'Alien', 558),
(1094, 'Side Skirts', 'Alien Sideskirt', 558),
(1096, 'Wheels', 'Ahab', -1),
(1097, 'Wheels', 'Virtual', -1),
(1098, 'Wheels', 'Access', -1),
(1099, 'Side Skirts', 'Chrome Sideskirt', 575),
(1100, 'Misc', 'Chrome Grill', 534),
(1101, 'Side Skirts', '`Chrome Flames` Sideskirt', 534),
(1102, 'Side Skirts', '`Chrome Strip` Sideskirt', 567),
(1103, 'Roof', 'Covertible', 536),
(1104, 'Exhausts', 'Chrome', 536),
(1105, 'Exhausts', 'Slamin', 536),
(1107, 'Side Skirts', '`Chrome Strip` Sideskirt', 536),
(1109, 'Rear Bullbar', 'Chrome', 535),
(1110, 'Rear Bullbar', 'Slamin', 535),
(1113, 'Exhausts', 'Chrome', 535),
(1114, 'Exhausts', 'Slamin', 535),
(1115, 'Front Bullbar', 'Chrome', 535),
(1116, 'Front Bullbar', 'Slamin', 535),
(1117, 'Front Bumper', 'Chrome', 535),
(1120, 'Side Skirts', '`Chrome Trim` Sideskirt', 535),
(1121, 'Side Skirts', '`Wheelcovers` Sideskirt', 535),
(1123, 'Misc', 'Bullbar Chrome Bars', 534),
(1124, 'Side Skirts', '`Chrome Arches` Sideskirt', 534),
(1125, 'Misc', 'Bullbar Chrome Lights', 534),
(1126, 'Exhausts', 'Chrome Exhaust', 534),
(1127, 'Exhausts', 'Slamin Exhaust', 534),
(1128, 'Roof', 'Vinyl Hardtop', 536),
(1129, 'Exhausts', 'Chrome', 567),
(1130, 'Roof', 'Hardtop', 567),
(1131, 'Roof', 'Softtop', 567),
(1132, 'Exhausts', 'Slamin', 567),
(1135, 'Exhausts', 'Slamin', 576),
(1136, 'Exhausts', 'Chrome', 576),
(1137, 'Side Skirts', '`Chrome Strip` Sideskirt', 576),
(1138, 'Spoilers', 'Alien', 560),
(1139, 'Spoilers', 'X-Flow', 560),
(1140, 'Rear Bumper', 'X-Flow', 560),
(1141, 'Rear Bumper', 'Alien', 560),
(1143, 'Vents', 'Oval Vents', 0),
(1145, 'Vents', 'Square Vents', 0),
(1146, 'Spoilers', 'X-Flow', 562),
(1147, 'Spoilers', 'Alien', 562),
(1148, 'Rear Bumper', 'X-Flow', 562),
(1149, 'Rear Bumper', 'Alien', 562),
(1150, 'Rear Bumper', 'Alien', 565),
(1151, 'Rear Bumper', 'X-Flow', 565),
(1152, 'Front Bumper', 'X-Flow', 565),
(1153, 'Front Bumper', 'Alien', 565),
(1154, 'Rear Bumper', 'Alien', 561),
(1155, 'Front Bumper', 'Alien', 561),
(1156, 'Rear Bumper', 'X-Flow', 561),
(1157, 'Front Bumper', 'X-Flow', 561),
(1158, 'Spoilers', 'X-Flow', 559),
(1159, 'Rear Bumper', 'Alien', 559),
(1160, 'Front Bumper', 'Alien', 559),
(1161, 'Rear Bumper', 'X-Flow', 559),
(1162, 'Spoilers', 'Alien', 559),
(1163, 'Spoilers', 'X-Flow', 558),
(1164, 'Spoilers', 'Alien', 558),
(1165, 'Front Bumper', 'X-Flow', 558),
(1166, 'Front Bumper', 'Alien', 558),
(1167, 'Rear Bumper', 'X-Flow', 558),
(1168, 'Rear Bumper', 'Alien', 558),
(1169, 'Front Bumper', 'Alien', 560),
(1170, 'Front Bumper', 'X-Flow', 560),
(1171, 'Front Bumper', 'Alien', 562),
(1172, 'Front Bumper', 'X-Flow', 562),
(1173, 'Front Bumper', 'X-Flow', 559),
(1174, 'Front Bumper', 'Chrome', 575),
(1175, 'Rear Bumper', 'Slamin', 575),
(1176, 'Front Bumper', 'Chrome', 575),
(1177, 'Rear Bumper', 'Slamin', 575),
(1178, 'Rear Bumper', 'Slamin', 534),
(1179, 'Front Bumper', 'Chrome', 534),
(1180, 'Rear Bumper', 'Chrome', 534),
(1181, 'Front Bumper', 'Slamin', 536),
(1182, 'Front Bumper', 'Chrome', 536),
(1183, 'Rear Bumper', 'Slamin', 536),
(1184, 'Rear Bumper', 'Chrome', 536),
(1185, 'Front Bumper', 'Slamin', 534),
(1186, 'Rear Bumper', 'Slamin', 567),
(1187, 'Rear Bumper', 'Chrome', 567),
(1188, 'Front Bumper', 'Slamin', 567),
(1189, 'Front Bumper', 'Chrome', 567),
(1190, 'Front Bumper', 'Slamin', 576),
(1191, 'Front Bumper', 'Chrome', 576),
(1192, 'Rear Bumper', 'Chrome', 576),
(1193, 'Rear Bumper', 'Slamin', 576);

CREATE TABLE `vehicle_model_parts` (
  `modelid` smallint(3) UNSIGNED NOT NULL,
  `parts` bit(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `vehicle_model_parts` (`modelid`, `parts`) VALUES
(400, b'110000101'),
(401, b'111111111'),
(402, b'110000000'),
(403, b'110000000'),
(404, b'110110101'),
(405, b'110100001'),
(407, b'010000000'),
(408, b'110000000'),
(409, b'110000000'),
(410, b'110111101'),
(411, b'110000000'),
(412, b'110000000'),
(413, b'110000000'),
(414, b'110000001'),
(415, b'110110001'),
(416, b'110000001'),
(418, b'110101001'),
(419, b'110000001'),
(420, b'110100011'),
(421, b'110100001'),
(422, b'110010101'),
(423, b'110000001'),
(424, b'110000000'),
(426, b'110101011'),
(427, b'110000001'),
(428, b'110000001'),
(429, b'110000000'),
(431, b'110000000'),
(432, b'010000000'),
(433, b'110000000'),
(434, b'110000000'),
(436, b'110111101'),
(437, b'110000000'),
(438, b'110000001'),
(439, b'111110100'),
(440, b'110000001'),
(441, b'110000000'),
(442, b'110000000'),
(443, b'010000000'),
(445, b'110000001'),
(451, b'110000000'),
(455, b'110000000'),
(456, b'110000001'),
(457, b'110000000'),
(458, b'111110101'),
(459, b'110000000'),
(466, b'110000001'),
(467, b'110000001'),
(470, b'110000000'),
(474, b'110000001'),
(475, b'110000001'),
(477, b'110011001'),
(478, b'110000111'),
(479, b'110000001'),
(480, b'110000001'),
(482, b'110000001'),
(483, b'110000001'),
(485, b'110000000'),
(486, b'010000000'),
(489, b'110101111'),
(490, b'110101011'),
(491, b'111110001'),
(492, b'110101011'),
(494, b'110000000'),
(495, b'110000001'),
(496, b'111111111'),
(498, b'110000001'),
(499, b'110000001'),
(500, b'110000101'),
(502, b'110000000'),
(503, b'110000000'),
(504, b'110000001'),
(505, b'110101111'),
(506, b'110000001'),
(507, b'110000001'),
(508, b'110000001'),
(514, b'110000000'),
(515, b'110000000'),
(516, b'110110011'),
(517, b'111110001'),
(518, b'111111111'),
(524, b'010000000'),
(525, b'010000000'),
(526, b'110000001'),
(527, b'110111001'),
(528, b'110000000'),
(529, b'110111011'),
(530, b'010000000'),
(531, b'010000000'),
(532, b'110000000'),
(533, b'110000000'),
(540, b'111111111'),
(541, b'110000000'),
(542, b'111100001'),
(543, b'110111000'),
(544, b'110000000'),
(545, b'110000000'),
(546, b'111110111'),
(547, b'111100001'),
(549, b'111110011'),
(550, b'111101111'),
(551, b'110101011'),
(552, b'110000001'),
(554, b'110000001'),
(555, b'110000000'),
(566, b'110000001'),
(568, b'110000000'),
(571, b'110000000'),
(572, b'110000000'),
(574, b'110000000'),
(578, b'110000000'),
(579, b'110101001'),
(580, b'110111001'),
(582, b'110000001'),
(583, b'110000000'),
(585, b'111111101'),
(587, b'110100011'),
(588, b'110000000'),
(589, b'111111111'),
(594, b'110000000'),
(596, b'110000001'),
(597, b'110000001'),
(598, b'110000001'),
(599, b'110101011'),
(600, b'110011111'),
(601, b'010000000'),
(602, b'110000000'),
(603, b'111111101'),
(604, b'110000001'),
(605, b'110111001'),
(609, b'110000001');


ALTER TABLE `vehicle_components`
  ADD PRIMARY KEY (`componentid`);

ALTER TABLE `vehicle_model_parts`
  ADD PRIMARY KEY (`modelid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
