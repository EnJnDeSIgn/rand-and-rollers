program Dt1_roller_EnJnDeSIgn2024
	! love you long time copilot, your my sweetie... I mean copilot!
	! see I learned to spell for you, or at least look up words
	! --------------------------------------------------------------
	! The formula for variance is:
	! [ \text{Variance} = \frac{1}{N} \sum_{j=1}^{N} (x_j - \bar{x})^2 ]
	! where:
	! (N) is the total number of data points (in your case, the count of iterations).
	! (x_j) represents each individual run_total(j) value.
	! (\bar{x}) is the mean (average) of all run_total values.
	! --------------------------------------------------------------
	! The standard deviation is the square root of the variance:
	! [ \text{Standard Deviation} = \sqrt{\text{Variance}} ]
	! --------------------------------------------------------------
	! Exponents Overview:
	! --------------------------------------------------------------
	! An exponent represents how many times a base number is multiplied by itself.
	! In the expression a^n, where 'a' is the base and 'n' is the exponent,
	! 'a' is multiplied by itself 'n' times.
	!
	! Positive Exponents:
	! When the exponent is positive, the base is multiplied by itself that
	! many times.
	! Example: 2^3 = 2 * 2 * 2 = 8
	!
	! Negative Exponents:
	! Negative exponents indicate taking the reciprocal (inverse) of the base
	! raised to the positive exponent.
	! Example: 2^(-3) = 1 / 2^3 = 1 / 8
	! Negative Exponent Example: (a^{-n} = \frac{1}{a^n})
	!
	! Zero Exponent:
	! Any nonzero base raised to the power of zero is equal to 1.
	! Example: 5^0 = 1
	! Zero Exponent Example: (a^0 = 1) (except when (a = 0))
	!
	! Fractional Exponents (Roots):
	! Fractional exponents represent roots. For example, a^(1/2) is the square root of 'a'.
	! Example: 4^(1/2) = 2 (since 2^2 = 4)
	!
	! Laws of Exponents:
	! There are several laws that govern exponent manipulation, such as the
	! product rule, quotient rule, and power rule.
	! --------------------------------------------------------------
	! Key Properties of Exponents:
	! Product Rule: (a^m \cdot a^n = a^{m+n})
	! Quotient Rule: (\frac{am}{an} = a^{m-n})
	! Power of a Power: ((am)n = a^{m \cdot n})
	! --------------------------------------------------------------
	! Decimal Dance Equations:
	! --------------------------------------------------------------
	! Waltzing Digits Equation:
	! This equation makes the decimal places waltz gracefully:
	! f(x) = (x^2 + x) / 1
	! Interpretation: As (x) twirls, its decimal places
	! perform a waltz, alternating between left and right.
	!
	! Cha-Cha-Chop Equation:
	! For a lively dance, we have the Cha-Cha-Chop:
	! g(y) = 3.14 / √y
	! Interpretation: The square root of (y) cha-chas, while
	! the constant 3.14 adds a little hip sway.
	!
	! Tango Tango Tango Equation:
	! A passionate tango with decimals:
	! h(z) = sin(z) / z
	! Interpretation: As (z) tango-tango-tangos, its decimal
	! places dip and spin.
	! --------------------------------------------------------------
	implicit none
	integer :: selected_group, selected_number, i, roll_count, j, first_non_zero_digit, count
	character(len=32), dimension(0:1691, 0:2) :: groups
	character(len=32), dimension(3) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, &
									   &group9, group10, group11, group12, group13, group14, group15, group16, group17, &
									   &group18, group19, group20, group21, group22, group23, group24, group25, group26, &
									   &group27, group28, group29, group30, group31, group32, group33, group34, group35, &
									   &group36, group37, group38, group39, group40, group41, group42, group43, group44, &
									   &group45, group46, group47, group48, group49, group50, group51, group52, group53, &
									   &group54, group55, group56, group57, group58, group59, group60, group61, group62, &
									   &group63, group64, group65, group66, group67, group68, group69, group70, group71, &
									   &group72, group73, group74, group75, group76, group77, group78, group79, group80, &
									   &group81, group82, group83, group84, group85, group86, group87, group88, group89, &
									   &group90, group91, group92, group93, group94, group95, group96, group97, group98, &
									   &group99, group100, group101, group102, group103, group104, group105, group106, group107, &
									   &group108, group109, group110, group111, group112, group113, group114, group115, group116, &
									   &group117, group118, group119, group120, group121, group122, group123, group124, group125, &
									   &group126, group127, group128, group129, group130, group131, group132, group133, group134, &
									   &group135, group136, group137, group138, group139, group140, group141, group142, group143, &
									   &group144, group145, group146, group147, group148, group149, group150, group151, group152, &
									   &group153, group154, group155, group156, group157, group158, group159, group160, group161, &
									   &group162, group163, group164, group165, group166, group167, group168, group169, group170, &
									   &group171, group172, group173, group174, group175, group176, group177, group178, group179, &
									   &group180, group181, group182, group183, group184, group185, group186, group187, group188, &
									   &group189, group190, group191, group192, group193, group194, group195, group196, group197, &
									   &group198, group199, group200, group201, group202, group203, group204, group205, group206, &
									   &group207, group208, group209, group210, group211, group212, group213, group214, group215, &
									   &group216, group217, group218, group219, group220, group221, group222, group223, group224, &
									   &group225, group226, group227, group228, group229, group230, group231, group232, group233, &
									   &group234, group235, group236, group237, group238, group239, group240, group241, group242, &
									   &group243, group244, group245, group246, group247, group248, group249, group250, group251, &
									   &group252, group253, group254, group255, group256, group257, group258, group259, group260, &
									   &group261, group262, group263, group264, group265, group266, group267, group268, group269, &
									   &group270, group271, group272, group273, group274, group275, group276, group277, group278, &
									   &group279, group280, group281, group282, group283, group284, group285, group286, group287, &
									   &group288, group289, group290, group291, group292, group293, group294, group295, group296, &
									   &group297, group298, group299, group300, group301, group302, group303, group304, group305, &
									   &group306, group307, group308, group309, group310, group311, group312, group313, group314, &
									   &group315, group316, group317, group318, group319, group320, group321, group322, group323, &
									   &group324, group325, group326, group327, group328, group329, group330, group331, group332, &
									   &group333, group334, group335, group336, group337, group338, group339, group340, group341, &
									   &group342, group343, group344, group345, group346, group347, group348, group349, group350, &
									   &group351, group352, group353, group354, group355, group356, group357, group358, group359, &
									   &group360, group361, group362, group363, group364, group365, group366, group367, group368, &
									   &group369, group370, group371, group372, group373, group374, group375, group376, group377, &
									   &group378, group379, group380, group381, group382, group383, group384, group385, group386, &
									   &group387, group388, group389, group390, group391, group392, group393, group394, group395, &
									   &group396, group397, group398, group399, group400, group401, group402, group403, group404, &
									   &group405, group406, group407, group408, group409, group410, group411, group412, group413, &
									   &group414, group415, group416, group417, group418, group419, group420, group421, group422, &
									   &group423, group424, group425, group426, group427, group428, group429, group430, group431, &
									   &group432, group433, group434, group435, group436, group437, group438, group439, group440, &
									   &group441, group442, group443, group444, group445, group446, group447, group448, group449, &
									   &group450, group451, group452, group453, group454, group455, group456, group457, group458, &
									   &group459, group460, group461, group462, group463, group464, group465, group466, group467, &
									   &group468, group469, group470, group471, group472, group473, group474, group475, group476, &
									   &group477, group478, group479, group480, group481, group482, group483, group484, group485, &
									   &group486, group487, group488, group489, group490, group491, group492, group493, group494, &
									   &group495, group496, group497, group498, group499, group500, group501, group502, group503, &
									   &group504, group505, group506, group507, group508, group509, group510, group511, group512, &
									   &group513, group514, group515, group516, group517, group518, group519, group520, group521, &
									   &group522, group523, group524, group525, group526, group527, group528, group529, group530, &
									   &group531, group532, group533, group534, group535, group536, group537, group538, group539, &
									   &group540, group541, group542, group543, group544, group545, group546, group547, group548, &
									   &group549, group550, group551, group552, group553, group554, group555, group556, group557, &
									   &group558, group559, group560, group561, group562, group563, group564, group565, group566, &
									   &group567, group568, group569, group570, group571, group572, group573, group574, group575, &
									   &group576, group577, group578, group579, group580, group581, group582, group583, group584, &
									   &group585, group586, group587, group588, group589, group590, group591, group592, group593, &
									   &group594, group595, group596, group597, group598, group599, group600, group601, group602, &
									   &group603, group604, group605, group606, group607, group608, group609, group610, group611, &
									   &group612, group613, group614, group615, group616, group617, group618, group619, group620, &
									   &group621, group622, group623, group624, group625, group626, group627, group628, group629, &
									   &group630, group631, group632, group633, group634, group635, group636, group637, group638, &
									   &group639, group640, group641, group642, group643, group644, group645, group646, group647, &
									   &group648, group649, group650, group651, group652, group653, group654, group655, group656, &
									   &group657, group658, group659, group660, group661, group662, group663, group664, group665, &
									   &group666, group667, group668, group669, group670, group671, group672, group673, group674, &
									   &group675, group676, group677, group678, group679, group680, group681, group682, group683, &
									   &group684, group685, group686, group687, group688, group689, group690, group691, group692, &
									   &group693, group694, group695, group696, group697, group698, group699, group700, group701, &
									   &group702, group703, group704, group705, group706, group707, group708, group709, group710, &
									   &group711, group712, group713, group714, group715, group716, group717, group718, group719, &
									   &group720, group721, group722, group723, group724, group725, group726, group727, group728, &
									   &group729, group730, group731, group732, group733, group734, group735, group736, group737, &
									   &group738, group739, group740, group741, group742, group743, group744, group745, group746, &
									   &group747, group748, group749, group750, group751, group752, group753, group754, group755, &
									   &group756, group757, group758, group759, group760, group761, group762, group763, group764, &
									   &group765, group766, group767, group768, group769, group770, group771, group772, group773, &
									   &group774, group775, group776, group777, group778, group779, group780, group781, group782, &
									   &group783, group784, group785, group786, group787, group788, group789, group790, group791, &
									   &group792, group793, group794, group795, group796, group797, group798, group799, group800, &
									   &group801, group802, group803, group804, group805, group806, group807, group808, group809, &
									   &group810, group811, group812, group813, group814, group815, group816, group817, group818, &
									   &group819, group820, group821, group822, group823, group824, group825, group826, group827, &
									   &group828, group829, group830, group831, group832, group833, group834, group835, group836, &
									   &group837, group838, group839, group840, group841, group842, group843, group844, group845, &
									   &group846, group847, group848, group849, group850, group851, group852, group853, group854, &
									   &group855, group856, group857, group858, group859, group860, group861, group862, group863, &
									   &group864, group865, group866, group867, group868, group869, group870, group871, group872, &
									   &group873, group874, group875, group876, group877, group878, group879, group880, group881, &
									   &group882, group883, group884, group885, group886, group887, group888, group889, group890, &
									   &group891, group892, group893, group894, group895, group896, group897, group898, group899, &
									   &group900, group901, group902, group903, group904, group905, group906, group907, group908, &
									   &group909, group910, group911, group912, group913, group914, group915, group916, group917, &
									   &group918, group919, group920, group921, group922, group923, group924, group925, group926, &
									   &group927, group928, group929, group930, group931, group932, group933, group934, group935, &
									   &group936, group937, group938, group939, group940, group941, group942, group943, group944, &
									   &group945, group946, group947, group948, group949, group950, group951, group952, group953, &
									   &group954, group955, group956, group957, group958, group959, group960, group961, group962, &
									   &group963, group964, group965, group966, group967, group968, group969, group970, group971, &
									   &group972, group973, group974, group975, group976, group977, group978, group979, group980, &
									   &group981, group982, group983, group984, group985, group986, group987, group988, group989, &
									   &group990, group991, group992, group993, group994, group995, group996, group997, group998, &
									   &group999, group1000, group1001, group1002, group1003, group1004, group1005, group1006, group1007, &
									   &group1008, group1009, group1010, group1011, group1012, group1013, group1014, group1015, group1016, &
									   &group1017, group1018, group1019, group1020, group1021, group1022, group1023, group1024, group1025, &
									   &group1026, group1027, group1028, group1029, group1030, group1031, group1032, group1033, group1034, &
									   &group1035, group1036, group1037, group1038, group1039, group1040, group1041, group1042, group1043, &
									   &group1044, group1045, group1046, group1047, group1048, group1049, group1050, group1051, group1052, &
									   &group1053, group1054, group1055, group1056, group1057, group1058, group1059, group1060, group1061, &
									   &group1062, group1063, group1064, group1065, group1066, group1067, group1068, group1069, group1070, &
									   &group1071, group1072, group1073, group1074, group1075, group1076, group1077, group1078, group1079, &
									   &group1080, group1081, group1082, group1083, group1084, group1085, group1086, group1087, group1088, &
									   &group1089, group1090, group1091, group1092, group1093, group1094, group1095, group1096, group1097, &
									   &group1098, group1099, group1100, group1101, group1102, group1103, group1104, group1105, group1106, &
									   &group1107, group1108, group1109, group1110, group1111, group1112, group1113, group1114, group1115, &
									   &group1116, group1117, group1118, group1119, group1120, group1121, group1122, group1123, group1124, &
									   &group1125, group1126, group1127, group1128, group1129, group1130, group1131, group1132, group1133, &
									   &group1134, group1135, group1136, group1137, group1138, group1139, group1140, group1141, group1142, &
									   &group1143, group1144, group1145, group1146, group1147, group1148, group1149, group1150, group1151, &
									   &group1152, group1153, group1154, group1155, group1156, group1157, group1158, group1159, group1160, &
									   &group1161, group1162, group1163, group1164, group1165, group1166, group1167, group1168, group1169, &
									   &group1170, group1171, group1172, group1173, group1174, group1175, group1176, group1177, group1178, &
									   &group1179, group1180, group1181, group1182, group1183, group1184, group1185, group1186, group1187, &
									   &group1188, group1189, group1190, group1191, group1192, group1193, group1194, group1195, group1196, &
									   &group1197, group1198, group1199, group1200, group1201, group1202, group1203, group1204, group1205, &
									   &group1206, group1207, group1208, group1209, group1210, group1211, group1212, group1213, group1214, &
									   &group1215, group1216, group1217, group1218, group1219, group1220, group1221, group1222, group1223, &
									   &group1224, group1225, group1226, group1227, group1228, group1229, group1230, group1231, group1232, &
									   &group1233, group1234, group1235, group1236, group1237, group1238, group1239, group1240, group1241, &
									   &group1242, group1243, group1244, group1245, group1246, group1247, group1248, group1249, group1250, &
									   &group1251, group1252, group1253, group1254, group1255, group1256, group1257, group1258, group1259, &
									   &group1260, group1261, group1262, group1263, group1264, group1265, group1266, group1267, group1268, &
									   &group1269, group1270, group1271, group1272, group1273, group1274, group1275, group1276, group1277, &
									   &group1278, group1279, group1280, group1281, group1282, group1283, group1284, group1285, group1286, &
									   &group1287, group1288, group1289, group1290, group1291, group1292, group1293, group1294, group1295, &
									   &group1296, group1297, group1298, group1299, group1300, group1301, group1302, group1303, group1304, &
									   &group1305, group1306, group1307, group1308, group1309, group1310, group1311, group1312, group1313, &
									   &group1314, group1315, group1316, group1317, group1318, group1319, group1320, group1321, group1322, &
									   &group1323, group1324, group1325, group1326, group1327, group1328, group1329, group1330, group1331, &
									   &group1332, group1333, group1334, group1335, group1336, group1337, group1338, group1339, group1340, &
									   &group1341, group1342, group1343, group1344, group1345, group1346, group1347, group1348, group1349, &
									   &group1350, group1351, group1352, group1353, group1354, group1355, group1356, group1357, group1358, &
									   &group1359, group1360, group1361, group1362, group1363, group1364, group1365, group1366, group1367, &
									   &group1368, group1369, group1370, group1371, group1372, group1373, group1374, group1375, group1376, &
									   &group1377, group1378, group1379, group1380, group1381, group1382, group1383, group1384, group1385, &
									   &group1386, group1387, group1388, group1389, group1390, group1391, group1392, group1393, group1394, &
									   &group1395, group1396, group1397, group1398, group1399, group1400, group1401, group1402, group1403, &
									   &group1404, group1405, group1406, group1407, group1408, group1409, group1410, group1411, group1412, &
									   &group1413, group1414, group1415, group1416, group1417, group1418, group1419, group1420, group1421, &
									   &group1422, group1423, group1424, group1425, group1426, group1427, group1428, group1429, group1430, &
									   &group1431, group1432, group1433, group1434, group1435, group1436, group1437, group1438, group1439, &
									   &group1440, group1441, group1442, group1443, group1444, group1445, group1446, group1447, group1448, &
									   &group1449, group1450, group1451, group1452, group1453, group1454, group1455, group1456, group1457, &
									   &group1458, group1459, group1460, group1461, group1462, group1463, group1464, group1465, group1466, &
									   &group1467, group1468, group1469, group1470, group1471, group1472, group1473, group1474, group1475, &
									   &group1476, group1477, group1478, group1479, group1480, group1481, group1482, group1483, group1484, &
									   &group1485, group1486, group1487, group1488, group1489, group1490, group1491, group1492, group1493, &
									   &group1494, group1495, group1496, group1497, group1498, group1499, group1500, group1501, group1502, &
									   &group1503, group1504, group1505, group1506, group1507, group1508, group1509, group1510, group1511, &
									   &group1512, group1513, group1514, group1515, group1516, group1517, group1518, group1519, group1520, &
									   &group1521, group1522, group1523, group1524, group1525, group1526, group1527, group1528, group1529, &
									   &group1530, group1531, group1532, group1533, group1534, group1535, group1536, group1537, group1538, &
									   &group1539, group1540, group1541, group1542, group1543, group1544, group1545, group1546, group1547, &
									   &group1548, group1549, group1550, group1551, group1552, group1553, group1554, group1555, group1556, &
									   &group1557, group1558, group1559, group1560, group1561, group1562, group1563, group1564, group1565, &
									   &group1566, group1567, group1568, group1569, group1570, group1571, group1572, group1573, group1574, &
									   &group1575, group1576, group1577, group1578, group1579, group1580, group1581, group1582, group1583, &
									   &group1584, group1585, group1586, group1587, group1588, group1589, group1590, group1591, group1592, &
									   &group1593, group1594, group1595, group1596, group1597, group1598, group1599, group1600, group1601, &
									   &group1602, group1603, group1604, group1605, group1606, group1607, group1608, group1609, group1610, &
									   &group1611, group1612, group1613, group1614, group1615, group1616, group1617, group1618, group1619, &
									   &group1620, group1621, group1622, group1623, group1624, group1625, group1626, group1627, group1628, &
									   &group1629, group1630, group1631, group1632, group1633, group1634, group1635, group1636, group1637, &
									   &group1638, group1639, group1640, group1641, group1642, group1643, group1644, group1645, group1646, &
									   &group1647, group1648, group1649, group1650, group1651, group1652, group1653, group1654, group1655, &
									   &group1656, group1657, group1658, group1659, group1660, group1661, group1662, group1663, group1664, &
									   &group1665, group1666, group1667, group1668, group1669, group1670, group1671, group1672, group1673, &
									   &group1674, group1675, group1676, group1677, group1678, group1679, group1680, group1681, group1682, &
									   &group1683, group1684, group1685, group1686, group1687, group1688, group1689, group1690, group1691
									   
	character(len=35) :: formatted_roll_value
									   
	real, dimension(20) :: run_total, normalized_run_total
	
	real :: rand, random_sum, roll_value, c, y, t, carry_over, decimal_shift, random_sum_total, c1, y1, t1, mean, sum_squares, &
	std_dev, carry_over_two, selected_number_real, max_value

	count = 0
	sum_squares = 0.0
	c = 0.0 ! A running compensation for lost low-order bits. Random ones this time.
	c1 = 0.0
	random_sum = 0.0
	random_sum_total = 0.0
	carry_over = 0.0
	carry_over_two = 0.0
	roll_count = 20
	decimal_shift = 0.001
	roll_value = 0.0 ! I moved the roll_value call down into the loop in hopes it will be random all 8 times
	selected_number_real = 0.0

	call random_seed()
	
	! Display the progarm name and introduction ! Adding a line to identify purpose(taking out for better functon)
	!print *, "Dt1_roller_EnJnDeSIgn2024_?-?."
	!print *, " randomness fit for the gods  "
	!print *, "  Random Quantum Exponents    "
	!print *, "    The Dancing Decimal       "
	!print *, "      by Ian J Norris         "
	!print *, "    Ian.enjn@gmail.com        "
	
    ! Initialize group0
    group0 = (/ "   181.5497131347656250000000000", "   -50.3439788818359375000000000", "    40.9526519775390625000000000" /)
    ! Initialize group1
    group1 = (/ "  -108.9548492431640625000000000", "   -23.2680130004882812500000000", "  -122.8004837036132812500000000" /)
    ! Initialize group2
    group2 = (/ "  -172.4228515625000000000000000", "   -65.7591934204101562500000000", "  -382.3034362792968750000000000" /)
    ! Initialize group3
    group3 = (/ "  -278.3603515625000000000000000", "  -133.6391906738281250000000000", "  -104.7429580688476562500000000" /)
	! Initialize group4
	group4 = (/ "   -19.7625503540039062500000000", "   252.5534667968750000000000000", "   253.1993255615234375000000000" /)
	! Initialize group5
	group5 = (/ "   304.4956970214843750000000000", "   322.3595581054687500000000000", "   545.4021606445312500000000000" /)
	! Initialize group6
	group6 = (/ "   467.9991455078125000000000000", "   619.2866210937500000000000000", "   453.1269531250000000000000000" /)
	! Initialize group7
	group7 = (/ "   521.7292480468750000000000000", "   453.5993041992187500000000000", "   265.3894042968750000000000000" /)
	! Initialize group8
	group8 = (/ "   150.2413177490234375000000000", "   -79.8513031005859375000000000", "    38.0921173095703125000000000" /)
	! Initialize group9
	group9 = (/ "    78.9873733520507812500000000", "   141.4001770019531250000000000", "    17.2897415161132812500000000" /)
	! Initialize group10 , and as the group shift's left One for the first of a 4 times in sets, spiraling out for the 1st time
   group10 = (/ "   -51.5443954467773437500000000", "   183.2275085449218750000000000", "    46.9806060791015625000000000" /)
   &! Initialize group11
   group11 = (/ "   204.1405639648437500000000000", "   292.5835571289062500000000000", "   409.3533325195312500000000000" /)
   !! Initialize group12
   group12 = (/ "    15.7649536132812500000000000", "   -28.5083503723144531250000000", "  -240.7058868408203125000000000" /)
   !! Initialize group13
   group13 = (/ "  -266.5601501464843750000000000", "   -62.3117980957031250000000000", "  -170.0216674804687500000000000" /)
   !! Initialize group14
   group14 = (/ "    47.4179382324218750000000000", "    44.4835662841796875000000000", "   132.0176391601562500000000000" /)
   !! Initialize group15
   group15 = (/ "   380.6558227539062500000000000", "   379.3772583007812500000000000", "   388.6408386230468750000000000" /)
   !! Initialize group16
   group16 = (/ "   375.9118041992187500000000000", "   241.9152984619140625000000000", "   0.221970677375793457031250000" /)
   !! Initialize group17
   group17 = (/ "   285.8428955078125000000000000", "   180.0781555175781250000000000", "   175.2812500000000000000000000" /)
   !! Initialize group18
   group18 = (/ "   -58.3562774658203125000000000", "   -10.7987022399902343750000000", "   -90.1351165771484375000000000" /)
   !! Initialize group19
   group19 = (/ "    36.6591644287109375000000000", "   182.4481353759765625000000000", "    59.7844543457031250000000000" /)
   !! Initialize group20
   group20 = (/ "   282.7243652343750000000000000", "   -92.6818542480468750000000000", "  -168.2828063964843750000000000" /)
   !! Initialize group21
   group21 = (/ "  -284.4805603027343750000000000", "  -156.3479309082031250000000000", "  -360.5205078125000000000000000" /)
   !! Initialize group22
   group22 = (/ "  -285.9804992675781250000000000", "  -206.0230102539062500000000000", "   -59.7711639404296875000000000" /)
   !! Initialize group23
   group23 = (/ "  -179.5447998046875000000000000", "  -152.1679382324218750000000000", "  -218.5774536132812500000000000" /)
   !! Initialize group24
   group24 = (/ "  -129.8850402832031250000000000", "  -225.4355468750000000000000000", "  -124.9036102294921875000000000" /)
   !! Initialize group25
   group25 = (/ "   -68.6784057617187500000000000", "   -25.9167480468750000000000000", "   220.7172546386718750000000000" /)
   !! Initialize group26
   group26 = (/ "   255.4030761718750000000000000", "   654.6352539062500000000000000", "   711.4771118164062500000000000" /)
   !! Initialize group27 ! in phychology math you have to watch out, we like to play with the decimal place
   group27 = (/ "  104.12843017578125000000000000", "  143.88134765625000000000000000", "  123.52160644531250000000000000" /)
   !! Initialize group28
   group28 = (/ "  130.75135498046875000000000000", "  141.34102783203125000000000000", "  132.92940673828125000000000000" /)
   !! Initialize group29
   group29 = (/ "  124.12646484375000000000000000", "  122.40833740234375000000000000", "  129.18439941406250000000000000" /)
   !! Initialize group30
   group30 = (/ "  104.16657714843750000000000000", "  123.41861572265625000000000000", "  113.30090332031250000000000000" /)
   !! Initialize group31
   group31 = (/ "  117.97614746093750000000000000", "   892.6035766601562500000000000", "  121.58931884765625000000000000" /)
   !! Initialize group32
   group32 = (/ "  124.25732421875000000000000000", "  119.27080078125000000000000000", "   963.5454101562500000000000000" /)
   !! Initialize group33
   group33 = (/ "  100.16170654296875000000000000", "  118.05567626953125000000000000", " 0.86431682109832763671875000000" /)
   !! Initialize group34
   group34 = (/ "  -160.0731811523437500000000000", "  -519.0767822265625000000000000", "  -626.0371093750000000000000000" /)
   !! Initialize group35
   group35 = (/ "  -723.9902954101562500000000000", "  -552.6325073242187500000000000", "  -341.8897705078125000000000000" /)
   !! Initialize group36
   group36 = (/ "  -302.3626708984375000000000000", "  -438.4023132324218750000000000", "  -435.3956604003906250000000000" /)
   !! Initialize group37
   group37 = (/ "  -498.9822387695312500000000000", "  -534.6329956054687500000000000", "  -537.1777954101562500000000000" /)
   !! Initialize group38
   group38 = (/ "  -309.8310241699218750000000000", "  -323.1111145019531250000000000", "  -207.1585083007812500000000000" /)
   !! Initialize group39
   group39 = (/ "   -70.2347106933593750000000000", "  -363.8854675292968750000000000", "  -298.3930053710937500000000000" /)
   !! Initialize group40
   group40 = (/ "  -176.6688385009765625000000000", "  -108.8811187744140625000000000", "   -73.1477127075195312500000000" /)
   !! Initialize group41
   group41 = (/ "    10.2270507812500000000000000", "  -136.7456512451171875000000000", "   -27.6270599365234375000000000" /)
   !! Initialize group42
   group42 = (/ "  -276.6519775390625000000000000", "  -378.9562988281250000000000000", "  -504.6351928710937500000000000" /)
   !! Initialize group43
   group43 = (/ "  -368.1283264160156250000000000", "  -220.9123382568359375000000000", "  -153.0619354248046875000000000" /)
   !! Initialize group44
   group44 = (/ "  -152.6393432617187500000000000", "  -339.3131408691406250000000000", "  -237.3530273437500000000000000" /)
   !! Initialize group45
   group45 = (/ "  -156.9428253173828125000000000", "  -254.4613037109375000000000000", "  -152.9499816894531250000000000" /)
   !! Initialize group46
   group46 = (/ "   -90.5525360107421875000000000", "    19.7418899536132812500000000", "  -191.5352172851562500000000000" /)
   !! Initialize group47
   group47 = (/ "  -335.2770385742187500000000000", "  -332.3393249511718750000000000", "  -516.5115966796875000000000000" /)
   !! Initialize group48
   group48 = (/ "  -710.3767700195312500000000000", "  -633.0111694335937500000000000", "  -919.1928710937500000000000000" /)
   !! Initialize group49
   group49 = (/ "  -911.6495971679687500000000000", "  -943.3209228515625000000000000", "  -976.0857543945312500000000000" /)
   !! Initialize group50
   group50 = (/ "  -851.5278930664062500000000000", "  -731.3551025390625000000000000", "0.239096228033304214477539100000" /)
   !! Initialize group51
   group51 = (/ "   173.1382141113281250000000000", "  -312.2724609375000000000000000", "  -337.8811035156250000000000000" /)
   !! Initialize group52
   group52 = (/ "    99.6971893310546875000000000", "   224.1863403320312500000000000", "     3.6209268569946289062500000" /)
   !! Initialize group53
   group53 = (/ "    81.0344848632812500000000000", "   -75.4243927001953125000000000", "    22.1133689880371093750000000" /)
   !! Initialize group54
   group54 = (/ "    25.6576290130615234375000000", "  -188.7135009765625000000000000", "  -376.8484497070312500000000000" /)
   !! Initialize group55
   group55 = (/ "   127.4954223632812500000000000", "  -247.0314636230468750000000000", "  -171.9990539550781250000000000" /)
   !! Initialize group56
   group56 = (/ "   -54.9611282348632812500000000", "  -204.3782958984375000000000000", "    54.1410713195800781250000000" /)
   !! Initialize group57
   group57 = (/ "  -101.6656494140625000000000000", "  -467.6839294433593750000000000", "    95.4947662353515625000000000" /)
   !! Initialize group58
   group58 = (/ "  -182.0152130126953125000000000", "  -205.4449310302734375000000000", "  -167.9391021728515625000000000" /)
   !! Initialize group59
   group59 = (/ "   231.5131835937500000000000000", "    57.6106262207031250000000000", "   -92.0782394409179687500000000" /)
   !! Initialize group60
   group60 = (/ "  -111.6593170166015625000000000", "   223.6781921386718750000000000", "   -95.3598175048828125000000000" /)
   !! Initialize group61
   group61 = (/ "    84.5926818847656250000000000", "    -0.7814950942993164062500000", "   -64.0247344970703125000000000" /)
   !! Initialize group62
   group62 = (/ "    77.2669219970703125000000000", "   349.2567138671875000000000000", "   -74.4452972412109375000000000" /)
   !! Initialize group63
   group63 = (/ "   390.4945678710937500000000000", "  -193.7068939208984375000000000", "     1.7970352172851562500000000" /)
   !! Initialize group64
   group64 = (/ "   157.7957611083984375000000000", "  -262.9696655273437500000000000", "   149.8673706054687500000000000" /)
   !! Initialize group65
   group65 = (/ "     0.2218403816223144531250000", "    24.4719390869140625000000000", "   113.8574295043945312500000000" /)
   !! Initialize group66
   group66 = (/ "  -209.1773071289062500000000000", "    -1.8632007837295532226562500", "   -94.5918502807617187500000000" /)
   !! Initialize group67
   group67 = (/ "     2.5085282325744628906250000", "   -78.2455978393554687500000000", "  -167.6340332031250000000000000" /)
   !! Initialize group68
   group68 = (/ "   -54.1038742065429687500000000", "   0.192298561334609985351562500", "   252.1188964843750000000000000" /)
   !! Initialize group69
   group69 = (/ "    -3.6693572998046875000000000", "   117.3467636108398437500000000", "    -5.4995727539062500000000000" /)
   !! Initialize group70
   group70 = (/ "    -0.5087256431579589843750000", "  -118.2934951782226562500000000", "   -32.2660522460937500000000000" /)
   !! Initialize group71
   group71 = (/ "     3.0885117053985595703125000", "   205.0180969238281250000000000", "   -17.7327384948730468750000000" /)
   !! Initialize group72
   group72 = (/ "   200.0753936767578125000000000", "  -152.6232757568359375000000000", "    17.9190826416015625000000000" /)
   !! Initialize group73
   group73 = (/ "  -134.4630737304687500000000000", "  -100.6762237548828125000000000", "  -155.8308410644531250000000000" /)
   !! Initialize group74
   group74 = (/ "   -80.0044860839843750000000000", "   -57.1361083984375000000000000", "     0.6157761067152023315429688" /)
   !! Initialize group75
   group75 = (/ "   -99.4605331420898437500000000", "    82.3921966552734375000000000", "  -147.4259643554687500000000000" /)
   !! Initialize group76
   group76 = (/ "    97.2894744873046875000000000", "    15.3591117858886718750000000", "   -21.4652557373046875000000000" /)
   !! Initialize group77
   group77 = (/ "    82.9920425415039062500000000", "   164.2626800537109375000000000", "   234.7143554687500000000000000" /)
   !! Initialize group78
   group78 = (/ "   153.3820190429687500000000000", "   -57.6009063720703125000000000", "   130.0792846679687500000000000" /)
   !! Initialize group79
   group79 = (/ "    58.0127029418945312500000000", "   -47.8546142578125000000000000", "  -172.5583496093750000000000000" /)
   !! Initialize group80
   group80 = (/ "    95.3152618408203125000000000", "  -153.8564758300781250000000000", "   222.6989135742187500000000000" /)
   !! Initialize group81
   group81 = (/ "   -35.5031929016113281250000000", "   434.2689819335937500000000000", "    54.5812072753906250000000000" /)
   !! Initialize group82
   group82 = (/ "   119.3793792724609375000000000", "    48.1442756652832031250000000", "    97.9884109497070312500000000" /)
   !! Initialize group83
   group83 = (/ "  -307.6925964355468750000000000", "     1.2185964584350585937500000", "    87.0354080200195312500000000" /)
   !! Initialize group84
   group84 = (/ "   -65.2235794067382812500000000", "   253.0710144042968750000000000", "    69.0514068603515625000000000" /)
   !! Initialize group85
   group85 = (/ "  -253.1012878417968750000000000", "   -60.9086151123046875000000000", "   -82.6873168945312500000000000" /)
   !! Initialize group86
   group86 = (/ "   154.9324798583984375000000000", "    29.2766151428222656250000000", "  -225.4263305664062500000000000" /)
   !! Initialize group87
   group87 = (/ "   -33.7909278869628906250000000", "   -89.0569763183593750000000000", "   259.4729919433593750000000000" /)
   !! Initialize group88
   group88 = (/ "  -223.2693786621093750000000000", "  -251.5697631835937500000000000", "   153.7269439697265625000000000" /)
   !! Initialize group89
   group89 = (/ "   -38.8769760131835937500000000", "  -238.0641479492187500000000000", "  -102.0032501220703125000000000" /)
   !! Initialize group90
   group90 = (/ "   -91.5092010498046875000000000", "   145.5351867675781250000000000", "  -198.9643707275390625000000000" /)
   !! Initialize group91
   group91 = (/ "    60.5082244873046875000000000", "    75.8294143676757812500000000", "     0.3518845513463020324707031" /)
   !! Initialize group92
   group92 = (/ "   144.5552368164062500000000000", "  -391.1716308593750000000000000", "    81.7169036865234375000000000" /)
   !! Initialize group93
   group93 = (/ "    93.5332412719726562500000000", "  -133.5196990966796875000000000", "  -244.3586578369140625000000000" /)
   !! Initialize group94 ! O look the 100 is coming up? In 7? now 6 with this one? Okay so not yet but group100 will shift left?
   group94 = (/ "   169.4538879394531250000000000", "   -75.5930938720703125000000000", "   130.4155426025390625000000000" /)
   !! Initialize group95 ! Yea this part can move with it for now we can tab it all out when we get all 4 shifts, could take a bit...
   group95 = (/ "    39.8946533203125000000000000", "     9.2057495117187500000000000", "  -146.0288238525390625000000000" /)
   !! Initialize group96
   group96 = (/ "  -122.0428161621093750000000000", "   173.7483520507812500000000000", "   120.5738754272460937500000000" /)
   !! Initialize group97
   group97 = (/ "    10.0072174072265625000000000", "  -271.2737731933593750000000000", "   -32.0245018005371093750000000" /)
   !! Initialize group98
   group98 = (/ "  -311.9063720703125000000000000", "  -222.7201995849609375000000000", "   217.0623474121093750000000000" /)
   !! Initialize group99
   group99 = (/ "   113.4372558593750000000000000", "  -150.0575408935546875000000000", "   302.4210815429687500000000000" /)
  &!! Initialize group100 ! And as you can see the next groups part will shift left for two times now.
  group100 = (/ "   211.0781250000000000000000000", "    53.3600921630859375000000000", "  -256.9428710937500000000000000" /)
  !!! Initialize group101 ! Yes, and it will be longer till it will do the 3rd time, still on two.
  group101 = (/ "   120.2990417480468750000000000", "   157.4943237304687500000000000", "  -306.0582885742187500000000000" /)
  !!! Initialize group102
  group102 = (/ "    15.2069873809814453125000000", "  -198.2369995117187500000000000", "   -39.9095764160156250000000000" /)
  !!! Initialize group103
  group103 = (/ "    94.6843338012695312500000000", "    -6.7773647308349609375000000", "    34.1357955932617187500000000" /)
  !!! Initialize group104
  group104 = (/ "   -15.0926036834716796875000000", "  -228.7001037597656250000000000", "   -76.8666992187500000000000000" /)
  !!! Initialize group105
  group105 = (/ "    66.4216613769531250000000000", "   -41.0630950927734375000000000", "   -78.6701354980468750000000000" /)
  !!! Initialize group106
  group106 = (/ "   -57.2929344177246093750000000", "  -190.2186889648437500000000000", "  -147.1266174316406250000000000" /)
  !!! Initialize group107
  group107 = (/ "   -86.6411437988281250000000000", "  -126.9031753540039062500000000", "   -47.5395584106445312500000000" /)
  !!! Initialize group108
  group108 = (/ "     0.4127852991223335266113281", "    63.7056236267089843750000000", "  -196.0788879394531250000000000" /)
  !!! Initialize group109
  group109 = (/ "    16.0256195068359375000000000", "  -203.4939727783203125000000000", "    98.2430267333984375000000000" /)
  !!! Initialize group110
  group110 = (/ "    40.0142517089843750000000000", "     0.4231215268373489379882812", "   155.2334899902343750000000000" /)
  !!! Initialize group111
  group111 = (/ "    36.4137573242187500000000000", "    31.0083160400390625000000000", "    59.5342559814453125000000000" /)
  !!! Initialize group112
  group112 = (/ "    -0.8761728554964065551757812", "   -77.4869689941406250000000000", "  -141.5012969970703125000000000" /)
  !!! Initialize group113
  group113 = (/ "    69.7451019287109375000000000", "   410.7199096679687500000000000", "   374.8954772949218750000000000" /)
  !!! Initialize group114
  group114 = (/ "   119.8434753417968750000000000", "  -237.7200927734375000000000000", "  -120.0057067871093750000000000" /)
  !!! Initialize group115
  group115 = (/ "  -164.5956268310546875000000000", "   106.7491836547851562500000000", "    -0.2867147698998451232910156" /)
  !!! Initialize group116
  group116 = (/ "   116.9410705566406250000000000", "  -211.1327514648437500000000000", "   -40.4905853271484375000000000" /)
  !!! Initialize group117
  group117 = (/ "  -185.5435943603515625000000000", "   -89.8399200439453125000000000", "  -204.3218231201171875000000000" /)
  !!! Initialize group118
  group118 = (/ "  -137.8075561523437500000000000", "   118.5173492431640625000000000", "  -337.7257690429687500000000000" /)
  !!! Initialize group119
  group119 = (/ "   -18.1333389282226562500000000", "     0.1428342461585998535156250", "   140.6426696777343750000000000" /)
  !!! Initialize group120
  group120 = (/ "   -13.1230659484863281250000000", "     3.8401203155517578125000000", "    38.6824111938476562500000000" /)
  !!! Initialize group121
  group121 = (/ "   162.8341217041015625000000000", "   -35.3354988098144531250000000", "  -128.9559020996093750000000000" /)
  !!! Initialize group122
  group122 = (/ "  -214.6798400878906250000000000", "   -90.8868026733398437500000000", "  -343.9173278808593750000000000" /)
  !!! Initialize group123
  group123 = (/ "   -62.9231758117675781250000000", "  -207.9196319580078125000000000", "    51.8891906738281250000000000" /)
  !!! Initialize group124
  group124 = (/ "   147.3682098388671875000000000", "   -12.1612396240234375000000000", "   -75.6893310546875000000000000" /)
  !!! Initialize group125 ! I guess thats why they call phychologists quacks...noun. 1. a fraudulent or ignorant pretender to medical skill.
  group125 = (/ "  106.39470214843750000000000000", "   884.9174194335937500000000000", "  -140.3403625488281250000000000" /)
  !!! Initialize group126
  group126 = (/ "   594.4738159179687500000000000", "  1010.0552368164062500000000000", "     0.1950554996728897094726562" /)
  !!! Initialize group127
  group127 = (/ "   462.9836120605468750000000000", "   280.6369628906250000000000000", "  134.82728271484375000000000000" /)
  !!! Initialize group128
  group128 = (/ "   263.3357238769531250000000000", "  -179.4959869384765625000000000", "   598.8818969726562500000000000" /)
  !!! Initialize group129
  group129 = (/ "   -64.1993484497070312500000000", "   738.8439941406250000000000000", "   381.2423706054687500000000000" /)
  !!! Initialize group130
  group130 = (/ "   467.2207641601562500000000000", "  120.43603515625000000000000000", "   912.1888427734375000000000000" /)
  !!! Initialize group131
  group131 = (/ "  1028.9855957031250000000000000", "     0.5979971215128898620605469", "    78.5750961303710937500000000" /)
  !!! Initialize group132
  group132 = (/ "  -112.6216888427734375000000000", "  -147.7090911865234375000000000", "   666.9606933593750000000000000" /)
  !!! Initialize group133
  group133 = (/ "     0.9254843741655349731445312", "   308.9015502929687500000000000", "   -16.0764122009277343750000000" /)
  !!! Initialize group134 ! yes I'm a quack
  group134 = (/ "    27.6921539306640625000000000", "   209.3762207031250000000000000", "   971.0595703125000000000000000" /)
  !!! Initialize group135
  group135 = (/ "      18.96337318420410156250000", "      56.64554977416992187500000", "   -47.7986907958984375000000000" /)
  !!! Initialize group136
  group136 = (/ "  -206.6888122558593750000000000", "    -0.4866860508918762207031250", "   209.1604309082031250000000000" /)
  !!! Initialize group137
  group137 = (/ "  112.38220214843750000000000000", "  -130.1105499267578125000000000", "    -2.5396327972412109375000000" /)
  !!! Initialize group138
  group138 = (/ "     1.5527391433715820312500000", "   649.4042968750000000000000000", "  -125.4319076538085937500000000" /)
  !!! Initialize group139
  group139 = (/ "   -96.4946441650390625000000000", "   171.7451782226562500000000000", "    37.1852607727050781250000000" /)
  !!! Initialize group140
  group140 = (/ "   148.3726196289062500000000000", "     2.6543107032775878906250000", "  -213.0016021728515625000000000" /)
  !!! Initialize group141
  group141 = (/ "  -121.6641082763671875000000000", "   177.0201873779296875000000000", "    -0.1702072173357009887695312" /)
  !!! Initialize group142
  group142 = (/ "  -183.7165527343750000000000000", "     0.1645812988281250000000000", "     4.0477843284606933593750000" /)
  !!! Initialize group143
  group143 = (/ "   570.8985595703125000000000000", "   -25.2832870483398437500000000", "   -33.6054916381835937500000000" /)
  !!! Initialize group144
  group144 = (/ "   261.3814086914062500000000000", "   -65.5446701049804687500000000", "  -169.9299926757812500000000000" /)
  !!! Initialize group145
  group145 = (/ "   134.4102172851562500000000000", "   -25.3959655761718750000000000", "    -4.1480984687805175781250000" /)
  !!! Initialize group146
  group146 = (/ "    43.0694694519042968750000000", "   -66.2702713012695312500000000", "   275.8331298828125000000000000" /)
  !!! Initialize group147
  group147 = (/ "   -36.9403457641601562500000000", "     4.2018289566040039062500000", "   127.0815963745117187500000000" /)
  !!! Initialize group148
  group148 = (/ "   286.7829895019531250000000000", "   138.5323333740234375000000000", "  -217.8028869628906250000000000" /)
  !!! Initialize group149
  group149 = (/ "  -111.6852722167968750000000000", "   103.6786727905273437500000000", "    -0.1592855900526046752929688" /)
  !!! Initialize group150
  group150 = (/ "    86.0855407714843750000000000", "   160.7281951904296875000000000", "     0.6992504000663757324218750" /)
  !!! Initialize group151
  group151 = (/ "  -273.5035095214843750000000000", "  -169.5494995117187500000000000", "   264.3578186035156250000000000" /)
  !!! Initialize group152
  group152 = (/ "   -46.9667243957519531250000000", "    12.7696905136108398437500000", "  -132.9300231933593750000000000" /)
  !!! Initialize group153
  group153 = (/ "    -1.9431542158126831054687500", "  -147.1940917968750000000000000", "   743.4295654296875000000000000" /)
  !!! Initialize group154
  group154 = (/ "  1012.2368774414062500000000000", "  -274.0299682617187500000000000", "  -365.4009704589843750000000000" /)
  !!! Initialize group155
  group155 = (/ "  -142.2148742675781250000000000", "  -156.0731658935546875000000000", "   192.9644775390625000000000000" /)
  !!! Initialize group156
  group156 = (/ "    -1.6854155063629150390625000", "  -284.3461608886718750000000000", "   235.9766998291015625000000000" /)
  !!! Initialize group157
  group157 = (/ "   158.2173614501953125000000000", "   -12.1602048873901367187500000", "  120.48250732421875000000000000" /)
  !!! Initialize group158
  group158 = (/ "   680.0721435546875000000000000", "     0.4092864692211151123046875", "   -98.8321228027343750000000000" /)
  !!! Initialize group159
  group159 = (/ "    -1.8561886548995971679687500", "   938.4860229492187500000000000", "   -93.7442779541015625000000000" /)
  !!! Initialize group160
  group160 = (/ "    77.5314559936523437500000000", "    -5.2079629898071289062500000", "  -137.0933990478515625000000000" /)
  !!! Initialize group161
  group161 = (/ "   -23.6118564605712890625000000", "   114.5099334716796875000000000", "    -3.6269142627716064453125000" /)
  !!! Initialize group162
  group162 = (/ "   -55.1611785888671875000000000", "  -120.1248779296875000000000000", "    85.1957092285156250000000000" /)
  !!! Initialize group163
  group163 = (/ "    -1.8164055347442626953125000", "   -32.4576568603515625000000000", "    16.2326660156250000000000000" /)
  !!! Initialize group164
  group164 = (/ "  -204.1395874023437500000000000", "   117.6875305175781250000000000", "   -39.7939834594726562500000000" /)
  !!! Initialize group165
  group165 = (/ "    39.1452598571777343750000000", "   142.3489379882812500000000000", "   -99.0456542968750000000000000" /)
  !!! Initialize group166
  group166 = (/ "    95.5228652954101562500000000", "    68.4251785278320312500000000", "     0.9632902592420578002929688" /)
  !!! Initialize group167
  group167 = (/ "   163.0128173828125000000000000", "   -63.4232292175292968750000000", "    -2.2831220626831054687500000" /)
  !!! Initialize group168
  group168 = (/ "     5.7086257934570312500000000", "   229.4363861083984375000000000", "     8.8503417968750000000000000" /)
  !!! Initialize group169
  group169 = (/ "  -138.5163879394531250000000000", "   220.5228118896484375000000000", "   -43.3959350585937500000000000" /)
  !!! Initialize group170
  group170 = (/ "    97.6755752563476562500000000", "   207.3191223144531250000000000", "  -114.1988525390625000000000000" /)
  !!! Initialize group171
  group171 = (/ "   114.2716979980468750000000000", "   123.7188491821289062500000000", "     0.0318522453308105468750000" /)
  !!! Initialize group172
  group172 = (/ "   -97.5269165039062500000000000", "    34.0177917480468750000000000", "  -458.7984313964843750000000000" /)
  !!! Initialize group173
  group173 = (/ "   101.9770126342773437500000000", "   -33.7563552856445312500000000", "   182.7725830078125000000000000" /)
  !!! Initialize group174
  group174 = (/ "    42.5545196533203125000000000", "   -24.8128948211669921875000000", "    10.2042598724365234375000000" /)
  !!! Initialize group175
  group175 = (/ "   155.1759490966796875000000000", "  -253.0318450927734375000000000", "   239.0425720214843750000000000" /)
  !!! Initialize group176
  group176 = (/ "   135.2246398925781250000000000", "    68.8106231689453125000000000", "  -179.6495513916015625000000000" /)
  !!! Initialize group177
  group177 = (/ "   438.0716552734375000000000000", "  -110.6581573486328125000000000", "  -172.8086853027343750000000000" /)
  !!! Initialize group178
  group178 = (/ "     0.0193535052239894866943359", "   290.7343750000000000000000000", "   455.4273681640625000000000000" /)
  !!! Initialize group179
  group179 = (/ "    28.8671607971191406250000000", "  -312.9417724609375000000000000", "    82.3979492187500000000000000" /)
  !!! Initialize group180
  group180 = (/ "   -56.4053878784179687500000000", "   -13.5571804046630859375000000", "  109.71600341796875000000000000" /)
  !!! Initialize group181
  group181 = (/ "  -417.0110473632812500000000000", "   218.2029571533203125000000000", "     0.3774905111640691757202148" /)
  !!! Initialize group182
  group182 = (/ "   162.0564880371093750000000000", "      4.453592777252197265625000", "  -338.1407165527343750000000000" /)
  !!! Initialize group183
  group183 = (/ "   162.6099243164062500000000000", "   113.6977310180664062500000000", "   152.3725433349609375000000000" /)
  !!! Initialize group184
  group184 = (/ "      17.94584083557128906250000", "     1.7619515657424926757812500", "  -107.6244354248046875000000000" /)
  !!! Initialize group185
  group185 = (/ "   -42.8492507934570312500000000", "    54.7700653076171875000000000", "     2.5364983081817626953125000" /)
  !!! Initialize group186
  group186 = (/ "  -118.0759963989257812500000000", "   -88.4463958740234375000000000", "    96.7817306518554687500000000" /)
  !!! Initialize group187
  group187 = (/ "    30.9041881561279296875000000", "   -42.0092430114746093750000000", "    77.9943618774414062500000000" /)
  !!! Initialize group188
  group188 = (/ "   129.2278442382812500000000000", "   -22.9559879302978515625000000", "    -0.4689944386482238769531250" /)
  !!! Initialize group189
  group189 = (/ "    95.1269607543945312500000000", "   -44.6605072021484375000000000", "     8.9247589111328125000000000" /)
  !!! Initialize group190
  group190 = (/ "    92.3372879028320312500000000", "   -52.2990379333496093750000000", "   171.4861297607421875000000000" /)
  !!! Initialize group191
  group191 = (/ "    59.7189636230468750000000000", "   -10.7355585098266601562500000", "  -113.0935974121093750000000000" /)
  !!! Initialize group192
  group192 = (/ "    -0.2423169612884521484375000", "    37.7219314575195312500000000", "   -37.4565315246582031250000000" /)
  !!! Initialize group193
  group193 = (/ "   -28.7399291992187500000000000", "    32.0050964355468750000000000", "   -39.3210258483886718750000000" /)
  !!! Initialize group194
  group194 = (/ "    11.9390754699707031250000000", "    38.0188522338867187500000000", "    15.0517110824584960937500000" /)
  !!! Initialize group195
  group195 = (/ "     1.0315692424774169921875000", "     6.7188286781311035156250000", "  -167.1104736328125000000000000" /)
  !!! Initialize group196
  group196 = (/ "     5.2270050048828125000000000", "   147.0547180175781250000000000", "   -57.2493629455566406250000000" /)
  !!! Initialize group197
  group197 = (/ "     3.8325133323669433593750000", "    58.1784591674804687500000000", "    20.0143737792968750000000000" /)
  !!! Initialize group198
  group198 = (/ "   -25.4412326812744140625000000", "   -68.0808334350585937500000000", "    24.1438350677490234375000000" /)
  !!! Initialize group199
  group199 = (/ "   -68.8976821899414062500000000", "   -57.3059921264648437500000000", "   -45.3784942626953125000000000" /)
  !!! Initialize group200
  group200 = (/ "   204.6226654052734375000000000", "    -0.1311158537864685058593750", "    32.0322761535644531250000000" /)
  !!! Initialize group201
  group201 = (/ "   -36.4586639404296875000000000", "   -13.0064182281494140625000000", "   -41.1926307678222656250000000" /)
  !!! Initialize group202
  group202 = (/ "   120.3872833251953125000000000", "    41.6387710571289062500000000", "    75.6683120727539062500000000" /)
  !!! Initialize group203
  group203 = (/ "   -21.8528156280517578125000000", "    21.6288528442382812500000000", "    32.7390480041503906250000000" /)
  !!! Initialize group204
  group204 = (/ "  -113.5933151245117187500000000", "   219.4375152587890625000000000", "     1.0032685995101928710937500" /)
  !!! Initialize group205
  group205 = (/ "    23.2084598541259765625000000", "   145.3699035644531250000000000", "     7.1159019470214843750000000" /)
  !!! Initialize group206
  group206 = (/ "    17.6173896789550781250000000", "    32.1233863830566406250000000", "    47.9114799499511718750000000" /)
  !!! Initialize group207
  group207 = (/ "   104.0747375488281250000000000", "    16.5902233123779296875000000", "    80.2316513061523437500000000" /)
  !!! Initialize group208
  group208 = (/ "   -62.2350082397460937500000000", "   -10.6641492843627929687500000", "    66.7770538330078125000000000" /)
  !!! Initialize group209
  group209 = (/ "   -16.2866554260253906250000000", "     0.3280622661113739013671875", "   121.0825347900390625000000000" /)
  !!! Initialize group210
  group210 = (/ "     0.3265358209609985351562500", "    47.6349258422851562500000000", "     9.8737401962280273437500000" /)
  !!! Initialize group211
  group211 = (/ "  -103.3596801757812500000000000", "    -2.3072881698608398437500000", "    13.1757764816284179687500000" /)
  !!! Initialize group212
  group212 = (/ "    37.1123352050781250000000000", "    16.3039588928222656250000000", "   -98.4987030029296875000000000" /)
  !!! Initialize group213
  group213 = (/ "   -27.1017990112304687500000000", "   -65.5194396972656250000000000", "    48.4689369201660156250000000" /)
  !!! Initialize group214
  group214 = (/ "   -44.4661102294921875000000000", "    20.2789096832275390625000000", "  -138.8235015869140625000000000" /)
  !!! Initialize group215
  group215 = (/ "    45.3556556701660156250000000", "   104.8524246215820312500000000", "    31.0546646118164062500000000" /)
  !!! Initialize group216
  group216 = (/ "    31.9457340240478515625000000", "    57.3461914062500000000000000", "    19.1948204040527343750000000" /)
  !!! Initialize group217
  group217 = (/ "     8.4313535690307617187500000", "  -142.2365875244140625000000000", "    22.8648719787597656250000000" /)
  !!! Initialize group218
  group218 = (/ "  -101.8254089355468750000000000", "     6.9964909553527832031250000", "    60.4708251953125000000000000" /)
  !!! Initialize group219
  group219 = (/ "    96.6268234252929687500000000", "     0.6996097564697265625000000", "  -132.6307678222656250000000000" /)
  !!! Initialize group220
  group220 = (/ "   -33.2293663024902343750000000", "    10.5116558074951171875000000", "   -14.1201362609863281250000000" /)
  !!! Initialize group221
  group221 = (/ "     4.3672246932983398437500000", "   -22.5592212677001953125000000", "   -34.0466651916503906250000000" /)
  !!! Initialize group222
  group222 = (/ "   -57.0812606811523437500000000", "     3.4875946044921875000000000", "   -59.9735755920410156250000000" /)
  !!! Initialize group223
  group223 = (/ "   -23.2473449707031250000000000", "    -0.7545083165168762207031250", "   -27.4796314239501953125000000" /)
  !!! Initialize group224
  group224 = (/ "   -29.9012489318847656250000000", "   -71.6934661865234375000000000", "    17.2296199798583984375000000" /)
  !!! Initialize group225
  group225 = (/ "    36.8813552856445312500000000", "   -32.1184692382812500000000000", "   157.6811218261718750000000000" /)
  !!! Initialize group226
  group226 = (/ "    -8.4484624862670898437500000", "   -40.6197662353515625000000000", "    87.9449615478515625000000000" /)
  !!! Initialize group227
  group227 = (/ "   -43.4906272888183593750000000", "     0.2102465033531188964843750", "   -83.1343536376953125000000000" /)
  !!! Initialize group228
  group228 = (/ "   -79.0887985229492187500000000", "   -33.2323646545410156250000000", "   -23.6123371124267578125000000" /)
  !!! Initialize group229
  group229 = (/ "    -0.7835942506790161132812500", "   274.6556396484375000000000000", "  -116.3850402832031250000000000" /)
  !!! Initialize group230
  group230 = (/ "    12.3058004379272460937500000", "   192.7177124023437500000000000", "   -60.7775382995605468750000000" /)
  !!! Initialize group231
  group231 = (/ "   -65.6546554565429687500000000", "   -12.9587230682373046875000000", "    26.3620929718017578125000000" /)
  !!! Initialize group232
  group232 = (/ "   -13.7132472991943359375000000", "    21.2069530487060546875000000", "  -148.8297271728515625000000000" /)
  !!! Initialize group233
  group233 = (/ "   -19.2786521911621093750000000", "   -16.9438552856445312500000000", "   -29.8979415893554687500000000" /)
  !!! Initialize group234
  group234 = (/ "    41.2175483703613281250000000", "    64.1751937866210937500000000", "     2.8739023208618164062500000" /)
  !!! Initialize group235
  group235 = (/ "   -23.0976657867431640625000000", "   -31.1000499725341796875000000", "    13.0727167129516601562500000" /)
  !!! Initialize group236
  group236 = (/ "   -49.9712448120117187500000000", "   -14.5785379409790039062500000", "   -25.3960590362548828125000000" /)
  !!! Initialize group237
  group237 = (/ "   -35.9328956604003906250000000", "    36.8963088989257812500000000", "    15.8947687149047851562500000" /)
  !!! Initialize group238
  group238 = (/ "   104.5031814575195312500000000", "    54.1366539001464843750000000", "    42.6909828186035156250000000" /)
  !!! Initialize group239
  group239 = (/ "    24.4859523773193359375000000", "     4.6125102043151855468750000", "     6.0760650634765625000000000" /)
  !!! Initialize group240
  group240 = (/ "   -29.6402168273925781250000000", "    -6.3749365806579589843750000", "    97.4073257446289062500000000" /)
  !!! Initialize group241
  group241 = (/ "  -115.6752319335937500000000000", "   -13.3476934432983398437500000", "   -76.6487426757812500000000000" /)
  !!! Initialize group242
  group242 = (/ "   -30.3498172760009765625000000", "   -26.6311607360839843750000000", "    14.5768127441406250000000000" /)
  !!! Initialize group243
  group243 = (/ "    43.0454978942871093750000000", "    16.2878093719482421875000000", "   -49.0739326477050781250000000" /)
  !!! Initialize group244
  group244 = (/ "   -28.2982959747314453125000000", "   145.1964569091796875000000000", "   -26.1829872131347656250000000" /)
  !!! Initialize group245
  group245 = (/ "   -15.5384387969970703125000000", "   -22.3104991912841796875000000", "    64.4823226928710937500000000" /)
  !!! Initialize group246
  group246 = (/ "   159.3447723388671875000000000", "  -172.7036132812500000000000000", "    -0.7741920351982116699218750" /)
  !!! Initialize group247
  group247 = (/ "     7.6310105323791503906250000", "   -34.0864219665527343750000000", "     2.7343895435333251953125000" /)
  !!! Initialize group248
  group248 = (/ "   -54.0574226379394531250000000", "   -97.6212997436523437500000000", "    17.3518772125244140625000000" /)
  !!! Initialize group249
  group249 = (/ "    27.9776782989501953125000000", "    27.5166854858398437500000000", "    22.7471790313720703125000000" /)
  !!! Initialize group250
  group250 = (/ "     0.1312324404716491699218750", "    33.8092765808105468750000000", "    10.5165100097656250000000000" /)
  !!! Initialize group251
  group251 = (/ "     8.2761907577514648437500000", "    38.5932693481445312500000000", "   -50.0379409790039062500000000" /)
  !!! Initialize group252
  group252 = (/ "   -17.0246353149414062500000000", "   -25.6956310272216796875000000", "   -65.4302749633789062500000000" /)
  !!! Initialize group253
  group253 = (/ "   -45.4038085937500000000000000", "    26.0482215881347656250000000", "    23.5631599426269531250000000" /)
  !!! Initialize group254
  group254 = (/ "    19.4452228546142578125000000", "     8.1807537078857421875000000", "     0.9000299572944641113281250" /)
  !!! Initialize group255
  group255 = (/ "  132.07996826171875000000000000", "  -106.9179153442382812500000000", "  -127.3176574707031250000000000" /)
  !!! Initialize group256
  group256 = (/ "   -26.7118263244628906250000000", "    10.3456010818481445312500000", "   -94.7995071411132812500000000" /)
  !!! Initialize group257
  group257 = (/ "   -96.9515457153320312500000000", "    -3.8627893924713134765625000", "    34.3700294494628906250000000" /)
  !!! Initialize group258
  group258 = (/ "    57.0371551513671875000000000", "   -14.7780427932739257812500000", "     6.1067295074462890625000000" /)
  !!! Initialize group259
  group259 = (/ "    -7.5179071426391601562500000", "  -101.6444168090820312500000000", "    16.0255336761474609375000000" /)
  !!! Initialize group260
  group260 = (/ "   -87.7869033813476562500000000", "   -52.7374000549316406250000000", "   -44.7891387939453125000000000" /)
  !!! Initialize group261
  group261 = (/ "   -63.9291534423828125000000000", "   -28.5701560974121093750000000", "   -12.1613941192626953125000000" /)
  !!! Initialize group262
  group262 = (/ "   -19.7270774841308593750000000", "   -80.6529312133789062500000000", "    93.1075897216796875000000000" /)
  !!! Initialize group263
  group263 = (/ "   -28.9701805114746093750000000", "    28.1804485321044921875000000", "    13.7810735702514648437500000" /)
  !!! Initialize group264
  group264 = (/ "    74.4925079345703125000000000", "   -56.5061874389648437500000000", "   -98.6935119628906250000000000" /)
  !!! Initialize group265
  group265 = (/ "      88.89580535888671875000000", "  -215.4612884521484375000000000", "   736.6574707031250000000000000" /)
  !!! Initialize group266
  group266 = (/ "   -74.8337631225585937500000000", "    -3.0399425029754638671875000", "   -21.1269493103027343750000000" /)
  !!! Initialize group267
  group267 = (/ "     0.6618841886520385742187500", "   -53.9469985961914062500000000", "    15.9148473739624023437500000" /)
  !!! Initialize group268
  group268 = (/ "   -91.9983444213867187500000000", "    45.1681404113769531250000000", "   -25.8025436401367187500000000" /)
  !!! Initialize group269
  group269 = (/ "   -42.8563346862792968750000000", "   -49.4431304931640625000000000", "   -15.3469743728637695312500000" /)
  !!! Initialize group270
  group270 = (/ "   -51.2868156433105468750000000", "    17.2315521240234375000000000", "   170.1640472412109375000000000" /)
  !!! Initialize group271
  group271 = (/ "    49.0765724182128906250000000", "    30.2384643554687500000000000", "    42.0468292236328125000000000" /)
  !!! Initialize group272
  group272 = (/ "   117.9024276733398437500000000", "    12.3436326980590820312500000", "     8.4681882858276367187500000" /)
  !!! Initialize group273
  group273 = (/ "    48.4456863403320312500000000", "    10.5444087982177734375000000", "   -61.2439308166503906250000000" /)
  !!! Initialize group274
  group274 = (/ "   -29.8139324188232421875000000", "    22.8853454589843750000000000", "  -180.5174865722656250000000000" /)
  !!! Initialize group275
  group275 = (/ "    80.9479904174804687500000000", "    25.0615863800048828125000000", "    94.6533432006835937500000000" /)
  !!! Initialize group276
  group276 = (/ "   130.6164245605468750000000000", "    36.8736801147460937500000000", "   -64.9125137329101562500000000" /)
  !!! Initialize group277
  group277 = (/ "    60.0801391601562500000000000", "    15.4043951034545898437500000", "    -6.9906010627746582031250000" /)
  !!! Initialize group278
  group278 = (/ "   -62.8191146850585937500000000", "    45.8315010070800781250000000", "    -1.6979222297668457031250000" /)
  !!! Initialize group279
  group279 = (/ "    -5.9861021041870117187500000", "   -76.5600662231445312500000000", "   -70.1182250976562500000000000" /)
  !!! Initialize group280
  group280 = (/ "   -14.5786952972412109375000000", "     1.1125541925430297851562500", "    59.6345443725585937500000000" /)
  !!! Initialize group281
  group281 = (/ "     5.6149358749389648437500000", "    41.6228866577148437500000000", "    52.3839607238769531250000000" /)
  !!! Initialize group282
  group282 = (/ "     6.3377676010131835937500000", "    52.8183479309082031250000000", "     8.6927986145019531250000000" /)
  !!! Initialize group283
  group283 = (/ "   146.4935302734375000000000000", "    93.8237686157226562500000000", "    23.9358100891113281250000000" /)
  !!! Initialize group284
  group284 = (/ "    88.3651657104492187500000000", "   -23.6325492858886718750000000", "    51.9612274169921875000000000" /)
  !!! Initialize group285
  group285 = (/ "    -3.7216773033142089843750000", "  -100.7469100952148437500000000", "    -0.8129423856735229492187500" /)
  !!! Initialize group286
  group286 = (/ "   -42.3632774353027343750000000", "   -17.1754398345947265625000000", "     6.3583426475524902343750000" /)
  !!! Initialize group287
  group287 = (/ "    33.2382659912109375000000000", "    54.9394645690917968750000000", "    40.4190635681152343750000000" /)
  !!! Initialize group288
  group288 = (/ "   -26.1231555938720703125000000", "   119.2786254882812500000000000", "    18.3558597564697265625000000" /)
  !!! Initialize group289
  group289 = (/ "    -6.5916399955749511718750000", "   119.0052719116210937500000000", "    89.9281234741210937500000000" /)
  !!! Initialize group290
  group290 = (/ "   -17.6865615844726562500000000", "   -46.6478691101074218750000000", "  -109.8190307617187500000000000" /)
  !!! Initialize group291
  group291 = (/ "    -5.5838289260864257812500000", "   -39.6984176635742187500000000", "    53.4833908081054687500000000" /)
  !!! Initialize group292
  group292 = (/ "    21.6422138214111328125000000", "     6.9430613517761230468750000", "    -1.7553656101226806640625000" /)
  !!! Initialize group293
  group293 = (/ "   141.5068664550781250000000000", "    17.2019767761230468750000000", "    10.8367071151733398437500000" /)
  !!! Initialize group294
  group294 = (/ "    23.6566104888916015625000000", "    74.6548843383789062500000000", "   -25.0895175933837890625000000" /)
  !!! Initialize group295
  group295 = (/ "   -12.9766359329223632812500000", "   -32.7088775634765625000000000", "    29.5400638580322265625000000" /)
  !!! Initialize group296
  group296 = (/ "    92.0773086547851562500000000", "  -141.4090423583984375000000000", "   -16.4246215820312500000000000" /)
  !!! Initialize group297
  group297 = (/ "   -55.5067749023437500000000000", "    48.9098205566406250000000000", "   -10.6449804306030273437500000" /)
  !!! Initialize group298
  group298 = (/ "    66.5087738037109375000000000", "    33.1297302246093750000000000", "    22.0429229736328125000000000" /)
  !!! Initialize group299
  group299 = (/ "   -26.9530544281005859375000000", "    58.0619468688964843750000000", "    20.7170219421386718750000000" /)
  !!! Initialize group300
  group300 = (/ "    40.6148643493652343750000000", "    18.4240570068359375000000000", "    39.8179855346679687500000000" /)
  !!! Initialize group301
  group301 = (/ "    46.6701164245605468750000000", "   -50.2027130126953125000000000", "   -30.2994861602783203125000000" /)
  !!! Initialize group302
  group302 = (/ "   -13.8381757736206054687500000", "    26.9914703369140625000000000", "   -44.7537040710449218750000000" /)
  !!! Initialize group303
  group303 = (/ "   -33.0392646789550781250000000", "    66.0058135986328125000000000", "    62.7493019104003906250000000" /)
  !!! Initialize group304
  group304 = (/ "    39.1897811889648437500000000", "    22.6618843078613281250000000", "   -92.3408889770507812500000000" /)
  !!! Initialize group305
  group305 = (/ "   -10.6416292190551757812500000", "    30.4154472351074218750000000", "    52.9113960266113281250000000" /)
  !!! Initialize group306
  group306 = (/ "   -45.6846542358398437500000000", "  -135.3498687744140625000000000", "    62.0185089111328125000000000" /)
  !!! Initialize group307
  group307 = (/ "   -37.3051643371582031250000000", "    -5.6537146568298339843750000", "     7.5829095840454101562500000" /)
  !!! Initialize group308
  group308 = (/ "    -6.0294189453125000000000000", "     6.7895174026489257812500000", "     2.9682142734527587890625000" /)
  !!! Initialize group309
  group309 = (/ "   -80.3963851928710937500000000", "   -18.6381988525390625000000000", "   -26.3050327301025390625000000" /)
  !!! Initialize group310
  group310 = (/ "   -28.5082321166992187500000000", "    -8.8604001998901367187500000", "    45.0755805969238281250000000" /)
  !!! Initialize group311
  group311 = (/ "   -57.8776588439941406250000000", "    -4.2687492370605468750000000", "   -26.7993774414062500000000000" /)
  !!! Initialize group312
  group312 = (/ "    87.3940048217773437500000000", "   154.7462463378906250000000000", "   -62.1051788330078125000000000" /)
  !!! Initialize group313
  group313 = (/ "    35.8480148315429687500000000", "    -7.3931555747985839843750000", "     7.3867506980895996093750000" /)
  !!! Initialize group314
  group314 = (/ "    11.6052112579345703125000000", "   -25.8668003082275390625000000", "    41.6319694519042968750000000" /)
  !!! Initialize group315
  group315 = (/ "    10.1447067260742187500000000", "   -80.3597640991210937500000000", "   -17.5233211517333984375000000" /)
  !!! Initialize group316
  group316 = (/ "    14.8394517898559570312500000", "    91.7804718017578125000000000", "     0.3740986585617065429687500" /)
  !!! Initialize group317
  group317 = (/ "     0.2909028530120849609375000", "   -43.3168373107910156250000000", "    39.4763908386230468750000000" /)
  !!! Initialize group318
  group318 = (/ "   -12.7241830825805664062500000", "   111.3373184204101562500000000", "    12.3237056732177734375000000" /)
  !!! Initialize group319
  group319 = (/ "    52.9870185852050781250000000", "   -50.9819793701171875000000000", "    69.6467285156250000000000000" /)
  !!! Initialize group320
  group320 = (/ "    -0.1048353910446166992187500", "   -22.1975612640380859375000000", "   -26.3301353454589843750000000" /)
  !!! Initialize group321
  group321 = (/ "   -79.6644134521484375000000000", "   -55.7486419677734375000000000", "    20.7061862945556640625000000" /)
  !!! Initialize group322
  group322 = (/ "   -72.1847152709960937500000000", "   -30.4124870300292968750000000", "     0.0289254784584045410156250" /)
  !!! Initialize group323
  group323 = (/ "    48.3989753723144531250000000", "    58.3183822631835937500000000", "   -58.5607261657714843750000000" /)
  !!! Initialize group324
  group324 = (/ "    59.2091407775878906250000000", "    -3.8833711147308349609375000", "    72.2561645507812500000000000" /)
  !!! Initialize group325
  group325 = (/ "  -180.3609924316406250000000000", "   -32.7027282714843750000000000", "   -19.4932518005371093750000000" /)
  !!! Initialize group326
  group326 = (/ "    88.6995162963867187500000000", "    98.9984207153320312500000000", "    -0.8359608054161071777343750" /)
  !!! Initialize group327
  group327 = (/ "   -16.7651939392089843750000000", "   -46.2575798034667968750000000", "    44.2574539184570312500000000" /)
  !!! Initialize group328
  group328 = (/ "    25.7500438690185546875000000", "   -25.9642086029052734375000000", "   -16.8096847534179687500000000" /)
  !!! Initialize group329
  group329 = (/ "   -53.3142280578613281250000000", "   -45.7450408935546875000000000", "    13.3193712234497070312500000" /)
  !!! Initialize group330
  group330 = (/ "   197.1709442138671875000000000", "   -45.6041641235351562500000000", "   -58.8215446472167968750000000" /)
  !!! Initialize group331
  group331 = (/ "   -48.2339935302734375000000000", "   -13.2645683288574218750000000", "    14.6264390945434570312500000" /)
  !!! Initialize group332
  group332 = (/ "    -6.1948461532592773437500000", "   124.8714370727539062500000000", "    71.6061172485351562500000000" /)
  !!! Initialize group333
  group333 = (/ "    64.4218597412109375000000000", "    39.0450286865234375000000000", "     5.4674506187438964843750000" /)
  !!! Initialize group334
  group334 = (/ "    63.2353973388671875000000000", "    14.0746889114379882812500000", "   -23.2136955261230468750000000" /)
  !!! Initialize group335
  group335 = (/ "    -2.4245166778564453125000000", "   -60.4995803833007812500000000", "   -50.6838912963867187500000000" /)
  !!! Initialize group336
  group336 = (/ "    15.4709653854370117187500000", "   -57.8775558471679687500000000", "   -22.3501434326171875000000000" /)
  !!! Initialize group337
  group337 = (/ "    33.8711242675781250000000000", "   -36.2001686096191406250000000", "   -59.1183357238769531250000000" /)
  !!! Initialize group338
  group338 = (/ "   -49.3504562377929687500000000", "   -35.8780708312988281250000000", "   119.6538162231445312500000000" /)
  !!! Initialize group339
  group339 = (/ "    31.4548301696777343750000000", "    -8.8855094909667968750000000", "   -80.4595031738281250000000000" /)
  !!! Initialize group340
  group340 = (/ "    -5.8413286209106445312500000", "   112.6295623779296875000000000", "    25.9766578674316406250000000" /)
  !!! Initialize group341
  group341 = (/ "   -13.0871381759643554687500000", "   -20.6115188598632812500000000", "   -89.4194946289062500000000000" /)
  !!! Initialize group342
  group342 = (/ "   -22.2324047088623046875000000", "   -25.3512287139892578125000000", "    22.3321113586425781250000000" /)
  !!! Initialize group343
  group343 = (/ "   -74.2454833984375000000000000", "    -8.5116472244262695312500000", "    27.3320026397705078125000000" /)
  !!! Initialize group344
  group344 = (/ "    34.9275321960449218750000000", "    40.4220504760742187500000000", "    24.0013027191162109375000000" /)
  !!! Initialize group345
  group345 = (/ "    24.0815849304199218750000000", "   110.1886825561523437500000000", "   -33.0097389221191406250000000" /)
  !!! Initialize group346
  group346 = (/ "    -3.4141573905944824218750000", "     8.1483860015869140625000000", "    23.7569122314453125000000000" /)
  !!! Initialize group347
  group347 = (/ "    33.8843841552734375000000000", "   -29.5482826232910156250000000", "   120.0347747802734375000000000" /)
  !!! Initialize group348
  group348 = (/ "    17.5567550659179687500000000", "   -68.6561126708984375000000000", "   -19.2373638153076171875000000" /)
  !!! Initialize group349
  group349 = (/ "   -48.9129219055175781250000000", "   -55.4104232788085937500000000", "    36.9402503967285156250000000" /)
  !!! Initialize group350
  group350 = (/ "     6.0994834899902343750000000", "    13.8623361587524414062500000", "    57.2045478820800781250000000" /)
  !!! Initialize group351
  group351 = (/ "    26.9904193878173828125000000", "    92.3833847045898437500000000", "    -2.5437030792236328125000000" /)
  !!! Initialize group352
  group352 = (/ "   -16.2304801940917968750000000", "   117.1349258422851562500000000", "    36.3541526794433593750000000" /)
  !!! Initialize group353
  group353 = (/ "    58.9786987304687500000000000", "   -26.8753299713134765625000000", "   -42.3613014221191406250000000" /)
  !!! Initialize group354
  group354 = (/ "    -5.2448105812072753906250000", "   -17.1154861450195312500000000", "   -53.8223457336425781250000000" /)
  !!! Initialize group355
  group355 = (/ "    13.1384601593017578125000000", "   -62.7374649047851562500000000", "  -108.9521408081054687500000000" /)
  !!! Initialize group356
  group356 = (/ "    13.4382581710815429687500000", "    27.9186286926269531250000000", "    32.7362289428710937500000000" /)
  !!! Initialize group357
  group357 = (/ "  -119.9156646728515625000000000", "   -19.4696960449218750000000000", "   -30.6911659240722656250000000" /)
  !!! Initialize group358
  group358 = (/ "   -24.0254192352294921875000000", "    24.9008808135986328125000000", "   -40.0937156677246093750000000" /)
  !!! Initialize group359
  group359 = (/ "  -130.9685668945312500000000000", "    41.1613655090332031250000000", "    85.9102096557617187500000000" /)
  !!! Initialize group360
  group360 = (/ "   -42.9637641906738281250000000", "    27.6546745300292968750000000", "    20.9596786499023437500000000" /)
  !!! Initialize group361
  group361 = (/ "    72.1682662963867187500000000", "    38.3357505798339843750000000", "   -50.7599945068359375000000000" /)
  !!! Initialize group362
  group362 = (/ "    10.3749608993530273437500000", "    -0.6824628114700317382812500", "   -11.2810182571411132812500000" /)
  !!! Initialize group363
  group363 = (/ "   -14.7422370910644531250000000", "  -161.2717590332031250000000000", "    72.4338150024414062500000000" /)
  !!! Initialize group364
  group364 = (/ "   -74.7708663940429687500000000", "     5.9292650222778320312500000", "   -22.2619266510009765625000000" /)
  !!! Initialize group365
  group365 = (/ "   -21.9115505218505859375000000", "   -30.8247604370117187500000000", "   -29.7444839477539062500000000" /)
  !!! Initialize group366
  group366 = (/ "   -60.2111320495605468750000000", "     6.4178628921508789062500000", "   228.5357055664062500000000000" /)
  !!! Initialize group367
  group367 = (/ "     4.5343837738037109375000000", "   -87.6961898803710937500000000", "    38.5719451904296875000000000" /)
  !!! Initialize group368
  group368 = (/ "   -12.9763860702514648437500000", "    28.7414188385009765625000000", "    90.2711334228515625000000000" /)
  !!! Initialize group369
  group369 = (/ "    72.1673431396484375000000000", "    54.9272270202636718750000000", "     9.9293956756591796875000000" /)
  !!! Initialize group370
  group370 = (/ "   -69.4951095581054687500000000", "     7.2157645225524902343750000", "    31.2837505340576171875000000" /)
  !!! Initialize group371
  group371 = (/ "    57.5892028808593750000000000", "    50.5089874267578125000000000", "    31.9998035430908203125000000" /)
  !!! Initialize group372
  group372 = (/ "   -28.9727401733398437500000000", "   125.8963928222656250000000000", "     7.1554126739501953125000000" /)
  !!! Initialize group373
  group373 = (/ "   -69.9255523681640625000000000", "   128.4253387451171875000000000", "    66.0761413574218750000000000" /)
  !!! Initialize group374
  group374 = (/ "   -40.0573043823242187500000000", "    33.7396888732910156250000000", "    14.4051847457885742187500000" /)
  !!! Initialize group375
  group375 = (/ "    24.0780773162841796875000000", "   -72.3005752563476562500000000", "    38.6102180480957031250000000" /)
  !!! Initialize group376
  group376 = (/ "    86.1840438842773437500000000", "   -58.2710113525390625000000000", "     6.7065916061401367187500000" /)
  !!! Initialize group377
  group377 = (/ "   -42.7527770996093750000000000", "   -18.7298278808593750000000000", "   -56.2352409362792968750000000" /)
  !!! Initialize group378
  group378 = (/ "   -52.4054832458496093750000000", "   -53.2331809997558593750000000", "    49.0018463134765625000000000" /)
  !!! Initialize group379
  group379 = (/ "    21.9617729187011718750000000", "   -31.6630115509033203125000000", "    44.8967666625976562500000000" /)
  !!! Initialize group380
  group380 = (/ "     7.9214110374450683593750000", "   -33.1293182373046875000000000", "   -16.7356643676757812500000000" /)
  !!! Initialize group381
  group381 = (/ "   -32.6350708007812500000000000", "    -8.0167293548583984375000000", "   -49.3452415466308593750000000" /)
  !!! Initialize group382
  group382 = (/ "  -101.5307235717773437500000000", "    26.7637023925781250000000000", "   -16.6068916320800781250000000" /)
  !!! Initialize group383
  group383 = (/ "   -54.2185249328613281250000000", "    15.9215383529663085937500000", "   -45.6092109680175781250000000" /)
  !!! Initialize group384
  group384 = (/ "   -52.2589683532714843750000000", "    36.6652450561523437500000000", "   -28.3500442504882812500000000" /)
  !!! Initialize group385
  group385 = (/ "    44.7718467712402343750000000", "     1.8577558994293212890625000", "    95.1889266967773437500000000" /)
  !!! Initialize group386
  group386 = (/ "   -16.3752841949462890625000000", "     1.1834671497344970703125000", "   -10.6210374832153320312500000" /)
  !!! Initialize group387
  group387 = (/ "    22.9004325866699218750000000", "    -3.4353220462799072265625000", "   -80.1521911621093750000000000" /)
  !!! Initialize group388
  group388 = (/ "   -21.0072803497314453125000000", "    -4.8435840606689453125000000", "   111.8254318237304687500000000" /)
  !!! Initialize group389
  group389 = (/ "   -50.4054756164550781250000000", "    17.0516681671142578125000000", "    11.8786277770996093750000000" /)
  !!! Initialize group390
  group390 = (/ "   -44.7925643920898437500000000", "   -56.2452964782714843750000000", "   179.5102691650390625000000000" /)
  !!! Initialize group391
  group391 = (/ "     4.2637495994567871093750000", "   -75.0372772216796875000000000", "    17.5661029815673828125000000" /)
  !!! Initialize group392
  group392 = (/ "    34.0225639343261718750000000", "   -53.2505836486816406250000000", "    11.6425266265869140625000000" /)
  !!! Initialize group393
  group393 = (/ "     3.7081899642944335937500000", "   -99.8481445312500000000000000", "    71.2073669433593750000000000" /)
  !!! Initialize group394
  group394 = (/ "   -18.1489830017089843750000000", "    -8.4108543395996093750000000", "   -39.7342414855957031250000000" /)
  !!! Initialize group395
  group395 = (/ "    78.0169677734375000000000000", "    37.8188362121582031250000000", "     6.2762422561645507812500000" /)
  !!! Initialize group396
  group396 = (/ "    88.0858993530273437500000000", "    24.9032573699951171875000000", "   -34.4595680236816406250000000" /)
  !!! Initialize group397
  group397 = (/ "   -57.0872611999511718750000000", "   -46.8750991821289062500000000", "    53.8188209533691406250000000" /)
  !!! Initialize group398
  group398 = (/ "     9.2795591354370117187500000", "   -39.8156929016113281250000000", "    99.7657623291015625000000000" /)
  !!! Initialize group399
  group399 = (/ "    16.8226432800292968750000000", "    11.6566724777221679687500000", "   -35.3847961425781250000000000" /)
  !!! Initialize group400
  group400 = (/ "  -106.2727584838867187500000000", "    96.8408203125000000000000000", "   -27.0376052856445312500000000" /)
  !!! Initialize group401
  group401 = (/ "    85.0728073120117187500000000", "    32.1896820068359375000000000", "    83.3147506713867187500000000" /)
  !!! Initialize group402
  group402 = (/ "   -34.4101181030273437500000000", "   -29.1845550537109375000000000", "    38.7316970825195312500000000" /)
  !!! Initialize group403
  group403 = (/ "   -15.6898593902587890625000000", "   -35.0371475219726562500000000", "    52.3937568664550781250000000" /)
  !!! Initialize group404
  group404 = (/ "    -1.8901773691177368164062500", "    67.8889999389648437500000000", "   -96.1148910522460937500000000" /)
  !!! Initialize group405
  group405 = (/ "     1.0936765670776367187500000", "   104.9035415649414062500000000", "   -43.2579689025878906250000000" /)
  !!! Initialize group406
  group406 = (/ "     4.4688711166381835937500000", "   -42.8995246887207031250000000", "   -10.8427028656005859375000000" /)
  !!! Initialize group407
  group407 = (/ "   -33.0728149414062500000000000", "    22.7422733306884765625000000", "  -228.1163177490234375000000000" /)
  !!! Initialize group408
  group408 = (/ "    55.2671203613281250000000000", "    50.8632774353027343750000000", "    60.6039276123046875000000000" /)
  !!! Initialize group409
  group409 = (/ "    95.2013778686523437500000000", "  -106.0841979980468750000000000", "    -0.1051184907555580139160156" /)
  !!! Initialize group410
  group410 = (/ "   -16.7540760040283203125000000", "   -22.1536922454833984375000000", "    24.0791473388671875000000000" /)
  !!! Initialize group411
  group411 = (/ "    72.7465286254882812500000000", "  -136.8300933837890625000000000", "     2.3403732776641845703125000" /)
  !!! Initialize group412
  group412 = (/ "    94.2906341552734375000000000", "     0.4780160188674926757812500", "    24.9651660919189453125000000" /)
  !!! Initialize group413
  group413 = (/ "    41.8085937500000000000000000", "   -22.8425960540771484375000000", "    97.6968460083007812500000000" /)
  !!! Initialize group414
  group414 = (/ "   -37.5657272338867187500000000", "  -135.6645660400390625000000000", "    -8.3195848464965820312500000" /)
  !!! Initialize group415
  group415 = (/ "   -42.6202354431152343750000000", "    45.3738937377929687500000000", "    25.7353744506835937500000000" /)
  !!! Initialize group416
  group416 = (/ "     7.2583942413330078125000000", "   -71.8170089721679687500000000", "   -19.5366249084472656250000000" /)
  !!! Initialize group417
  group417 = (/ "   -42.5787467956542968750000000", "    75.6362838745117187500000000", "   -13.9015979766845703125000000" /)
  !!! Initialize group418
  group418 = (/ "    18.5587730407714843750000000", "    50.9319725036621093750000000", "   -29.3646717071533203125000000" /)
  !!! Initialize group419
  group419 = (/ "    -8.1123170852661132812500000", "    16.8325309753417968750000000", "    13.9649486541748046875000000" /)
  !!! Initialize group420
  group420 = (/ "   -38.9540672302246093750000000", "    46.1474838256835937500000000", "    37.9598121643066406250000000" /)
  !!! Initialize group421
  group421 = (/ "     4.5975489616394042968750000", "    55.8682403564453125000000000", "   -83.5658340454101562500000000" /)
  !!! Initialize group422
  group422 = (/ "    47.4979743957519531250000000", "   -27.1533222198486328125000000", "     0.1868621706962585449218750" /)
  !!! Initialize group423
  group423 = (/ "    13.8722181320190429687500000", "   -34.3264503479003906250000000", "   -58.4123420715332031250000000" /)
  !!! Initialize group424
  group424 = (/ "   -24.3735198974609375000000000", "    17.8992309570312500000000000", "    18.6947803497314453125000000" /)
  !!! Initialize group425
  group425 = (/ "   -10.7848558425903320312500000", "   -56.9420356750488281250000000", "    71.6214828491210937500000000" /)
  !!! Initialize group426
  group426 = (/ "   -55.7020034790039062500000000", "    87.0100555419921875000000000", "    -0.3334464430809020996093750" /)
  !!! Initialize group427
  group427 = (/ "    33.9204483032226562500000000", "    50.1700363159179687500000000", "     6.9853091239929199218750000" /)
  !!! Initialize group428
  group428 = (/ "     2.9582002162933349609375000", "   -28.8151721954345703125000000", "    56.3130149841308593750000000" /)
  !!! Initialize group429
  group429 = (/ "   -34.3607978820800781250000000", "   -66.1377716064453125000000000", "    51.0784912109375000000000000" /)
  !!! Initialize group430
  group430 = (/ "    80.9758682250976562500000000", "   -10.0958051681518554687500000", "    64.1502075195312500000000000" /)
  !!! Initialize group431
  group431 = (/ "   -71.5551986694335937500000000", "    -9.6463489532470703125000000", "     2.3038833141326904296875000" /)
  !!! Initialize group432
  group432 = (/ "    37.2076644897460937500000000", "   -36.8812942504882812500000000", "   -10.4221916198730468750000000" /)
  !!! Initialize group433
  group433 = (/ "    -8.8695058822631835937500000", "    47.1019821166992187500000000", "    27.6251029968261718750000000" /)
  !!! Initialize group434
  group434 = (/ "    36.7685432434082031250000000", "   -11.9915533065795898437500000", "  -135.1011505126953125000000000" /)
  !!! Initialize group435
  group435 = (/ "    15.5428438186645507812500000", "    59.7271690368652343750000000", "    95.3721237182617187500000000" /)
  !!! Initialize group436
  group436 = (/ "     6.7723317146301269531250000", "    -5.8140854835510253906250000", "   114.9480667114257812500000000" /)
  !!! Initialize group437
  group437 = (/ "    46.6006507873535156250000000", "   -74.4485092163085937500000000", "    38.0665664672851562500000000" /)
  !!! Initialize group438
  group438 = (/ "    36.9411201477050781250000000", "    26.1944618225097656250000000", "   197.2907867431640625000000000" /)
  !!! Initialize group439
  group439 = (/ "   -54.4744949340820312500000000", "  -159.7095794677734375000000000", "   -22.6428489685058593750000000" /)
  !!! Initialize group440
  group440 = (/ "   221.4458312988281250000000000", "   -24.3671283721923828125000000", "   -33.7405815124511718750000000" /)
  !!! Initialize group441
  group441 = (/ "    72.1385040283203125000000000", "    30.7165985107421875000000000", "   -49.8582229614257812500000000" /)
  !!! Initialize group442
  group442 = (/ "     0.1196989044547080993652344", "   -55.1363029479980468750000000", "     0.0593746192753314971923828" /)
  !!! Initialize group443
  group443 = (/ "     7.9303846359252929687500000", "   -19.5585346221923828125000000", "    22.8239212036132812500000000" /)
  !!! Initialize group444
  group444 = (/ "    -8.7282276153564453125000000", "    14.3933610916137695312500000", "     8.6929130554199218750000000" /)
  !!! Initialize group445
  group445 = (/ "    92.0351409912109375000000000", "   -27.3571949005126953125000000", "   -40.2906379699707031250000000" /)
  !!! Initialize group446
  group446 = (/ "    36.4215965270996093750000000", "   -50.7764434814453125000000000", "     2.0159823894500732421875000" /)
  !!! Initialize group447
  group447 = (/ "    -1.3329803943634033203125000", "   -38.1555557250976562500000000", "    24.1205444335937500000000000" /)
  !!! Initialize group448
  group448 = (/ "    18.4805698394775390625000000", "   -54.8767585754394531250000000", "   -81.3130645751953125000000000" /)
  !!! Initialize group449
  group449 = (/ "   -51.1412925720214843750000000", "   -14.2003679275512695312500000", "    17.2233467102050781250000000" /)
  !!! Initialize group450
  group450 = (/ "   -34.3543128967285156250000000", "   -23.3456573486328125000000000", "   -19.0537509918212890625000000" /)
  !!! Initialize group451
  group451 = (/ "   -54.1834907531738281250000000", "    80.4372329711914062500000000", "    18.7329120635986328125000000" /)
  !!! Initialize group452
  group452 = (/ "    68.5865631103515625000000000", "    27.2575550079345703125000000", "     6.5597796440124511718750000" /)
  !!! Initialize group453
  group453 = (/ "  -130.1804199218750000000000000", "   -53.6437492370605468750000000", "   -43.5803031921386718750000000" /)
  !!! Initialize group454
  group454 = (/ "   -39.3249206542968750000000000", "    95.5260467529296875000000000", "    -7.3203811645507812500000000" /)
  !!! Initialize group455
  group455 = (/ "    24.6068763732910156250000000", "    13.6846475601196289062500000", "    93.7263031005859375000000000" /)
  !!! Initialize group456
  group456 = (/ "     9.0153942108154296875000000", "    28.5736312866210937500000000", "   -46.5622482299804687500000000" /)
  !!! Initialize group457
  group457 = (/ "   -78.3516769409179687500000000", "   -32.1305809020996093750000000", "    37.2279853820800781250000000" /)
  !!! Initialize group458
  group458 = (/ "    -6.3444414138793945312500000", "   -85.1600799560546875000000000", "    24.4919433593750000000000000" /)
  !!! Initialize group459
  group459 = (/ "   -89.5315856933593750000000000", "   118.9374694824218750000000000", "   -19.8594951629638671875000000" /)
  !!! Initialize group460
  group460 = (/ "  -136.6824951171875000000000000", "   -71.6690750122070312500000000", "  -125.0720291137695312500000000" /)
  !!! Initialize group461
  group461 = (/ "    -9.9534893035888671875000000", "    -9.6401348114013671875000000", "     3.7190155982971191406250000" /)
  !!! Initialize group462
  group462 = (/ "   -24.4539432525634765625000000", "    -5.8276987075805664062500000", "   -61.0385017395019531250000000" /)
  !!! Initialize group463
  group463 = (/ "     4.7696676254272460937500000", "   -12.7772445678710937500000000", "   -80.6516876220703125000000000" /)
  !!! Initialize group464
  group464 = (/ "   -30.9391460418701171875000000", "    18.3089866638183593750000000", "    70.3541793823242187500000000" /)
  !!! Initialize group465
  group465 = (/ "    31.6311168670654296875000000", "  -143.9831085205078125000000000", "     1.9314870834350585937500000" /)
  !!! Initialize group466
  group466 = (/ "   -77.6589279174804687500000000", "    30.0160369873046875000000000", "    11.0391893386840820312500000" /)
  !!! Initialize group467
  group467 = (/ "    38.2414245605468750000000000", "     9.0547733306884765625000000", "   -18.6656570434570312500000000" /)
  !!! Initialize group468 ! Note to Ian, first accurance of repeat decmial place in number 2
  group468 = (/ "    39.7187309265136718750000000", "   -79.5970230102539062500000000", "   -67.0177917480468750000000000" /)
  !!! Initialize group469
  group469 = (/ "    13.7303104400634765625000000", "   -42.0253791809082031250000000", "   -80.8706359863281250000000000" /)
  !!! Initialize group470
  group470 = (/ "   -27.5135021209716796875000000", "     4.4829993247985839843750000", "     6.3781418800354003906250000" /)
  !!! Initialize group471
  group471 = (/ "   -41.3069610595703125000000000", "   -29.6803455352783203125000000", "   -12.6185216903686523437500000" /)
  !!! Initialize group472
  group472 = (/ "   -26.6726379394531250000000000", "  -182.2864074707031250000000000", " -1031.5634765625000000000000000" /)
  !!! Initialize group473
  group473 = (/ "   244.5623474121093750000000000", "  -867.5086669921875000000000000", "   361.2190856933593750000000000" /)
  !!! Initialize group474
  group474 = (/ "  -412.2683715820312500000000000", "    58.7715148925781250000000000", "  -591.3445434570312500000000000" /)
  !!! Initialize group475
  group475 = (/ "  -285.9087524414062500000000000", "   -52.8227691650390625000000000", "     1.7660511732101440429687500" /)
  !!! Initialize group476
  group476 = (/ "    84.4979782104492187500000000", "    -0.7474154829978942871093750", "  -525.1860351562500000000000000" /)
  !!! Initialize group477
  group477 = (/ "    10.3403873443603515625000000", "    87.3298645019531250000000000", "  -218.5588378906250000000000000" /)
  !!! Initialize group478
  group478 = (/ "    19.3962440490722656250000000", "  -439.4118347167968750000000000", "     0.2102835625410079956054688" /)
  !!! Initialize group479 ! Preaty quacky number 2
  group479 = (/ "    37.4633712768554687500000000", "   -17.5644207000732421875000000", "  139.13183593750000000000000000" /)
  !!! Initialize group480
  group480 = (/ "  -692.9412231445312500000000000", "   200.3884124755859375000000000", "    12.0327606201171875000000000" /)
  !!! Initialize group481
  group481 = (/ "   -61.6725120544433593750000000", "    55.6573295593261718750000000", "    10.7140073776245117187500000" /)
  !!! Initialize group482
  group482 = (/ "   -74.9858627319335937500000000", "    89.5839233398437500000000000", "  -751.2257690429687500000000000" /)
  !!! Initialize group483
  group483 = (/ "    11.1462545394897460937500000", "   -47.3376731872558593750000000", "     0.0082748653367161750793457" /)
  !!! Initialize group484
  group484 = (/ "   -23.5690650939941406250000000", "   -16.3895206451416015625000000", "   -29.3670558929443359375000000" /)
  !!! Initialize group485
  group485 = (/ "    69.8915252685546875000000000", "  -390.9799804687500000000000000", "    21.5272407531738281250000000" /)
  !!! Initialize group486
  group486 = (/ "   -98.7340774536132812500000000", "   -32.3793449401855468750000000", "    38.2183685302734375000000000" /)
  !!! Initialize group487
  group487 = (/ "    75.7286376953125000000000000", "  -240.6942901611328125000000000", "     6.4694952964782714843750000" /)
  !!! Initialize group488
  group488 = (/ "    77.7011642456054687500000000", "    -0.4200966954231262207031250", "  -389.5897827148437500000000000" /)
  !!! Initialize group489
  group489 = (/ "    -2.3283696174621582031250000", "   122.9411010742187500000000000", "     0.3675068914890289306640625" /)
  !!! Initialize group490
  group490 = (/ "   461.0640563964843750000000000", "  -390.0346984863281250000000000", "    -0.4336887300014495849609375" /)
  !!! Initialize group491
  group491 = (/ "     0.0593303218483924865722656", "   -36.5786247253417968750000000", "   589.0947875976562500000000000" /)
  !!! Initialize group492
  group492 = (/ "    93.4931335449218750000000000", "   -12.0093936920166015625000000", "   -63.6365318298339843750000000" /)
  !!! Initialize group493
  group493 = (/ "    -1.1139731407165527343750000", "   -65.7178649902343750000000000", "   -41.6806526184082031250000000" /)
  !!! Initialize group494
  group494 = (/ "   994.2210693359375000000000000", "  -215.5261535644531250000000000", "  -520.0635986328125000000000000" /)
  !!! Initialize group495
  group495 = (/ "     0.7355275750160217285156250", "   -14.5079536437988281250000000", "    22.9481658935546875000000000" /)
  !!! Initialize group496
  group496 = (/ "     6.9734158515930175781250000", "   -14.2900190353393554687500000", "    12.6959075927734375000000000" /)
  !!! Initialize group497
  group497 = (/ "    -2.5360779762268066406250000", "  -107.6581115722656250000000000", "   -30.4605388641357421875000000" /)
  !!! Initialize group498
  group498 = (/ "    20.0162982940673828125000000", "    99.4974136352539062500000000", "    23.0304107666015625000000000" /)
  !!! Initialize group499
  group499 = (/ "   -41.5342063903808593750000000", "   -26.4623622894287109375000000", "    95.5459671020507812500000000" /)
  !!! Initialize group500
  group500 = (/ "   -34.2929039001464843750000000", "     9.6721057891845703125000000", "    47.1254348754882812500000000" /)
  !!! Initialize group501
  group501 = (/ "   -44.6582260131835937500000000", "   -56.3006210327148437500000000", "    -7.3588404655456542968750000" /)
  !!! Initialize group502
  group502 = (/ "  -646.7139892578125000000000000", "     0.1611755341291427612304688", "     0.6373237967491149902343750" /)
  !!! Initialize group503
  group503 = (/ "    65.3068618774414062500000000", "    14.1918258666992187500000000", "    40.7805595397949218750000000" /)
  !!! Initialize group504
  group504 = (/ "    20.0138263702392578125000000", "  -173.6826934814453125000000000", "  -135.2509002685546875000000000" /)
  !!! Initialize group505
  group505 = (/ "    19.3661422729492187500000000", "    11.8956747055053710937500000", "    62.3663940429687500000000000" /)
  !!! Initialize group506
  group506 = (/ "   -12.1573352813720703125000000", "  -222.5463104248046875000000000", "     0.7842733263969421386718750" /)
  !!! Initialize group507
  group507 = (/ "     0.7456009984016418457031250", "    44.2852630615234375000000000", "   -65.9733886718750000000000000" /)
  !!! Initialize group508
  group508 = (/ "    43.2742919921875000000000000", "    82.7561874389648437500000000", "    -0.4383699595928192138671875" /)
  !!! Initialize group509
  group509 = (/ "    26.4023971557617187500000000", "     0.0550283454358577728271484", "   -20.3857917785644531250000000" /)
  !!! Initialize group510
  group510 = (/ "     1.5505141019821166992187500", "   -67.5128860473632812500000000", "    18.6938457489013671875000000" /)
  !!! Initialize group511
  group511 = (/ "  -101.5127410888671875000000000", "    -0.0179923716932535171508789", "  -117.8855972290039062500000000" /)
  !!! Initialize group512
  group512 = (/ "   -19.8214092254638671875000000", "    10.1320972442626953125000000", "   -28.4057254791259765625000000" /)
  !!! Initialize group513
  group513 = (/ "   -11.8403682708740234375000000", "   -75.8980102539062500000000000", "    24.2915725708007812500000000" /)
  !!! Initialize group514
  group514 = (/ "    30.5411624908447265625000000", "     0.5749164223670959472656250", "   -13.1290006637573242187500000" /)
  !!! Initialize group515
  group515 = (/ "    -0.6923452615737915039062500", "   -13.9328193664550781250000000", "   111.6203002929687500000000000" /)
  !!! Initialize group516
  group516 = (/ "    19.4504966735839843750000000", "    11.9156007766723632812500000", "    61.1820144653320312500000000" /)
  !!! Initialize group517
  group517 = (/ "   -45.7950935363769531250000000", "    60.2502975463867187500000000", "    -0.4572566151618957519531250" /)
  !!! Initialize group518
  group518 = (/ "  -292.8406677246093750000000000", "    27.4125995635986328125000000", "   102.4188385009765625000000000" /)
  !!! Initialize group519
  group519 = (/ "   138.4201812744140625000000000", "   -36.4753265380859375000000000", "    -0.0257080085575580596923828" /)
  !!! Initialize group520
  group520 = (/ "  -314.2190246582031250000000000", "    -0.3125451207160949707031250", "    25.6798324584960937500000000" /)
  !!! Initialize group521
  group521 = (/ "    37.8702774047851562500000000", "    35.2775917053222656250000000", "   -20.4614868164062500000000000" /)
  !!! Initialize group522
  group522 = (/ "    42.7303810119628906250000000", "   -89.7565460205078125000000000", "   -66.4326782226562500000000000" /)
  !!! Initialize group523
  group523 = (/ "     0.2108666747808456420898438", "    65.4235687255859375000000000", "     2.0129773616790771484375000" /)
  !!! Initialize group524
  group524 = (/ "    15.3302230834960937500000000", "   -36.5615386962890625000000000", "    11.6189775466918945312500000" /)
  !!! Initialize group525
  group525 = (/ "   -17.3288211822509765625000000", "    45.5038146972656250000000000", "   -25.8467102050781250000000000" /)
  !!! Initialize group526
  group526 = (/ "    32.5735168457031250000000000", "    -7.8193607330322265625000000", "     0.1132819205522537231445312" /)
  !!! Initialize group527
  group527 = (/ "    44.5867500305175781250000000", "  -136.5746307373046875000000000", "    14.4930849075317382812500000" /)
  !!! Initialize group528
  group528 = (/ "    22.3403835296630859375000000", "   -34.0997047424316406250000000", "    -0.7323873639106750488281250" /)
  !!! Initialize group529
  group529 = (/ "     0.2055898159742355346679688", "     4.6328935623168945312500000", "  -381.0494384765625000000000000" /)
  !!! Initialize group530
  group530 = (/ "    15.8923015594482421875000000", "   -13.0499277114868164062500000", "   -20.8074989318847656250000000" /)
  !!! Initialize group531
  group531 = (/ "    25.4710121154785156250000000", "     0.8431490063667297363281250", "    49.4736099243164062500000000" /)
  !!! Initialize group532
  group532 = (/ "    99.3757400512695312500000000", "   -38.0871162414550781250000000", "     0.0927167236804962158203125" /)
  !!! Initialize group533
  group533 = (/ "   -29.7139797210693359375000000", "    38.5539550781250000000000000", "   -22.4485092163085937500000000" /)
  !!! Initialize group534
  group534 = (/ "     1.5271998643875122070312500", "    25.8802299499511718750000000", "   -15.6384792327880859375000000" /)
  !!! Initialize group535
  group535 = (/ "    24.5906333923339843750000000", "    -4.9453458786010742187500000", "   -34.7239036560058593750000000" /)
  !!! Initialize group536
  group536 = (/ "   132.0373687744140625000000000", "   -18.5481777191162109375000000", "    -0.4963376224040985107421875" /)
  !!! Initialize group537
  group537 = (/ "    -1.1457446813583374023437500", "   -18.3569869995117187500000000", "   -21.0444545745849609375000000" /)
  !!! Initialize group538
  group538 = (/ "   -10.6500444412231445312500000", "     0.3708468377590179443359375", "   -45.6926879882812500000000000" /)
  !!! Initialize group539
  group539 = (/ "     0.3061894178390502929687500", "    27.9908905029296875000000000", "    48.0973968505859375000000000" /)
  !!! Initialize group540
  group540 = (/ "   135.7647705078125000000000000", "  -153.9987030029296875000000000", "    -0.1684860289096832275390625" /)
  !!! Initialize group541
  group541 = (/ "   115.8568878173828125000000000", "    42.0343627929687500000000000", "    77.0647430419921875000000000" /)
  !!! Initialize group542
  group542 = (/ "    21.8208599090576171875000000", "   611.5994873046875000000000000", "    -0.0007610797765664756298065" /)
  !!! Initialize group543
  group543 = (/ "    48.6595001220703125000000000", "    14.9804430007934570312500000", "   -23.4594402313232421875000000" /)
  !!! Initialize group544
  group544 = (/ "     0.4132305085659027099609375", "    77.0705108642578125000000000", "    44.5726509094238281250000000" /)
  !!! Initialize group545
  group545 = (/ "    59.9604148864746093750000000", "   -11.9567432403564453125000000", "   104.7325286865234375000000000" /)
  !!! Initialize group546
  group546 = (/ "   -45.6517181396484375000000000", "    -1.4094988107681274414062500", "   -52.7171592712402343750000000" /)
  !!! Initialize group547
  group547 = (/ "    47.0664100646972656250000000", "    15.7639617919921875000000000", "    81.9553756713867187500000000" /)
  !!! Initialize group548
  group548 = (/ "    20.8823184967041015625000000", "   -69.2942199707031250000000000", "  -128.6629486083984375000000000" /)
  !!! Initialize group549
  group549 = (/ "    -9.4325065612792968750000000", "    80.4179153442382812500000000", "    -0.3992967605590820312500000" /)
  !!! Initialize group550 ! Number 0 is the referance number for good copy of basic code, I hope.
  group550 = (/ "   -89.1743927001953125000000000", "    21.1029586791992187500000000", "    -3.6894621849060058593750000" /)
  !!! Initialize group551
  group551 = (/ "     1.4402530193328857421875000", "    79.2408981323242187500000000", "    15.5651779174804687500000000" /)
  !!! Initialize group552
  group552 = (/ "   -60.0328483581542968750000000", "    21.7958641052246093750000000", "    36.3442497253417968750000000" /)
  !!! Initialize group553
  group553 = (/ "   -50.3155670166015625000000000", "    -0.2521749138832092285156250", "     5.9277782440185546875000000" /)
  !!! Initialize group554
  group554 = (/ "   -80.8154449462890625000000000", "   101.2734146118164062500000000", "     9.6157913208007812500000000" /)
  !!! Initialize group555
  group555 = (/ "     5.2542290687561035156250000", "   -97.2876739501953125000000000", "    50.8931236267089843750000000" /)
  !!! Initialize group556
  group556 = (/ "    20.9994888305664062500000000", "   134.9649810791015625000000000", "    32.6596412658691406250000000" /)
  !!! Initialize group557
  group557 = (/ "   -32.3393898010253906250000000", "     0.9106814861297607421875000", "   -23.2258911132812500000000000" /)
  !!! Initialize group558
  group558 = (/ "    16.6775531768798828125000000", "    89.7456893920898437500000000", "   -21.6509246826171875000000000" /)
  !!! Initialize group559
  group559 = (/ "    32.4749641418457031250000000", "   -69.5679702758789062500000000", "   -12.5982398986816406250000000" /)
  !!! Initialize group560
  group560 = (/ "     0.5970923304557800292968750", "   -20.2531528472900390625000000", "   -27.6984157562255859375000000" /)
  !!! Initialize group561
  group561 = (/ "    51.6873855590820312500000000", "    46.3761520385742187500000000", "    37.3594284057617187500000000" /)
  !!! Initialize group562
  group562 = (/ "     1.2770924568176269531250000", "   -10.3378562927246093750000000", "    32.1322822570800781250000000" /)
  !!! Initialize group563
  group563 = (/ "    -8.9356336593627929687500000", "    37.1628150939941406250000000", "   -41.7293128967285156250000000" /)
  !!! Initialize group564
  group564 = (/ "    -3.5339298248291015625000000", "    13.6046352386474609375000000", "   -49.6312065124511718750000000" /)
  !!! Initialize group565
  group565 = (/ "    31.8981266021728515625000000", "  -167.7325592041015625000000000", "    74.3758392333984375000000000" /)
  !!! Initialize group566
  group566 = (/ "    41.6724433898925781250000000", "   -27.0540485382080078125000000", "   -58.6706848144531250000000000" /)
  !!! Initialize group567
  group567 = (/ "   -23.2962837219238281250000000", "    -3.3340661525726318359375000", "     0.8109382987022399902343750" /)
  !!! Initialize group568
  group568 = (/ "    -0.0884635969996452331542969", "    24.3935680389404296875000000", "   -23.8172760009765625000000000" /)
  !!! Initialize group569
  group569 = (/ "     7.6974706649780273437500000", "     9.6798839569091796875000000", "    56.9679222106933593750000000" /)
  !!! Initialize group570
  group570 = (/ "     2.5958769321441650390625000", "    26.0906372070312500000000000", "  -341.6004638671875000000000000" /)
  !!! Initialize group571
  group571 = (/ "     8.1566963195800781250000000", "    13.4059715270996093750000000", "   -39.4765014648437500000000000" /)
  !!! Initialize group572
  group572 = (/ "    61.6795539855957031250000000", "   141.3729705810546875000000000", "   -17.0931205749511718750000000" /)
  !!! Initialize group573
  group573 = (/ "     5.6998887062072753906250000", "    55.6124992370605468750000000", "    33.2183647155761718750000000" /)
  !!! Initialize group574
  group574 = (/ "    47.8435783386230468750000000", "   -20.5824127197265625000000000", "     4.9458789825439453125000000" /)
  !!! Initialize group575
  group575 = (/ "    73.8112411499023437500000000", "    -0.0579504035413265228271484", "    33.8264198303222656250000000" /)
  !!! Initialize group576
  group576 = (/ "   -45.8266334533691406250000000", "   -10.9210090637207031250000000", "    -1.6529996395111083984375000" /)
  !!! Initialize group577
  group577 = (/ "   -46.4710388183593750000000000", "   107.0674972534179687500000000", "    19.0274543762207031250000000" /)
  !!! Initialize group578
  group578 = (/ "     0.2766930758953094482421875", "  -159.1920318603515625000000000", "    62.0674400329589843750000000" /)
  !!! Initialize group579
  group579 = (/ "   -58.9067573547363281250000000", "    37.2872238159179687500000000", "    22.1194019317626953125000000" /)
  !!! Initialize group580
  group580 = (/ "    -3.4303376674652099609375000", "    -4.0636458396911621093750000", "     0.6002280116081237792968750" /)
  !!! Initialize group581
  group581 = (/ "   -11.6107397079467773437500000", "   -22.9721565246582031250000000", "   -11.7364664077758789062500000" /)
  !!! Initialize group582
  group582 = (/ "     5.2091741561889648437500000", "     6.6188263893127441406250000", "     0.7930486202239990234375000" /)
  !!! Initialize group583
  group583 = (/ "   -97.8785781860351562500000000", "    -1.2598384618759155273437500", "     4.2447209358215332031250000" /)
  !!! Initialize group584
  group584 = (/ "    -0.7824238538742065429687500", "  -365.8229370117187500000000000", "   559.8977661132812500000000000" /)
  !!! Initialize group585
  group585 = (/ "  -193.4522705078125000000000000", "    16.8255405426025390625000000", "    34.5417747497558593750000000" /)
  !!! Initialize group586
  group586 = (/ "     3.3357768058776855468750000", "   -45.7679061889648437500000000", "    77.3702468872070312500000000" /)
  !!! Initialize group587
  group587 = (/ "    -0.8111428618431091308593750", "    63.2497673034667968750000000", "   -12.5939416885375976562500000" /)
  !!! Initialize group588
  group588 = (/ "   -86.8454666137695312500000000", "   -20.7713871002197265625000000", "     1.3349814414978027343750000" /)
  !!! Initialize group589
  group589 = (/ "   124.4016647338867187500000000", "  -295.2802429199218750000000000", "   109.2679519653320312500000000" /)
  !!! Initialize group590
  group590 = (/ "    32.0317344665527343750000000", "    33.6332359313964843750000000", "    41.9673728942871093750000000" /)
  !!! Initialize group591
  group591 = (/ "     0.3443606793880462646484375", "  -220.7043457031250000000000000", "   181.9621582031250000000000000" /)
  !!! Initialize group592
  group592 = (/ "      9.348297119140625000000000", "    -0.1795494109392166137695312", "    12.4235887527465820312500000" /)
  !!! Initialize group593
  group593 = (/ "    -2.9171681404113769531250000", "   201.4342803955078125000000000", "  -127.7359848022460937500000000" /)
  !!! Initialize group594
  group594 = (/ "    -0.3798739016056060791015625", "    -3.7064864635467529296875000", "    -8.7415447235107421875000000" /)
  !!! Initialize group595
  group595 = (/ "     2.1425900459289550781250000", "    30.0323162078857421875000000", "    -0.1591096967458724975585938" /)
  !!! Initialize group596
  group596 = (/ "     5.1479725837707519531250000", "     0.2048212736845016479492188", "  -546.8626708984375000000000000" /)
  !!! Initialize group597
  group597 = (/ "   503.3018798828125000000000000", "   -23.9673652648925781250000000", "     2.6789209842681884765625000" /)
  !!! Initialize group598
  group598 = (/ "     1.4386912584304809570312500", "    31.2036056518554687500000000", "    78.9260482788085937500000000" /)
  !!! Initialize group599
  group599 = (/ "   -55.5553894042968750000000000", "    23.6150627136230468750000000", "    -3.4607746601104736328125000" /)
  !!! Initialize group600
  group600 = (/ "     3.8234162330627441406250000", "   -19.1550769805908203125000000", "     0.2541502118110656738281250" /)
  !!! Initialize group601
  group601 = (/ "   -22.7520408630371093750000000", "    60.7687339782714843750000000", "    -9.2941818237304687500000000" /)
  !!! Initialize group602
  group602 = (/ "    -6.1746912002563476562500000", "    68.9497222900390625000000000", "    -0.1960991919040679931640625" /)
  !!! Initialize group603
  group603 = (/ "   -13.2603120803833007812500000", "    36.7080726623535156250000000", "    61.4153900146484375000000000" /)
  !!! Initialize group604
  group604 = (/ "    35.1325645446777343750000000", "   -16.3850097656250000000000000", "   -30.3295860290527343750000000" /)
  !!! Initialize group605
  group605 = (/ "   -44.6236076354980468750000000", "    -0.9983226656913757324218750", "    69.3123703002929687500000000" /)
  !!! Initialize group606
  group606 = (/ "     2.9170103073120117187500000", "     4.2962093353271484375000000", "   -39.9143066406250000000000000" /)
  !!! Initialize group607
  group607 = (/ "    21.9765453338623046875000000", "     1.2245119810104370117187500", "    75.1705932617187500000000000" /)
  !!! Initialize group608
  group608 = (/ "    -1.3009217977523803710937500", "     3.4083569049835205078125000", "     1.1918805837631225585937500" /)
  !!! Initialize group609
  group609 = (/ "    -0.7246114611625671386718750", "    24.3626728057861328125000000", "   -45.1672363281250000000000000" /)
  !!! Initialize group610
  group610 = (/ "    13.3215742111206054687500000", "    11.7072401046752929687500000", "     3.9310605525970458984375000" /)
  !!! Initialize group611
  group611 = (/ "   -34.0951118469238281250000000", "    74.7712860107421875000000000", "     0.4176770150661468505859375" /)
  !!! Initialize group612
  group612 = (/ "  -113.2227096557617187500000000", "    -0.5074236989021301269531250", "    45.7432250976562500000000000" /)
  !!! Initialize group613
  group613 = (/ "     4.4658827781677246093750000", "   -13.6787805557250976562500000", "    -3.3041293621063232421875000" /)
  !!! Initialize group614
  group614 = (/ "    41.5264434814453125000000000", "    -0.8819719552993774414062500", "    82.1496200561523437500000000" /)
  !!! Initialize group615
  group615 = (/ "    -3.4480679035186767578125000", "   -42.4629364013671875000000000", "   -26.8363246917724609375000000" /)
  !!! Initialize group616
  group616 = (/ "     0.1323864012956619262695312", "    -9.7529973983764648437500000", "   -28.5946578979492187500000000" /)
  !!! Initialize group617
  group617 = (/ "    -0.3916375041007995605468750", "   -31.7519054412841796875000000", "   -80.5280685424804687500000000" /)
  !!! Initialize group618
  group618 = (/ "    59.9815483093261718750000000", "   -90.5259475708007812500000000", "    58.4354209899902343750000000" /)
  !!! Initialize group619
  group619 = (/ "     0.3218069076538085937500000", "    45.6938133239746093750000000", "   -23.8217887878417968750000000" /)
  !!! Initialize group620
  group620 = (/ "    27.7938175201416015625000000", "    16.6217689514160156250000000", "     3.0408051013946533203125000" /)
  !!! Initialize group621
  group621 = (/ "     0.9445974230766296386718750", "   -15.7902021408081054687500000", "    46.9128761291503906250000000" /)
  !!! Initialize group622
  group622 = (/ "    -9.4347267150878906250000000", "    43.1147270202636718750000000", "    33.2141304016113281250000000" /)
  !!! Initialize group623
  group623 = (/ "   -25.7122516632080078125000000", "    13.5443649291992187500000000", "    82.7281188964843750000000000" /)
  !!! Initialize group624
  group624 = (/ "   -67.5029678344726562500000000", "    65.2431945800781250000000000", "     8.3030023574829101562500000" /)
  !!! Initialize group625
  group625 = (/ "    -4.4909505844116210937500000", "    34.2271156311035156250000000", "    34.0956840515136718750000000" /)
  !!! Initialize group626
  group626 = (/ "   -27.5894145965576171875000000", "    79.2952575683593750000000000", "    63.7781524658203125000000000" /)
  !!! Initialize group627
  group627 = (/ "  -117.6966629028320312500000000", "    85.1675186157226562500000000", "   -41.7150535583496093750000000" /)
  !!! Initialize group628
  group628 = (/ "  -162.3717651367187500000000000", "    -0.1882674545049667358398438", "   141.5951995849609375000000000" /)
  !!! Initialize group629
  group629 = (/ "   -55.0873222351074218750000000", "    -6.6095366477966308593750000", "   -56.5723571777343750000000000" /)
  !!! Initialize group630
  group630 = (/ "   188.8988800048828125000000000", "    -3.8761856555938720703125000", "   -37.9080085754394531250000000" /)
  !!! Initialize group631
  group631 = (/ "     0.2673723697662353515625000", "    10.9418344497680664062500000", "    12.4819087982177734375000000" /)
  !!! Initialize group632
  group632 = (/ "     7.0816211700439453125000000", "   -76.4385986328125000000000000", "   -61.9963378906250000000000000" /)
  !!! Initialize group633
  group633 = (/ "   -57.5595855712890625000000000", "    24.4647254943847656250000000", "     0.4268178045749664306640625" /)
  !!! Initialize group634
  group634 = (/ "   -60.1466827392578125000000000", "   -17.9785861968994140625000000", "   104.9983825683593750000000000" /)
  !!! Initialize group635
  group635 = (/ "   -32.0672607421875000000000000", "     7.1969046592712402343750000", "   -47.2329406738281250000000000" /)
  !!! Initialize group636
  group636 = (/ "   -18.2179832458496093750000000", "    -0.5375862121582031250000000", "    38.9747810363769531250000000" /)
  !!! Initialize group637
  group637 = (/ "     0.1940393894910812377929688", "    12.3146791458129882812500000", "   -16.0822429656982421875000000" /)
  !!! Initialize group638
  group638 = (/ "     2.7726774215698242187500000", "    42.0180702209472656250000000", "    44.0117111206054687500000000" /)
  !!! Initialize group639
  group639 = (/ "    93.9536972045898437500000000", "    -0.6905312538146972656250000", "  -250.6919097900390625000000000" /)
  !!! Initialize group640 ! Slight change to code, referance is number 0 of this group
  group640 = (/ "    -2.1948745250701904296875000", "    -7.3116908073425292968750000", "   -56.5265312194824218750000000" /)
  !!! Initialize group641
  group641 = (/ "    16.2494678497314453125000000", "    70.8816680908203125000000000", "    -4.7852969169616699218750000" /)
  !!! Initialize group642
  group642 = (/ "    -4.0783286094665527343750000", "    45.8223152160644531250000000", "     0.4480729103088378906250000" /)
  !!! Initialize group643
  group643 = (/ "    -5.9123201370239257812500000", "     0.2981518507003784179687500", "   -23.9428424835205078125000000" /)
  !!! Initialize group644
  group644 = (/ "    32.6330795288085937500000000", "    -3.6469905376434326171875000", "    82.3753814697265625000000000" /)
  !!! Initialize group645
  group645 = (/ "   -86.1164398193359375000000000", "    10.2986450195312500000000000", "    35.5970649719238281250000000" /)
  !!! Initialize group646
  group646 = (/ "   -40.0598983764648437500000000", "    11.4020967483520507812500000", "     2.0596742630004882812500000" /)
  !!! Initialize group647
  group647 = (/ "   -14.1401910781860351562500000", "   -86.2851791381835937500000000", "    -2.6759245395660400390625000" /)
  !!! Initialize group648
  group648 = (/ "     5.2756028175354003906250000", "     0.3194530606269836425781250", "    -5.3063454627990722656250000" /)
  !!! Initialize group649
  group649 = (/ "   -26.9201755523681640625000000", "   -34.8786697387695312500000000", "     6.0110464096069335937500000" /)
  !!! Initialize group650
  group650 = (/ "     0.4757286012172698974609375", "    22.1852188110351562500000000", "     3.0533022880554199218750000" /)
  !!! Initialize group651
  group651 = (/ "    -7.7892522811889648437500000", "    14.8443222045898437500000000", "    67.9110260009765625000000000" /)
  !!! Initialize group652
  group652 = (/ "  -404.1284484863281250000000000", "   320.7852783203125000000000000", "     0.1707501411437988281250000" /)
  !!! Initialize group653
  group653 = (/ "   -85.1487274169921875000000000", "   -55.3936462402343750000000000", "   -42.9854354858398437500000000" /)
  !!! Initialize group654
  group654 = (/ "   -54.5584411621093750000000000", "     6.9456596374511718750000000", "    32.2699089050292968750000000" /)
  !!! Initialize group655
  group655 = (/ "    54.8816261291503906250000000", "    75.7612304687500000000000000", "   -40.9125823974609375000000000" /)
  !!! Initialize group656
  group656 = (/ "   -36.9660224914550781250000000", "     3.9343793392181396484375000", "   -11.3672075271606445312500000" /)
  !!! Initialize group657
  group657 = (/ "     4.2897372245788574218750000", "   -79.4924087524414062500000000", "   -51.7891159057617187500000000" /)
  !!! Initialize group658
  group658 = (/ "   -49.3894577026367187500000000", "    87.1401443481445312500000000", "    32.8385276794433593750000000" /)
  !!! Initialize group659
  group659 = (/ "    11.4309616088867187500000000", "    47.1476783752441406250000000", "   116.6623001098632812500000000" /)
  !!! Initialize group660
  group660 = (/ "    73.7497406005859375000000000", "   -59.6439781188964843750000000", "     3.8278586864471435546875000" /)
  !!! Initialize group661
  group661 = (/ "   -70.2093505859375000000000000", "   -70.9820938110351562500000000", "    44.3699607849121093750000000" /)
  !!! Initialize group662
  group662 = (/ "   -91.4553527832031250000000000", "    66.6772232055664062500000000", "   -10.8017883300781250000000000" /)
  !!! Initialize group663
  group663 = (/ "   -47.1089134216308593750000000", "   -78.6309051513671875000000000", "     3.6411471366882324218750000" /)
  !!! Initialize group664
  group664 = (/ "     0.5326554179191589355468750", "    -8.2153081893920898437500000", "     1.8755137920379638671875000" /)
  !!! Initialize group665
  group665 = (/ "   -17.8790397644042968750000000", "    26.9499473571777343750000000", "   -29.5976276397705078125000000" /)
  !!! Initialize group666
  group666 = (/ "     6.0045461654663085937500000", "   -13.0921144485473632812500000", "   -53.7069969177246093750000000" /)
  !!! Initialize group667
  group667 = (/ "    32.6560478210449218750000000", "   -25.7787666320800781250000000", "   -18.9329109191894531250000000" /)
  !!! Initialize group668
  group668 = (/ "   -14.1516075134277343750000000", "    -2.7053258419036865234375000", "    30.9102458953857421875000000" /)
  !!! Initialize group669
  group669 = (/ "    -8.9097747802734375000000000", "    -4.7785506248474121093750000", "    25.6667823791503906250000000" /)
  !!! Initialize group670
  group670 = (/ "   -24.9180107116699218750000000", "    64.4639282226562500000000000", "    -1.1492229700088500976562500" /)
  !!! Initialize group671
  group671 = (/ "   -61.8806381225585937500000000", "     5.0673403739929199218750000", "    -0.3916520476341247558593750" /)
  !!! Initialize group672
  group672 = (/ "    54.7309455871582031250000000", "    -4.9646677970886230468750000", "    20.3521194458007812500000000" /)
  !!! Initialize group673
  group673 = (/ "   150.7095642089843750000000000", "   -79.3528137207031250000000000", "    -0.6115289330482482910156250" /)
  !!! Initialize group674
  group674 = (/ "     0.6833798885345458984375000", "    -2.0520169734954833984375000", "     3.4687988758087158203125000" /)
  !!! Initialize group675
  group675 = (/ "    -3.4820916652679443359375000", "    -0.4347148537635803222656250", "    25.0611228942871093750000000" /)
  !!! Initialize group676
  group676 = (/ "    35.6791992187500000000000000", "    -7.2766923904418945312500000", "    14.6233882904052734375000000" /)
  !!! Initialize group677
  group677 = (/ "     2.9138951301574707031250000", "   -17.7940845489501953125000000", "    26.2862129211425781250000000" /)
  !!! Initialize group678
  group678 = (/ "    76.1835403442382812500000000", "    67.6672668457031250000000000", "    10.1807670593261718750000000" /)
  !!! Initialize group679
  group679 = (/ "     0.0415266752243041992187500", "    64.8297729492187500000000000", "    80.8097076416015625000000000" /)
  !!! Initialize group680
  group680 = (/ "     8.3795261383056640625000000", "   -22.2195625305175781250000000", "    20.6253433227539062500000000" /)
  !!! Initialize group681
  group681 = (/ "   -19.9914855957031250000000000", "     3.0661931037902832031250000", "   -57.7969894409179687500000000" /)
  !!! Initialize group682
  group682 = (/ "    21.2868671417236328125000000", "    29.7328376770019531250000000", "    -2.7437009811401367187500000" /)
  !!! Initialize group683
  group683 = (/ "   -58.3876419067382812500000000", "   124.4706115722656250000000000", "   104.6605148315429687500000000" /)
  !!! Initialize group684
  group684 = (/ "    49.2914924621582031250000000", "    11.1598701477050781250000000", "     0.9161295294761657714843750" /)
  !!! Initialize group685
  group685 = (/ "   -58.9566993713378906250000000", "   -25.4754486083984375000000000", "   -32.0426940917968750000000000" /)
  !!! Initialize group686
  group686 = (/ "    -3.1990597248077392578125000", "   -24.2070808410644531250000000", "    -4.1684894561767578125000000" /)
  !!! Initialize group687
  group687 = (/ "     8.6495342254638671875000000", "    83.8079605102539062500000000", "    75.9496459960937500000000000" /)
  !!! Initialize group688
  group688 = (/ "  -270.5521545410156250000000000", "     4.4076576232910156250000000", "   -48.6949996948242187500000000" /)
  !!! Initialize group689
  group689 = (/ "   -17.8033790588378906250000000", "   -45.5298423767089843750000000", "    73.8648681640625000000000000" /)
  !!! Initialize group690
  group690 = (/ "    41.1118164062500000000000000", "   -42.0459403991699218750000000", "    13.0795907974243164062500000" /)
  !!! Initialize group691
  group691 = (/ "   -33.1146850585937500000000000", "     0.7759781479835510253906250", "    60.1766014099121093750000000" /)
  !!! Initialize group692
  group692 = (/ "    -8.4609851837158203125000000", "     5.9427528381347656250000000", "    47.5940551757812500000000000" /)
  !!! Initialize group693
  group693 = (/ "    -5.8494815826416015625000000", "   -31.6677684783935546875000000", "   -72.4002990722656250000000000" /)
  !!! Initialize group694
  group694 = (/ "     7.8722748756408691406250000", "   -56.3785858154296875000000000", "     0.2761161923408508300781250" /)
  !!! Initialize group695
  group695 = (/ "    93.6744766235351562500000000", "   -42.4758224487304687500000000", "    50.7872085571289062500000000" /)
  !!! Initialize group696
  group696 = (/ "    24.9466762542724609375000000", "    19.1217441558837890625000000", "   -55.0785484313964843750000000" /)
  !!! Initialize group697
  group697 = (/ "    -0.9555768966674804687500000", "    13.8482189178466796875000000", "   -50.1975173950195312500000000" /)
  !!! Initialize group698
  group698 = (/ "    33.5734481811523437500000000", "    71.2173309326171875000000000", "    44.4588737487792968750000000" /)
  !!! Initialize group699
  group699 = (/ "    -4.1903023719787597656250000", "   -97.2174453735351562500000000", "     0.5854910016059875488281250" /)
  !!! Initialize group700
  group700 = (/ "   144.1841430664062500000000000", "   -18.4320335388183593750000000", "  -129.3336944580078125000000000" /)
  !!! Initialize group701
  group701 = (/ "    -0.8676889538764953613281250", "   -14.2277870178222656250000000", "   -33.6867485046386718750000000" /)
  !!! Initialize group702
  group702 = (/ "   -55.9597930908203125000000000", "   -93.6045608520507812500000000", "   -89.6288146972656250000000000" /)
  !!! Initialize group703
  group703 = (/ "    -3.6491003036499023437500000", "   -28.7942543029785156250000000", "    36.0104522705078125000000000" /)
  !!! Initialize group704
  group704 = (/ "    92.9233779907226562500000000", "     8.3269224166870117187500000", "    20.3352870941162109375000000" /)
  !!! Initialize group705
  group705 = (/ "   -50.5497322082519531250000000", "   -11.4043149948120117187500000", "    44.2135314941406250000000000" /)
  !!! Initialize group706
  group706 = (/ "   -61.6125679016113281250000000", "    51.8295860290527343750000000", "    18.6197109222412109375000000" /)
  !!! Initialize group707
  group707 = (/ "    10.2757806777954101562500000", "    -7.4053130149841308593750000", "   -42.0952911376953125000000000" /)
  !!! Initialize group708
  group708 = (/ "   -67.7992858886718750000000000", "  -115.3305664062500000000000000", "    -1.4623051881790161132812500" /)
  !!! Initialize group709
  group709 = (/ "    56.0316925048828125000000000", "   -42.9759559631347656250000000", "    26.8957118988037109375000000" /)
  !!! Initialize group710
  group710 = (/ "   207.4154968261718750000000000", "    15.0799169540405273437500000", "   -51.9906120300292968750000000" /)
  !!! Initialize group711
  group711 = (/ "   -37.1347885131835937500000000", "    64.8704147338867187500000000", "    -1.8628982305526733398437500" /)
  !!! Initialize group712
  group712 = (/ "    10.6410064697265625000000000", "    23.1029663085937500000000000", "    46.1716728210449218750000000" /)
  !!! Initialize group713
  group713 = (/ "   -27.2071056365966796875000000", "    34.0920524597167968750000000", "    31.2010288238525390625000000" /)
  !!! Initialize group714
  group714 = (/ "   -55.4411430358886718750000000", "    39.5792732238769531250000000", "     1.7845871448516845703125000" /)
  !!! Initialize group715
  group715 = (/ "    26.8287868499755859375000000", "   -48.1561355590820312500000000", "    64.2564468383789062500000000" /)
  !!! Initialize group716
  group716 = (/ "   -13.4931879043579101562500000", "   -16.1510295867919921875000000", "    27.6859703063964843750000000" /)
  !!! Initialize group717
  group717 = (/ "     6.4483480453491210937500000", "    68.4860000610351562500000000", "    32.9542579650878906250000000" /)
  !!! Initialize group718
  group718 = (/ "    21.7178859710693359375000000", "    38.4127731323242187500000000", "   -51.2288360595703125000000000" /)
  !!! Initialize group719
  group719 = (/ "   -41.0234107971191406250000000", "    -0.7730766534805297851562500", "   -36.3097267150878906250000000" /)
  !!! Initialize group720
  group720 = (/ "    65.1372909545898437500000000", "    39.5986633300781250000000000", "    -0.0241740942001342773437500" /)
  !!! Initialize group721
  group721 = (/ "   -46.0598983764648437500000000", "    15.9387311935424804687500000", "    58.9886627197265625000000000" /)
  !!! Initialize group722
  group722 = (/ "   -81.1034011840820312500000000", "  -118.7648544311523437500000000", "    36.6212615966796875000000000" /)
  !!! Initialize group723
  group723 = (/ "    18.5261707305908203125000000", "   -24.5322170257568359375000000", "    72.2219696044921875000000000" /)
  !!! Initialize group724
  group724 = (/ "   -26.2139225006103515625000000", "   -22.6191825866699218750000000", "     9.1027145385742187500000000" /)
  !!! Initialize group725
  group725 = (/ "     7.2318782806396484375000000", "   -44.5435180664062500000000000", "  -104.7337341308593750000000000" /)
  !!! Initialize group726
  group726 = (/ "   -36.3279113769531250000000000", "    -1.2438652515411376953125000", "    -0.3467665910720825195312500" /)
  !!! Initialize group727
  group727 = (/ "    -3.0437963008880615234375000", "    -7.4289894104003906250000000", "   124.9763336181640625000000000" /)
  !!! Initialize group728
  group728 = (/ "    45.6751327514648437500000000", "   -23.4639644622802734375000000", "   -11.7173881530761718750000000" /)
  !!! Initialize group729
  group729 = (/ "   -22.2003459930419921875000000", "   126.9287719726562500000000000", "     4.6912589073181152343750000" /)
  !!! Initialize group730
  group730 = (/ "   -12.3712749481201171875000000", "    -8.9378709793090820312500000", "    81.5193405151367187500000000" /)
  !!! Initialize group731
  group731 = (/ "   -30.6585674285888671875000000", "   -29.9264945983886718750000000", "    -1.9576545953750610351562500" /)
  !!! Initialize group732
  group732 = (/ "    37.1735115051269531250000000", "   -59.5114784240722656250000000", "     1.7001472711563110351562500" /)
  !!! Initialize group733
  group733 = (/ "    29.8081588745117187500000000", "   -10.5548124313354492187500000", "    48.6153030395507812500000000" /)
  !!! Initialize group734
  group734 = (/ "     3.1848788261413574218750000", "    50.7334823608398437500000000", "    11.5084495544433593750000000" /)
  !!! Initialize group735
  group735 = (/ "    81.6229705810546875000000000", "    -3.7388272285461425781250000", "    -8.6608142852783203125000000" /)
  !!! Initialize group736
  group736 = (/ "   -24.0147285461425781250000000", "    34.4201583862304687500000000", "     3.9821286201477050781250000" /)
  !!! Initialize group737
  group737 = (/ "    -1.7484680414199829101562500", "   -47.2494888305664062500000000", "    -9.9791088104248046875000000" /)
  !!! Initialize group738
  group738 = (/ "   -61.9648132324218750000000000", "    12.5137481689453125000000000", "    26.9129199981689453125000000" /)
  !!! Initialize group739
  group739 = (/ "    65.6385955810546875000000000", "    63.4995346069335937500000000", "    -6.2545180320739746093750000" /)
  !!! Initialize group740
  group740 = (/ "   -39.3048057556152343750000000", "   -48.5284614562988281250000000", "    -0.2679470777511596679687500" /)
  !!! Initialize group741
  group741 = (/ "  -125.0399246215820312500000000", "    71.5126190185546875000000000", "   -28.8238830566406250000000000" /)
  !!! Initialize group742
  group742 = (/ "    55.6513290405273437500000000", "   -79.2880096435546875000000000", "   -73.6306838989257812500000000" /)
  !!! Initialize group743
  group743 = (/ "    -8.4653339385986328125000000", "   -16.5744037628173828125000000", "   -31.0521774291992187500000000" /)
  !!! Initialize group744
  group744 = (/ "    46.9275321960449218750000000", "    44.7370529174804687500000000", "    55.4412536621093750000000000" /)
  !!! Initialize group745
  group745 = (/ "   -77.2772369384765625000000000", "   -57.7370681762695312500000000", "    -4.9347095489501953125000000" /)
  !!! Initialize group746
  group746 = (/ "   -26.9494361877441406250000000", "    13.7854595184326171875000000", "     0.8349795937538146972656250" /)
  !!! Initialize group747
  group747 = (/ "    17.2675952911376953125000000", "   -30.2565326690673828125000000", "     5.7655744552612304687500000" /)
  !!! Initialize group748
  group748 = (/ "    41.9038810729980468750000000", "   -18.3986015319824218750000000", "    -5.9198770523071289062500000" /)
  !!! Initialize group749
  group749 = (/ "   -58.2753372192382812500000000", "    36.1893348693847656250000000", "    34.2457275390625000000000000" /)
  !!! Initialize group750
  group750 = (/ "    42.3129348754882812500000000", "   -59.9568557739257812500000000", "   -27.9920177459716796875000000" /)
  !!! Initialize group751
  group751 = (/ "    40.2702751159667968750000000", "   -26.5833816528320312500000000", "   -14.1613349914550781250000000" /)
  !!! Initialize group752
  group752 = (/ "   -55.3460998535156250000000000", "     6.0531277656555175781250000", "   -25.8518905639648437500000000" /)
  !!! Initialize group753
  group753 = (/ "   -39.5287094116210937500000000", "     9.3465404510498046875000000", "    55.2295532226562500000000000" /)
  !!! Initialize group754
  group754 = (/ "    28.6357135772705078125000000", "    -3.0278027057647705078125000", "    -8.5978946685791015625000000" /)
  !!! Initialize group755
  group755 = (/ "   -35.9718551635742187500000000", "    51.7903976440429687500000000", "   -63.0334396362304687500000000" /)
  !!! Initialize group756
  group756 = (/ "    27.7756404876708984375000000", "   -94.3706741333007812500000000", "     5.8146057128906250000000000" /)
  !!! Initialize group757
  group757 = (/ "   -50.3593406677246093750000000", "    13.8171014785766601562500000", "    -3.3697850704193115234375000" /)
  !!! Initialize group758
  group758 = (/ "    57.6061897277832031250000000", "   -13.8733634948730468750000000", "    -6.8195490837097167968750000" /)
  !!! Initialize group759
  group759 = (/ "    36.0307884216308593750000000", "   -22.7342453002929687500000000", "    67.0445327758789062500000000" /)
  !!! Initialize group760
  group760 = (/ "   -20.5784626007080078125000000", "     3.7889573574066162109375000", "    15.2052011489868164062500000" /)
  !!! Initialize group761
  group761 = (/ "    -2.3652570247650146484375000", "   -18.6114940643310546875000000", "    25.7991962432861328125000000" /)
  !!! Initialize group762
  group762 = (/ "     1.8542104959487915039062500", "   -10.1279878616333007812500000", "    89.5985488891601562500000000" /)
  !!! Initialize group763
  group763 = (/ "    83.6798171997070312500000000", "   -32.5388603210449218750000000", "    -0.9073346853256225585937500" /)
  !!! Initialize group764
  group764 = (/ "    29.3105468750000000000000000", "    -2.6189475059509277343750000", "   -50.9206352233886718750000000" /)
  !!! Initialize group765
  group765 = (/ "    33.9635772705078125000000000", "     8.5189847946166992187500000", "    91.9777069091796875000000000" /)
  !!! Initialize group766
  group766 = (/ "    38.0396919250488281250000000", "   -10.8009719848632812500000000", "   -37.4182701110839843750000000" /)
  !!! Initialize group767
  group767 = (/ "    18.7731380462646484375000000", "    23.6035041809082031250000000", "    -3.8932597637176513671875000" /)
  !!! Initialize group768
  group768 = (/ "   -11.9224166870117187500000000", "   -17.9106101989746093750000000", "    16.0260620117187500000000000" /)
  !!! Initialize group769
  group769 = (/ "   -33.6003189086914062500000000", "    12.9313850402832031250000000", "   -19.1542758941650390625000000" /)
  !!! Initialize group770
  group770 = (/ "   -16.0731315612792968750000000", "     8.6933326721191406250000000", "    23.0934963226318359375000000" /)
  !!! Initialize group771
  group771 = (/ "   -34.1626701354980468750000000", "    12.7112598419189453125000000", "    44.2143936157226562500000000" /)
  !!! Initialize group772
  group772 = (/ "     0.6095517277717590332031250", "   -98.2718276977539062500000000", "   -12.7303485870361328125000000" /)
  !!! Initialize group773
  group773 = (/ "    71.9968872070312500000000000", "    39.1042060852050781250000000", "    46.1612052917480468750000000" /)
  !!! Initialize group774
  group774 = (/ "    -3.3397355079650878906250000", "    14.5756864547729492187500000", "    24.4237194061279296875000000" /)
  !!! Initialize group775
  group775 = (/ "    21.5837306976318359375000000", "   -90.7498626708984375000000000", "   -47.0860824584960937500000000" /)
  !!! Initialize group776
  group776 = (/ "   170.8885040283203125000000000", "    72.7314147949218750000000000", "   -13.8102359771728515625000000" /)
  !!! Initialize group777
  group777 = (/ "   -18.8423004150390625000000000", "   -42.2125167846679687500000000", "   -48.8341026306152343750000000" /)
  !!! Initialize group778
  group778 = (/ "   143.8637847900390625000000000", "   -13.9776239395141601562500000", "   -39.9557228088378906250000000" /)
  !!! Initialize group779
  group779 = (/ "    59.5915336608886718750000000", "   -40.8685379028320312500000000", "   -14.7057323455810546875000000" /)
  !!! Initialize group780
  group780 = (/ "     8.1254358291625976562500000", "    29.7666835784912109375000000", "    18.7129764556884765625000000" /)
  !!! Initialize group781
  group781 = (/ "    56.8661422729492187500000000", "   -23.7086906433105468750000000", "    30.7460308074951171875000000" /)
  !!! Initialize group782
  group782 = (/ "     0.6772980093955993652343750", "     4.7177147865295410156250000", "   -11.4376821517944335937500000" /)
  !!! Initialize group783
  group783 = (/ "   254.0236968994140625000000000", "    63.1193618774414062500000000", "   -65.1861801147460937500000000" /)
  !!! Initialize group784
  group784 = (/ "    38.5840263366699218750000000", "    -5.6205687522888183593750000", "  -132.8510589599609375000000000" /)
  !!! Initialize group785
  group785 = (/ "   -11.0879259109497070312500000", "    77.6993026733398437500000000", "    51.3548545837402343750000000" /)
  !!! Initialize group786
  group786 = (/ "    33.7617301940917968750000000", "    13.1586151123046875000000000", "     1.2584172487258911132812500" /)
  !!! Initialize group787
  group787 = (/ "    74.5533905029296875000000000", "   -16.8885555267333984375000000", "   -52.8038673400878906250000000" /)
  !!! Initialize group788
  group788 = (/ "   -80.3772125244140625000000000", "    -7.8733725547790527343750000", "    43.5150909423828125000000000" /)
  !!! Initialize group789
  group789 = (/ "   -43.5915184020996093750000000", "    51.3377685546875000000000000", "     6.1044378280639648437500000" /)
  !!! Initialize group790
  group790 = (/ "    32.2105636596679687500000000", "   -40.2380676269531250000000000", "    16.3515415191650390625000000" /)
  !!! Initialize group791
  group791 = (/ "   -14.1713056564331054687500000", "    11.4619388580322265625000000", "   -67.3811721801757812500000000" /)
  !!! Initialize group792
  group792 = (/ "   -19.3735427856445312500000000", "   -23.9119949340820312500000000", "   -23.4542217254638671875000000" /)
  !!! Initialize group793
  group793 = (/ "  -155.1369323730468750000000000", "   -69.3250274658203125000000000", "   -31.8335437774658203125000000" /)
  !!! Initialize group794
  group794 = (/ "  -145.2751922607421875000000000", "   106.0570526123046875000000000", "     3.3928995132446289062500000" /)
  !!! Initialize group795
  group795 = (/ "   -76.6195449829101562500000000", "    74.5420074462890625000000000", "   -25.2057266235351562500000000" /)
  !!! Initialize group796
  group796 = (/ "    26.6037654876708984375000000", "    55.2656860351562500000000000", "     9.6858243942260742187500000" /)
  !!! Initialize group797
  group797 = (/ "   -25.4712600708007812500000000", "   -45.5262069702148437500000000", "    17.6628475189208984375000000" /)
  !!! Initialize group798
  group798 = (/ "   -69.8654937744140625000000000", "    23.9035472869873046875000000", "    74.5082550048828125000000000" /)
  !!! Initialize group799
  group799 = (/ "    12.7321348190307617187500000", "    -4.8132772445678710937500000", "   -26.0290851593017578125000000" /)
  !!! Initialize group800
  group800 = (/ "   -49.4433441162109375000000000", "   -38.3398437500000000000000000", "    42.4000625610351562500000000" /)
  !!! Initialize group801
  group801 = (/ "    -2.9429876804351806640625000", "    12.0308094024658203125000000", "    27.6722660064697265625000000" /)
  !!! Initialize group802
  group802 = (/ "    25.9937591552734375000000000", "   -41.7574005126953125000000000", "    40.6898689270019531250000000" /)
  !!! Initialize group803
  group803 = (/ "    -4.6419229507446289062500000", "   -81.0054168701171875000000000", "    -6.8207130432128906250000000" /)
  !!! Initialize group804
  group804 = (/ "    36.3598327636718750000000000", "    40.7199211120605468750000000", "  -138.2588653564453125000000000" /)
  !!! Initialize group805
  group805 = (/ "    41.0509719848632812500000000", "     2.4162986278533935546875000", "    33.7451820373535156250000000" /)
  !!! Initialize group806
  group806 = (/ "   -33.1298942565917968750000000", "   -34.1194572448730468750000000", "   -38.7774085998535156250000000" /)
  !!! Initialize group807
  group807 = (/ "     3.4646761417388916015625000", "   -52.6824874877929687500000000", "   -29.4099597930908203125000000" /)
  !!! Initialize group808
  group808 = (/ "    -7.8452358245849609375000000", "    28.3693580627441406250000000", "   133.0297698974609375000000000" /)
  !!! Initialize group809
  group809 = (/ "    51.1129570007324218750000000", "    25.1604404449462890625000000", "     0.2609722018241882324218750" /)
  !!! Initialize group810
  group810 = (/ "    31.0946636199951171875000000", "    77.2394409179687500000000000", "   -21.4443149566650390625000000" /)
  !!! Initialize group811
  group811 = (/ "   -44.0928421020507812500000000", "   -20.6963233947753906250000000", "   -40.8533020019531250000000000" /)
  !!! Initialize group812
  group812 = (/ "   -26.6958751678466796875000000", "    82.1400070190429687500000000", "    -1.7482188940048217773437500" /)
  !!! Initialize group813
  group813 = (/ "   -58.0376777648925781250000000", "    30.3276233673095703125000000", "    -9.2180356979370117187500000" /)
  !!! Initialize group814
  group814 = (/ "    59.9981384277343750000000000", "   -89.6389846801757812500000000", "    13.7360000610351562500000000" /)
  !!! Initialize group815
  group815 = (/ "   -36.6419525146484375000000000", "   -63.5050010681152343750000000", "   -11.8524160385131835937500000" /)
  !!! Initialize group816
  group816 = (/ "    -9.3848237991333007812500000", "   -23.5942802429199218750000000", "    62.7159881591796875000000000" /)
  !!! Initialize group817
  group817 = (/ "   -72.1441574096679687500000000", "   143.3223876953125000000000000", "   -56.5924720764160156250000000" /)
  !!! Initialize group818
  group818 = (/ "    92.2010040283203125000000000", "   -33.4067649841308593750000000", "     8.9032421112060546875000000" /)
  !!! Initialize group819
  group819 = (/ "    73.3560638427734375000000000", "   -47.8708190917968750000000000", "   -34.6200218200683593750000000" /)
  !!! Initialize group820
  group820 = (/ "    35.9698257446289062500000000", "    16.2477397918701171875000000", "    67.7888870239257812500000000" /)
  !!! Initialize group821
  group821 = (/ "    59.4437065124511718750000000", "   -21.2465190887451171875000000", "   -23.5485649108886718750000000" /)
  !!! Initialize group822
  group822 = (/ "   -29.0052604675292968750000000", "   -22.3412551879882812500000000", "   -26.9419021606445312500000000" /)
  !!! Initialize group823
  group823 = (/ "   -11.5894794464111328125000000", "    32.1458320617675781250000000", "     7.1923804283142089843750000" /)
  !!! Initialize group824
  group824 = (/ "   -67.4684753417968750000000000", "    87.6907806396484375000000000", "    15.6754207611083984375000000" /)
  !!! Initialize group825
  group825 = (/ "    32.4939079284667968750000000", "  -168.4820404052734375000000000", "     6.0548176765441894531250000" /)
  !!! Initialize group826
  group826 = (/ "   -81.1532516479492187500000000", "   -82.4266357421875000000000000", "   -50.7443847656250000000000000" /)
  !!! Initialize group827
  group827 = (/ "    18.4020252227783203125000000", "   -41.8177642822265625000000000", "    79.8005065917968750000000000" /)
  !!! Initialize group828
  group828 = (/ "    10.6642427444458007812500000", "    -1.3061956167221069335937500", "     0.8131524324417114257812500" /)
  !!! Initialize group829
  group829 = (/ "     2.9159369468688964843750000", "     0.4045362174510955810546875", "    -9.2760887145996093750000000" /)
  !!! Initialize group830
  group830 = (/ "     0.3412440121173858642578125", "   -55.8332366943359375000000000", "     4.6466422080993652343750000" /)
  !!! Initialize group831
  group831 = (/ "    17.0090236663818359375000000", "   -12.9504661560058593750000000", "     6.6233654022216796875000000" /)
  !!! Initialize group832
  group832 = (/ "    50.4696083068847656250000000", "    -1.3858928680419921875000000", "    76.3216400146484375000000000" /)
  !!! Initialize group833
  group833 = (/ "    77.2056350708007812500000000", "   138.7184753417968750000000000", "   -18.0123939514160156250000000" /)
  !!! Initialize group834
  group834 = (/ "    18.4306602478027343750000000", "     8.2600898742675781250000000", "    39.0185394287109375000000000" /)
  !!! Initialize group835
  group835 = (/ "    50.1542816162109375000000000", "    80.9049758911132812500000000", "   -30.9222507476806640625000000" /)
  !!! Initialize group836
  group836 = (/ "    21.3835659027099609375000000", "    26.5570735931396484375000000", "   -34.0561332702636718750000000" /)
  !!! Initialize group837
  group837 = (/ "    41.8282585144042968750000000", "   -44.3122901916503906250000000", "    48.2538604736328125000000000" /)
  !!! Initialize group838
  group838 = (/ "    74.1047515869140625000000000", "    -4.3246951103210449218750000", "   -66.0760879516601562500000000" /)
  !!! Initialize group839
  group839 = (/ "    55.1580734252929687500000000", "   -44.1904182434082031250000000", "    -0.8085645437240600585937500" /)
  !!! Initialize group840
  group840 = (/ "   -19.1737575531005859375000000", "    66.2003402709960937500000000", "    -3.9942064285278320312500000" /)
  !!! Initialize group841
  group841 = (/ "    64.1629180908203125000000000", "   -20.2026729583740234375000000", "    34.9679412841796875000000000" /)
  !!! Initialize group842
  group842 = (/ "   -33.7865066528320312500000000", "   -24.2520065307617187500000000", "   -48.1289024353027343750000000" /)
  !!! Initialize group843
  group843 = (/ "    44.7373123168945312500000000", "    -4.3418345451354980468750000", "     0.5506907105445861816406250" /)
  !!! Initialize group844
  group844 = (/ "   -21.4088077545166015625000000", "  -169.8173065185546875000000000", "   120.5573043823242187500000000" /)
  !!! Initialize group845
  group845 = (/ "   -37.1247901916503906250000000", "   -59.2273406982421875000000000", "   -30.1308403015136718750000000" /)
  !!! Initialize group846
  group846 = (/ "    -8.2587585449218750000000000", "    77.6602783203125000000000000", "   -58.5546722412109375000000000" /)
  !!! Initialize group847
  group847 = (/ "   117.4925994873046875000000000", "    11.1429491043090820312500000", "   125.9089431762695312500000000" /)
  !!! Initialize group848
  group848 = (/ "    35.1548156738281250000000000", "   -91.5786056518554687500000000", "    16.7541637420654296875000000" /)
  !!! Initialize group849
  group849 = (/ "   106.7365417480468750000000000", "    10.7195692062377929687500000", "    87.3418579101562500000000000" /)
  !!! Initialize group850
  group850 = (/ "  -122.0542907714843750000000000", "    -1.6548595428466796875000000", "     2.7595996856689453125000000" /)
  !!! Initialize group851
  group851 = (/ "    90.8707046508789062500000000", "   -27.0512313842773437500000000", "   -18.9558849334716796875000000" /)
  !!! Initialize group852
  group852 = (/ "    20.3702411651611328125000000", "    26.0934696197509765625000000", "    -8.8212394714355468750000000" /)
  !!! Initialize group853
  group853 = (/ "    20.0058517456054687500000000", "   -16.5663166046142578125000000", "    81.0624313354492187500000000" /)
  !!! Initialize group854
  group854 = (/ "    -2.8141720294952392578125000", "    21.9449329376220703125000000", "   -23.8478965759277343750000000" /)
  !!! Initialize group855
  group855 = (/ "    21.5932445526123046875000000", "    -5.0147199630737304687500000", "    10.8725395202636718750000000" /)
  !!! Initialize group856
  group856 = (/ "   -17.0533142089843750000000000", "    35.7088012695312500000000000", "    20.7092418670654296875000000" /)
  !!! Initialize group857
  group857 = (/ "    67.0704269409179687500000000", "    11.4560546875000000000000000", "   -52.4455261230468750000000000" /)
  !!! Initialize group858
  group858 = (/ "    27.5711975097656250000000000", "   -11.8046245574951171875000000", "    72.3536376953125000000000000" /)
  !!! Initialize group859
  group859 = (/ "   -96.5565261840820312500000000", "    42.0167884826660156250000000", "   103.5610122680664062500000000" /)
  !!! Initialize group860
  group860 = (/ "   -29.2706413269042968750000000", "   -62.3830184936523437500000000", "   -20.8873767852783203125000000" /)
  !!! Initialize group861
  group861 = (/ "   -19.6701602935791015625000000", "   162.9569549560546875000000000", "   -28.2724552154541015625000000" /)
  !!! Initialize group862
  group862 = (/ "   -55.9764060974121093750000000", "    16.2094688415527343750000000", "   -48.7628974914550781250000000" /)
  !!! Initialize group863
  group863 = (/ "    36.8266525268554687500000000", "   -37.2699775695800781250000000", "   107.6498184204101562500000000" /)
  !!! Initialize group864
  group864 = (/ "    78.8347625732421875000000000", "    40.4540748596191406250000000", "  -175.7154541015625000000000000" /)
  !!! Initialize group865
  group865 = (/ "    17.3579177856445312500000000", "    19.9487915039062500000000000", "    82.8446350097656250000000000" /)
  !!! Initialize group866
  group866 = (/ "    14.2368946075439453125000000", "    62.4630966186523437500000000", "   -22.5960788726806640625000000" /)
  !!! Initialize group867
  group867 = (/ "   -39.8753433227539062500000000", "   -19.7759151458740234375000000", "    65.2692871093750000000000000" /)
  !!! Initialize group868
  group868 = (/ "   -26.9905395507812500000000000", "    22.0818061828613281250000000", "    80.5661087036132812500000000" /)
  !!! Initialize group869
  group869 = (/ "    81.0667266845703125000000000", "   -14.5935926437377929687500000", "    18.2197990417480468750000000" /)
  !!! Initialize group870
  group870 = (/ "    -9.0169115066528320312500000", "    -0.5314721465110778808593750", "    -7.6222634315490722656250000" /)
  !!! Initialize group871
  group871 = (/ "    -6.3018240928649902343750000", "    73.3679275512695312500000000", "   -13.6160678863525390625000000" /)
  !!! Initialize group872
  group872 = (/ "    -5.3786759376525878906250000", "    81.1533660888671875000000000", "   -94.2995452880859375000000000" /)
  !!! Initialize group873
  group873 = (/ "     9.5463724136352539062500000", "    -5.1962862014770507812500000", "  -130.6643371582031250000000000" /)
  !!! Initialize group874
  group874 = (/ "   -51.1588897705078125000000000", "   -35.8189239501953125000000000", "   -43.8132171630859375000000000" /)
  !!! Initialize group875
  group875 = (/ "    14.4375562667846679687500000", "  -170.9572753906250000000000000", "    62.8046264648437500000000000" /)
  !!! Initialize group876
  group876 = (/ "    31.7007980346679687500000000", "   -11.8217363357543945312500000", "    48.6538047790527343750000000" /)
  !!! Initialize group877
  group877 = (/ "   -26.8650684356689453125000000", "    26.5640525817871093750000000", "   -11.1023683547973632812500000" /)
  !!! Initialize group878
  group878 = (/ "    28.9107093811035156250000000", "   -63.4584350585937500000000000", "    -5.0236935615539550781250000" /)
  !!! Initialize group879
  group879 = (/ "   -19.8957862854003906250000000", "   -56.4518547058105468750000000", "    -1.0814586877822875976562500" /)
  !!! Initialize group880
  group880 = (/ "     8.0049524307250976562500000", "   -24.6642456054687500000000000", "    18.5366439819335937500000000" /)
  !!! Initialize group881
  group881 = (/ "    41.0845031738281250000000000", "    14.4544982910156250000000000", "   -25.7978878021240234375000000" /)
  !!! Initialize group882
  group882 = (/ "   -27.4229850769042968750000000", "   -13.7669830322265625000000000", "  -166.6335906982421875000000000" /)
  !!! Initialize group883
  group883 = (/ "    13.4697914123535156250000000", "   -10.2417612075805664062500000", "    -4.9396924972534179687500000" /)
  !!! Initialize group884
  group884 = (/ "    91.2774810791015625000000000", "   -43.7804107666015625000000000", "     1.0712567567825317382812500" /)
  !!! Initialize group885
  group885 = (/ "   -29.1409339904785156250000000", "   -10.6452283859252929687500000", "   -45.2006149291992187500000000" /)
  !!! Initialize group886
  group886 = (/ "   -39.6804313659667968750000000", "   -24.4657077789306640625000000", "    98.4115219116210937500000000" /)
  !!! Initialize group887
  group887 = (/ "    44.0432243347167968750000000", "    94.0227279663085937500000000", "     0.2661356329917907714843750" /)
  !!! Initialize group888
  group888 = (/ "    -4.2874612808227539062500000", "   125.8994293212890625000000000", "     5.0276727676391601562500000" /)
  !!! Initialize group889
  group889 = (/ "    47.3063735961914062500000000", "    -0.1969414353370666503906250", "   -76.2583999633789062500000000" /)
  !!! Initialize group890
  group890 = (/ "    45.4954261779785156250000000", "   -42.6118316650390625000000000", "   -86.7791748046875000000000000" /)
  !!! Initialize group891
  group891 = (/ "   -77.3913879394531250000000000", "    33.2841529846191406250000000", "   -19.3024787902832031250000000" /)
  !!! Initialize group892
  group892 = (/ "   -37.9204483032226562500000000", "    43.7957725524902343750000000", "   -72.5664978027343750000000000" /)
  !!! Initialize group893
  group893 = (/ "     6.1385889053344726562500000", "    53.4768676757812500000000000", "   -21.5028419494628906250000000" /)
  !!! Initialize group894
  group894 = (/ "   -63.2167739868164062500000000", "   -10.7492837905883789062500000", "  -110.1342163085937500000000000" /)
  !!! Initialize group895
  group895 = (/ "    30.6377372741699218750000000", "  -205.1422729492187500000000000", "   376.1277465820312500000000000" /)
  !!! Initialize group896
  group896 = (/ "    13.7214813232421875000000000", "   -27.0114421844482421875000000", "     0.6983668208122253417968750" /)
  !!! Initialize group897
  group897 = (/ "     3.6796364784240722656250000", "  -108.8512954711914062500000000", "    -2.7286145687103271484375000" /)
  !!! Initialize group898
  group898 = (/ "    99.5261688232421875000000000", "    -1.1898702383041381835937500", "   185.6011810302734375000000000" /)
  !!! Initialize group899
  group899 = (/ "    83.4015884399414062500000000", "     5.8261561393737792968750000", "   107.1491241455078125000000000" /)
  !!! Initialize group900
  group900 = (/ "   -23.0774021148681640625000000", "    79.3131179809570312500000000", "   -13.4312801361083984375000000" /)
  !!! Initialize group901
  group901 = (/ "     7.7097802162170410156250000", "    -4.3363137245178222656250000", "    17.2373962402343750000000000" /)
  !!! Initialize group902
  group902 = (/ "   -54.5952873229980468750000000", "   -30.3679637908935546875000000", "    52.4805068969726562500000000" /)
  !!! Initialize group903
  group903 = (/ "    36.2720870971679687500000000", "   -86.1749114990234375000000000", "    83.4108428955078125000000000" /)
  !!! Initialize group904
  group904 = (/ "    -6.1957750320434570312500000", "    57.1703071594238281250000000", "    37.9887199401855468750000000" /)
  !!! Initialize group905
  group905 = (/ "    30.0400848388671875000000000", "    21.6360969543457031250000000", "   -62.0234642028808593750000000" /)
  !!! Initialize group906
  group906 = (/ "    19.5673713684082031250000000", "    85.9761810302734375000000000", "   -29.3460597991943359375000000" /)
  !!! Initialize group907
  group907 = (/ "    15.0570964813232421875000000", "     0.1438223421573638916015625", "    99.6663742065429687500000000" /)
  !!! Initialize group908
  group908 = (/ "   -27.7021465301513671875000000", "   -57.7971992492675781250000000", "    25.0681915283203125000000000" /)
  !!! Initialize group909
  group909 = (/ "    20.9016532897949218750000000", "   -32.3413047790527343750000000", "   -46.3636512756347656250000000" /)
  !!! Initialize group910
  group910 = (/ "   -23.5449466705322265625000000", "   -47.7488861083984375000000000", "    -9.0961675643920898437500000" /)
  !!! Initialize group911
  group911 = (/ "   102.5455322265625000000000000", "     3.1723632812500000000000000", "    57.9800224304199218750000000" /)
  !!! Initialize group912
  group912 = (/ "    17.4803619384765625000000000", "     4.4125485420227050781250000", "    47.2104568481445312500000000" /)
  !!! Initialize group913
  group913 = (/ "    23.0667419433593750000000000", "     1.0630060434341430664062500", "   -94.6456527709960937500000000" /)
  !!! Initialize group914
  group914 = (/ "   -11.2910957336425781250000000", "    40.1608772277832031250000000", "    -0.8087577819824218750000000" /)
  !!! Initialize group915
  group915 = (/ "     0.6842977404594421386718750", "    -1.3389401435852050781250000", "   -86.6165084838867187500000000" /)
  !!! Initialize group916
  group916 = (/ "    91.1179275512695312500000000", "    -2.9271237850189208984375000", "    -0.2937663197517395019531250" /)
  !!! Initialize group917
  group917 = (/ "     0.6230944991111755371093750", "    -3.8133804798126220703125000", "   171.2473297119140625000000000" /)
  !!! Initialize group918
  group918 = (/ "    -3.7778637409210205078125000", "    25.2428913116455078125000000", "   -17.0625839233398437500000000" /)
  !!! Initialize group919
  group919 = (/ "    19.0890350341796875000000000", "   -33.3337898254394531250000000", "   -19.7723178863525390625000000" /)
  !!! Initialize group920
  group920 = (/ "    15.8895616531372070312500000", "    -6.1081767082214355468750000", "   -29.0288562774658203125000000" /)
  !!! Initialize group921
  group921 = (/ "   -44.7427635192871093750000000", "    31.0390777587890625000000000", "    -6.6198363304138183593750000" /)
  !!! Initialize group922
  group922 = (/ "    63.0667190551757812500000000", "   -31.5623703002929687500000000", "   -78.1298751831054687500000000" /)
  !!! Initialize group923
  group923 = (/ "   165.4195098876953125000000000", "   -65.8217010498046875000000000", "  -140.3492126464843750000000000" /)
  !!! Initialize group924
  group924 = (/ "    28.2085819244384765625000000", "   -33.7315673828125000000000000", "   -48.5352592468261718750000000" /)
  !!! Initialize group925
  group925 = (/ "    27.9491043090820312500000000", "    -1.2674149274826049804687500", "    75.4525527954101562500000000" /)
  !!! Initialize group926
  group926 = (/ "     9.6146421432495117187500000", "    71.8569259643554687500000000", "   -15.9883079528808593750000000" /)
  !!! Initialize group927
  group927 = (/ "     4.5847935676574707031250000", "    -9.6074676513671875000000000", "    -5.4385290145874023437500000" /)
  !!! Initialize group928
  group928 = (/ "    10.6998033523559570312500000", "    84.5732955932617187500000000", "   -42.5713005065917968750000000" /)
  !!! Initialize group929
  group929 = (/ "    30.2966823577880859375000000", "     0.6463451981544494628906250", "   -63.5175933837890625000000000" /)
  !!! Initialize group930
  group930 = (/ "    43.7833557128906250000000000", "    11.8135175704956054687500000", "    28.3424510955810546875000000" /)
  !!! Initialize group931
  group931 = (/ "    -0.2674255371093750000000000", "   175.7741546630859375000000000", "    -1.3142763376235961914062500" /)
  !!! Initialize group932
  group932 = (/ "  -158.1544036865234375000000000", "     0.6873761415481567382812500", "   113.3647384643554687500000000" /)
  !!! Initialize group933
  group933 = (/ "    16.9437942504882812500000000", "    -3.6341762542724609375000000", "   -42.0744056701660156250000000" /)
  !!! Initialize group934
  group934 = (/ "   -79.5302200317382812500000000", "   -22.2033271789550781250000000", "    37.7919731140136718750000000" /)
  !!! Initialize group935
  group935 = (/ "   -29.8386459350585937500000000", "   -48.6656913757324218750000000", "    -7.3105931282043457031250000" /)
  !!! Initialize group936
  group936 = (/ "   -73.9699172973632812500000000", "   -39.6085853576660156250000000", "    68.8619155883789062500000000" /)
  !!! Initialize group937
  group937 = (/ "   -14.7320356369018554687500000", "    59.5541458129882812500000000", "   -58.0574150085449218750000000" /)
  !!! Initialize group938
  group938 = (/ "    13.6077823638916015625000000", "   -56.6528053283691406250000000", "    -0.3534438014030456542968750" /)
  !!! Initialize group939
  group939 = (/ "  -100.9916229248046875000000000", "  -113.8186340332031250000000000", "   -31.6733436584472656250000000" /)
  !!! Initialize group940
  group940 = (/ "   117.0913162231445312500000000", "    22.1692085266113281250000000", "    80.5909194946289062500000000" /)
  !!! Initialize group941
  group941 = (/ "   105.9729003906250000000000000", "    -1.8127399682998657226562500", "   -49.1588249206542968750000000" /)
  !!! Initialize group942
  group942 = (/ "    16.2935352325439453125000000", "   119.7908782958984375000000000", "   -80.4988479614257812500000000" /)
  !!! Initialize group943
  group943 = (/ "    52.5795822143554687500000000", "   -34.4497642517089843750000000", "    -7.7917571067810058593750000" /)
  !!! Initialize group944
  group944 = (/ "    42.7278900146484375000000000", "    13.9860553741455078125000000", "    86.1195907592773437500000000" /)
  !!! Initialize group945
  group945 = (/ "   -79.6959762573242187500000000", "    44.8263435363769531250000000", "    85.5736083984375000000000000" /)
  !!! Initialize group946
  group946 = (/ "   -13.6000900268554687500000000", "    13.9575567245483398437500000", "     0.8790987730026245117187500" /)
  !!! Initialize group947
  group947 = (/ "    26.5728588104248046875000000", "    62.8686294555664062500000000", "    23.9527378082275390625000000" /)
  !!! Initialize group948
  group948 = (/ "   -15.6309595108032226562500000", "   -73.4284515380859375000000000", "    33.9261589050292968750000000" /)
  !!! Initialize group949
  group949 = (/ "   -18.2353954315185546875000000", "   -13.1646966934204101562500000", "    14.3827772140502929687500000" /)
  !!! Initialize group950
  group950 = (/ "   -55.5954437255859375000000000", "    64.9773559570312500000000000", "   -36.1656036376953125000000000" /)
  !!! Initialize group951
  group951 = (/ "    67.0940780639648437500000000", "    16.9731788635253906250000000", "   -37.1994514465332031250000000" /)
  !!! Initialize group952
  group952 = (/ "    19.9977245330810546875000000", "   -34.3443069458007812500000000", "   -23.9402084350585937500000000" /)
  !!! Initialize group953
  group953 = (/ "    55.3697891235351562500000000", "    66.5263748168945312500000000", "   132.4614562988281250000000000" /)
  !!! Initialize group954
  group954 = (/ "     0.1175716444849967956542969", "   -95.7002410888671875000000000", "  -113.8932495117187500000000000" /)
  !!! Initialize group955
  group955 = (/ "  -168.5065612792968750000000000", "    77.3144073486328125000000000", "   192.5987396240234375000000000" /)
  !!! Initialize group956
  group956 = (/ "  -105.1002578735351562500000000", "   108.3490753173828125000000000", "    88.1124725341796875000000000" /)
  !!! Initialize group957
  group957 = (/ "   -42.3475532531738281250000000", "    42.2944908142089843750000000", "    -4.9513211250305175781250000" /)
  !!! Initialize group958
  group958 = (/ "   -12.1567001342773437500000000", "    64.1127700805664062500000000", "    69.2366638183593750000000000" /)
  !!! Initialize group959
  group959 = (/ "    19.2053794860839843750000000", "   -76.4596862792968750000000000", "   -27.5851345062255859375000000" /)
  !!! Initialize group960
  group960 = (/ "   -15.4033966064453125000000000", "   -16.6116390228271484375000000", "    71.1308898925781250000000000" /)
  !!! Initialize group961
  group961 = (/ "    53.1772384643554687500000000", "    -1.5897841453552246093750000", "   -51.4998703002929687500000000" /)
  !!! Initialize group962
  group962 = (/ "   -22.7798442840576171875000000", "   -36.6079216003417968750000000", "    16.6396389007568359375000000" /)
  !!! Initialize group963
  group963 = (/ "    -0.2200080156326293945312500", "    10.0125904083251953125000000", "    -1.8386520147323608398437500" /)
  !!! Initialize group964
  group964 = (/ "  -141.3775939941406250000000000", "    33.4450569152832031250000000", "   -16.1048183441162109375000000" /)
  !!! Initialize group965
  group965 = (/ "    23.5287723541259765625000000", "   -83.2974395751953125000000000", "    22.1224060058593750000000000" /)
  !!! Initialize group966
  group966 = (/ "     1.8186943531036376953125000", "    -0.0266499053686857223510742", "   -58.1189651489257812500000000" /)
  !!! Initialize group967
  group967 = (/ "    76.1068191528320312500000000", "    -1.7204986810684204101562500", "     0.4485702514648437500000000" /)
  !!! Initialize group968
  group968 = (/ "   -90.0128479003906250000000000", "    16.0332756042480468750000000", "    -0.9174594879150390625000000" /)
  !!! Initialize group969
  group969 = (/ "    12.9930095672607421875000000", "     1.3676871061325073242187500", "   -30.7674980163574218750000000" /)
  !!! Initialize group970
  group970 = (/ "     3.2006280422210693359375000", "   -34.5453300476074218750000000", "    41.2463073730468750000000000" /)
  !!! Initialize group971
  group971 = (/ "  -117.4012069702148437500000000", "    27.4637832641601562500000000", "    75.9476013183593750000000000" /)
  !!! Initialize group972
  group972 = (/ "    33.9608306884765625000000000", "    -0.7005319595336914062500000", "   -23.3908882141113281250000000" /)
  !!! Initialize group973
  group973 = (/ "   102.4991683959960937500000000", "   -27.8709430694580078125000000", "    56.5403213500976562500000000" /)
  !!! Initialize group974
  group974 = (/ "    74.8867568969726562500000000", "  -103.9227981567382812500000000", "    -2.7326827049255371093750000" /)
  !!! Initialize group975
  group975 = (/ "    18.3608837127685546875000000", "   -27.7660655975341796875000000", "    21.9269618988037109375000000" /)
  !!! Initialize group976
  group976 = (/ "    95.3199310302734375000000000", "    37.1469650268554687500000000", "    62.2071189880371093750000000" /)
  !!! Initialize group977
  group977 = (/ "   -35.0403633117675781250000000", "    68.8777313232421875000000000", "    78.3651657104492187500000000" /)
  !!! Initialize group978
  group978 = (/ "   -53.1468811035156250000000000", "   -37.3106155395507812500000000", "   100.6370849609375000000000000" /)
  !!! Initialize group979
  group979 = (/ "   -14.3802719116210937500000000", "   -41.6666603088378906250000000", "   -13.7212190628051757812500000" /)
  !!! Initialize group980
  group980 = (/ "    -7.8953046798706054687500000", "    66.8550109863281250000000000", "    36.3642082214355468750000000" /)
  !!! Initialize group981
  group981 = (/ "    45.6990203857421875000000000", "   180.1143951416015625000000000", "    58.4283485412597656250000000" /)
  !!! Initialize group982
  group982 = (/ "     9.6777200698852539062500000", "   -48.6849136352539062500000000", "   -33.4536590576171875000000000" /)
  !!! Initialize group983
  group983 = (/ "   -50.0408973693847656250000000", "    17.8047618865966796875000000", "  -102.9794692993164062500000000" /)
  !!! Initialize group984
  group984 = (/ "   -32.7686805725097656250000000", "    80.4323348999023437500000000", "    14.7473030090332031250000000" /)
  !!! Initialize group985
  group985 = (/ "    11.7470779418945312500000000", "    33.1037940979003906250000000", "   -32.2968635559082031250000000" /)
  !!! Initialize group986
  group986 = (/ "    -8.2373590469360351562500000", "    50.6986389160156250000000000", "   -49.2492103576660156250000000" /)
  !!! Initialize group987
  group987 = (/ "     2.6901323795318603515625000", "    32.2808952331542968750000000", "   -27.6049823760986328125000000" /)
  !!! Initialize group988
  group988 = (/ "    38.3909759521484375000000000", "    -9.4019470214843750000000000", "     2.9935154914855957031250000" /)
  !!! Initialize group989
  group989 = (/ "    62.6345138549804687500000000", "     0.4248530864715576171875000", "   -41.7035255432128906250000000" /)
  !!! Initialize group990
  group990 = (/ "    73.4911880493164062500000000", "  -139.2238311767578125000000000", "   -27.6482257843017578125000000" /)
  !!! Initialize group991
  group991 = (/ "   -25.5470867156982421875000000", "    57.0099601745605468750000000", "   -41.4248123168945312500000000" /)
  !!! Initialize group992
  group992 = (/ "     0.3076137602329254150390625", "    -6.2849407196044921875000000", "   126.4911727905273437500000000" /)
  !!! Initialize group993
  group993 = (/ "    18.9161128997802734375000000", "  -127.8687820434570312500000000", "    35.9587783813476562500000000" /)
  !!! Initialize group994
  group994 = (/ "    37.7312698364257812500000000", "   -85.3839645385742187500000000", "    38.6470680236816406250000000" /)
  !!! Initialize group995
  group995 = (/ "    20.4358634948730468750000000", "   -40.5485153198242187500000000", "    -1.8288956880569458007812500" /)
  !!! Initialize group996
  group996 = (/ "    -4.2885298728942871093750000", "   -36.5676116943359375000000000", "   -27.5670070648193359375000000" /)
  !!! Initialize group997
  group997 = (/ "   -34.7435455322265625000000000", "    13.2168455123901367187500000", "   -10.7662143707275390625000000" /)
  !!! Initialize group998
  group998 = (/ "     0.2092674374580383300781250", "     2.3484935760498046875000000", "   -12.5976133346557617187500000" /)
  !!! Initialize group999
  group999 = (/ "    22.7255744934082031250000000", "     7.2749791145324707031250000", "    27.4877738952636718750000000" /)
 &!!! Initialize group1000 ! and here is the 3rd shift too the left, on the 4th I will tab it out 4 spaces.
 group1000 = (/ "    44.8902511596679687500000000", "    23.9097900390625000000000000", "   -80.6100845336914062500000000" /)
 !!!! Initialize group1001
 group1001 = (/ "    47.7758636474609375000000000", "    24.5124511718750000000000000", "   -26.6113662719726562500000000" /)
 !!!! Initialize group1002
 group1002 = (/ "   -33.8009414672851562500000000", "   159.6150512695312500000000000", "    39.4644355773925781250000000" /)
 !!!! Initialize group1003
 group1003 = (/ "    -2.6296877861022949218750000", "  -200.0700836181640625000000000", "    91.1819839477539062500000000" /)
 !!!! Initialize group1004
 group1004 = (/ "    27.7640972137451171875000000", "   -18.7279682159423828125000000", "    -3.3075041770935058593750000" /)
 !!!! Initialize group1005
 group1005 = (/ "   -18.0667800903320312500000000", "   -20.7060184478759765625000000", "   141.3019256591796875000000000" /)
 !!!! Initialize group1006
 group1006 = (/ "   -61.4242095947265625000000000", "     3.9628429412841796875000000", "    26.8872604370117187500000000" /)
 !!!! Initialize group1007
 group1007 = (/ "    24.3521842956542968750000000", "    23.0037727355957031250000000", "     2.4930851459503173828125000" /)
 !!!! Initialize group1008
 group1008 = (/ "   -73.2267990112304687500000000", "  -131.1900177001953125000000000", "    -9.6860799789428710937500000" /)
 !!!! Initialize group1009
 group1009 = (/ "   -24.3897457122802734375000000", "    -6.5541992187500000000000000", "   -56.5532646179199218750000000" /)
 !!!! Initialize group1010
 group1010 = (/ "   -37.2053756713867187500000000", "   -31.0387077331542968750000000", "    -3.2529735565185546875000000" /)
 !!!! Initialize group1011
 group1011 = (/ "    29.8338375091552734375000000", "   -52.3225822448730468750000000", "    57.5141754150390625000000000" /)
 !!!! Initialize group1012
 group1012 = (/ "    21.6504993438720703125000000", "   -43.4955635070800781250000000", "    71.4641418457031250000000000" /)
 !!!! Initialize group1013
 group1013 = (/ "    90.7534027099609375000000000", "    -8.0180263519287109375000000", "    17.4278068542480468750000000" /)
 !!!! Initialize group1014
 group1014 = (/ "   -50.5581207275390625000000000", "   -26.5917835235595703125000000", "    36.7260551452636718750000000" /)
 !!!! Initialize group1015
 group1015 = (/ "   -47.6641769409179687500000000", "   -21.9396247863769531250000000", "    12.1523122787475585937500000" /)
 !!!! Initialize group1016
 group1016 = (/ "   -51.5435180664062500000000000", "   -14.0658044815063476562500000", "   -28.8743534088134765625000000" /)
 !!!! Initialize group1017
 group1017 = (/ "     7.9726300239562988281250000", "   115.4853210449218750000000000", "    19.6277332305908203125000000" /)
 !!!! Initialize group1018
 group1018 = (/ "    -5.4788732528686523437500000", "   -91.5872879028320312500000000", "    -6.3426733016967773437500000" /)
 !!!! Initialize group1019
 group1019 = (/ "     9.2927980422973632812500000", "    37.2448730468750000000000000", "    38.7913398742675781250000000" /)
 !!!! Initialize group1020
 group1020 = (/ "   -20.0584392547607421875000000", "    -2.6985967159271240234375000", "     6.5641846656799316406250000" /)
 !!!! Initialize group1021
 group1021 = (/ "   -81.1949996948242187500000000", "   -23.5835762023925781250000000", "    93.1897277832031250000000000" /)
 !!!! Initialize group1022
 group1022 = (/ "    -5.3476533889770507812500000", "   -72.1166839599609375000000000", "   -39.8285179138183593750000000" /)
 !!!! Initialize group1023
 group1023 = (/ "    22.6488876342773437500000000", "    35.0810775756835937500000000", "    44.8532447814941406250000000" /)
 !!!! Initialize group1024
 group1024 = (/ "   -58.5882987976074218750000000", "   -56.3493652343750000000000000", "   -24.9398784637451171875000000" /)
 !!!! Initialize group1025
 group1025 = (/ "    23.6844940185546875000000000", "    83.8701019287109375000000000", "    38.2165374755859375000000000" /)
 !!!! Initialize group1026
 group1026 = (/ "     0.4827798008918762207031250" ,"   -42.0051116943359375000000000", "    15.0907535552978515625000000" /)
 !!!! Initialize group1027
 group1027 = (/ "    -3.4617040157318115234375000", "   -29.8602104187011718750000000", "    34.6126708984375000000000000" /)
 !!!! Initialize group1028
 group1028 = (/ "    54.0318832397460937500000000", "   -77.4890213012695312500000000", "   -22.3153877258300781250000000" /)
 !!!! Initialize group1029
 group1029 = (/ "   -78.9394607543945312500000000", "     2.5261867046356201171875000", "   -84.6154785156250000000000000" /)
 !!!! Initialize group1030
 group1030 = (/ "    -4.3336110115051269531250000", "    -5.9674139022827148437500000", "    -2.5741362571716308593750000" /)
 !!!! Initialize group1031
 group1031 = (/ "    78.9810791015625000000000000", "    -9.0865697860717773437500000", "   182.2097015380859375000000000" /)
 !!!! Initialize group1032
 group1032 = (/ "   -63.6360778808593750000000000", "     1.9820294380187988281250000", "   -25.0940723419189453125000000" /)
 !!!! Initialize group1033
 group1033 = (/ "   140.2156982421875000000000000", "   -38.8077659606933593750000000", "    14.5157117843627929687500000" /)
 !!!! Initialize group1034
 group1034 = (/ "   -13.8084745407104492187500000", "    26.6129360198974609375000000", "   -84.1430358886718750000000000" /)
 !!!! Initialize group1035
 group1035 = (/ "   -39.1912803649902343750000000", "   -73.6867980957031250000000000", "    75.6059951782226562500000000" /)
 !!!! Initialize group1036
 group1036 = (/ "   -51.3569831848144531250000000", "   -15.1209659576416015625000000", "    82.1066741943359375000000000" /)
 !!!! Initialize group1037
 group1037 = (/ "     6.3425416946411132812500000", "   -13.1247205734252929687500000", "   -36.7605476379394531250000000" /)
 !!!! Initialize group1038
 group1038 = (/ "   -53.9675598144531250000000000", "    95.6215820312500000000000000", "   -23.9729194641113281250000000" /)
 !!!! Initialize group1039
 group1039 = (/ "    -0.8791544437408447265625000", "     7.9134345054626464843750000", "   -58.2574577331542968750000000" /)
 !!!! Initialize group1040
 group1040 = (/ "    21.3513679504394531250000000", "   -29.8496112823486328125000000", "   -15.9105396270751953125000000" /)
 !!!! Initialize group1041
 group1041 = (/ "    11.4689111709594726562500000", "    25.3361568450927734375000000", "    44.9525680541992187500000000" /)
 !!!! Initialize group1042
 group1042 = (/ "    22.1256465911865234375000000", "    -0.8501178026199340820312500", "    10.2916612625122070312500000" /)
 !!!! Initialize group1043
 group1043 = (/ "   -33.5526046752929687500000000", "     7.3202209472656250000000000", "    37.0226669311523437500000000" /)
 !!!! Initialize group1044
 group1044 = (/ "     4.2490687370300292968750000", "    -2.7834229469299316406250000", "    13.3262071609497070312500000" /)
 !!!! Initialize group1045
 group1045 = (/ "    38.4499206542968750000000000", "    92.7482223510742187500000000", "    55.9732666015625000000000000" /)
 !!!! Initialize group1046
 group1046 = (/ "     2.0915966033935546875000000", "    37.2106056213378906250000000", "   -31.4162559509277343750000000" /)
 !!!! Initialize group1047
 group1047 = (/ "    68.2200088500976562500000000", "    -0.2551234364509582519531250", "   -25.8417968750000000000000000" /)
 !!!! Initialize group1048
 group1048 = (/ "   -19.1148757934570312500000000", "    47.3269538879394531250000000", "    -3.4726176261901855468750000" /)
 !!!! Initialize group1049
 group1049 = (/ "   -21.7920360565185546875000000", "    -9.3236541748046875000000000", "   -88.0890579223632812500000000" /)
 !!!! Initialize group1050
 group1050 = (/ "    40.9753913879394531250000000", "    -9.2873935699462890625000000", "   -94.5843200683593750000000000" /)
 !!!! Initialize group1051
 group1051 = (/ "    13.9644641876220703125000000", "   -13.3916664123535156250000000", "   -24.5085792541503906250000000" /)
 !!!! Initialize group1052
 group1052 = (/ "   -23.1666622161865234375000000", "   164.5937805175781250000000000", "   -31.3400764465332031250000000" /)
 !!!! Initialize group1053
 group1053 = (/ "   -84.1900024414062500000000000", "    19.6018810272216796875000000", "   -17.5280113220214843750000000" /)
 !!!! Initialize group1054
 group1054 = (/ "   -18.3935794830322265625000000", "    30.2748622894287109375000000", "   -30.1504039764404296875000000" /)
 !!!! Initialize group1055
 group1055 = (/ "   -72.0306167602539062500000000", "    10.3102674484252929687500000", "    32.2846527099609375000000000" /)
 !!!! Initialize group1056
 group1056 = (/ "    20.4289340972900390625000000", "     6.0111913681030273437500000", "  -151.3867340087890625000000000" /)
 !!!! Initialize group1057
 group1057 = (/ "   -19.1801567077636718750000000", "    -2.8203673362731933593750000", "    59.7339897155761718750000000" /)
 !!!! Initialize group1058
 group1058 = (/ "   -50.8495979309082031250000000", "    -1.4760226011276245117187500", "   -71.5928344726562500000000000" /)
 !!!! Initialize group1059
 group1059 = (/ "   -24.5115947723388671875000000", "    86.9134674072265625000000000", "    -8.4395637512207031250000000" /)
 !!!! Initialize group1060
 group1060 = (/ "   -12.2681121826171875000000000", "     2.1906766891479492187500000", "   -39.3584747314453125000000000" /)
 !!!! Initialize group1061
 group1061 = (/ "    -9.9668359756469726562500000", "    17.1009902954101562500000000", "    43.7176780700683593750000000" /)
 !!!! Initialize group1062
 group1062 = (/ "    18.2137947082519531250000000", "    -9.2716751098632812500000000", "   -30.5183467864990234375000000" /)
 !!!! Initialize group1063
 group1063 = (/ "   -27.6733379364013671875000000", "   -11.8889064788818359375000000", "    46.8040199279785156250000000" /)
 !!!! Initialize group1064
 group1064 = (/ "    45.6400985717773437500000000", "     1.7203612327575683593750000", "    15.1469955444335937500000000" /)
 !!!! Initialize group1065
 group1065 = (/ "   -50.0106353759765625000000000", "   -53.1891937255859375000000000", "   -22.7000217437744140625000000" /)
 !!!! Initialize group1066
 group1066 = (/ "     7.5085091590881347656250000", "   109.1901092529296875000000000", "     3.5420515537261962890625000" /)
 !!!! Initialize group1067
 group1067 = (/ "   -66.1059188842773437500000000", "    39.9767189025878906250000000", "    -8.8944988250732421875000000" /)
 !!!! Initialize group1068
 group1068 = (/ "   -31.2813854217529296875000000", "    43.8680305480957031250000000", "   -42.1172103881835937500000000" /)
 !!!! Initialize group1069
 group1069 = (/ "    10.7583379745483398437500000", "     4.7225112915039062500000000", "     0.7965199947357177734375000" /)
 !!!! Initialize group1070
 group1070 = (/ "  -141.1039428710937500000000000", "     9.7062673568725585937500000", "    19.7742748260498046875000000" /)
 !!!! Initialize group1071
 group1071 = (/ "   -31.2819633483886718750000000", "     0.1040534973144531250000000", "   -26.4510955810546875000000000" /)
 !!!! Initialize group1072
 group1072 = (/ "   113.3002471923828125000000000", "    20.8565979003906250000000000", "    52.8698921203613281250000000" /)
 !!!! Initialize group1073
 group1073 = (/ "    19.7802619934082031250000000", "    -4.0024504661560058593750000", "    -0.0648660659790039062500000" /)
 !!!! Initialize group1074
 group1074 = (/ "   -58.2253379821777343750000000", "   105.2680587768554687500000000", "   -53.0723381042480468750000000" /)
 !!!! Initialize group1075
 group1075 = (/ "   112.9716186523437500000000000", "    27.3571949005126953125000000", "   -10.8986883163452148437500000" /)
 !!!! Initialize group1076
 group1076 = (/ "   -54.7278366088867187500000000", "   -96.3991241455078125000000000", "    97.2635726928710937500000000" /)
 !!!! Initialize group1077
 group1077 = (/ "    -1.2835355997085571289062500", "     0.9602329134941101074218750", "    26.1426925659179687500000000" /)
 !!!! Initialize group1078
 group1078 = (/ "    10.6920528411865234375000000", "    26.1491851806640625000000000", "    45.8265609741210937500000000" /)
 !!!! Initialize group1079
 group1079 = (/ "    -0.2748007774353027343750000", "    40.6710624694824218750000000", "   -20.8104324340820312500000000" /)
 !!!! Initialize group1080
 group1080 = (/ "    56.9154319763183593750000000", "   166.1649475097656250000000000", "   -85.6611404418945312500000000" /)
 !!!! Initialize group1081
 group1081 = (/ "    -8.9442787170410156250000000", "   -28.2431640625000000000000000", "    66.3053207397460937500000000" /)
 !!!! Initialize group1082
 group1082 = (/ "   -51.2180023193359375000000000", "  -101.2269821166992187500000000", "    10.1343488693237304687500000" /)
 !!!! Initialize group1083
 group1083 = (/ "    57.1740760803222656250000000", "   -26.4789142608642578125000000", "    62.7603836059570312500000000" /)
 !!!! Initialize group1084
 group1084 = (/ "    83.8377914428710937500000000", "     7.0719995498657226562500000", "    12.0256586074829101562500000" /)
 !!!! Initialize group1085
 group1085 = (/ "   -92.9923095703125000000000000", "    99.6989669799804687500000000", "   -29.4773616790771484375000000" /)
 !!!! Initialize group1086
 group1086 = (/ "   -54.3834266662597656250000000", "    -2.9771454334259033203125000", "   -65.9022674560546875000000000" /)
 !!!! Initialize group1087
 group1087 = (/ "   -73.7260894775390625000000000", "   -10.5898780822753906250000000", "    27.7344799041748046875000000" /)
 !!!! Initialize group1088
 group1088 = (/ "   -35.5445404052734375000000000", "   142.9532775878906250000000000", "   -37.1857719421386718750000000" /)
 !!!! Initialize group1089
 group1089 = (/ "    -1.7818375825881958007812500", "    72.0624694824218750000000000", "     8.0852012634277343750000000" /)
 !!!! Initialize group1090
 group1090 = (/ "   -36.7547225952148437500000000", "   -21.7199821472167968750000000", "   -17.8300342559814453125000000" /)
 !!!! Initialize group1091
 group1091 = (/ "   -28.1939315795898437500000000", "   -50.3416557312011718750000000", "    -5.1032667160034179687500000" /)
 !!!! Initialize group1092
 group1092 = (/ "   -20.5725498199462890625000000", "   -71.3108444213867187500000000", "   -39.5754623413085937500000000" /)
 !!!! Initialize group1093
 group1093 = (/ "    14.8374948501586914062500000", "   -18.8220520019531250000000000", "   -20.9275665283203125000000000" /)
 !!!! Initialize group1094
 group1094 = (/ "   -83.2169570922851562500000000", "   -74.0205917358398437500000000", "   -79.2915267944335937500000000" /)
 !!!! Initialize group1095
 group1095 = (/ "   -31.9356231689453125000000000", "   -94.3609161376953125000000000", "     5.2629284858703613281250000" /)
 !!!! Initialize group1096
 group1096 = (/ "   -43.4305763244628906250000000", "   -41.5134963989257812500000000", "     1.6218441724777221679687500" /)
 !!!! Initialize group1097
 group1097 = (/ "    38.9193153381347656250000000", "   -14.0427064895629882812500000", "   -20.9841804504394531250000000" /)
 !!!! Initialize group1098
 group1098 = (/ "    -2.5295639038085937500000000", "    20.7642784118652343750000000", "   -19.8775482177734375000000000" /)
 !!!! Initialize group1099
 group1099 = (/ "   -59.9108047485351562500000000", "    50.8502388000488281250000000", "    -4.0152053833007812500000000" /)
 !!!! Initialize group1100
 group1100 = (/ "    47.1505432128906250000000000", "    17.9750289916992187500000000", "    -1.1079249382019042968750000" /)
 !!!! Initialize group1101
 group1101 = (/ "    11.6245031356811523437500000", "   -15.7289695739746093750000000", "    15.8762445449829101562500000" /)
 !!!! Initialize group1102
 group1102 = (/ "    17.9896774291992187500000000", "    -6.9164943695068359375000000", "    11.8707704544067382812500000" /)
 !!!! Initialize group1103
 group1103 = (/ "    16.1322269439697265625000000", "   -66.0301971435546875000000000", "   -17.5726985931396484375000000" /)
 !!!! Initialize group1104
 group1104 = (/ "   -22.5115261077880859375000000", "    67.0631637573242187500000000", "    37.5637626647949218750000000" /)
 !!!! Initialize group1105
 group1105 = (/ "   -16.7343444824218750000000000", "   -51.5465927124023437500000000", "    52.5208740234375000000000000" /)
 !!!! Initialize group1106
 group1106 = (/ "   -17.4277801513671875000000000", "   -62.3896293640136718750000000", "    39.6466407775878906250000000" /)
 !!!! Initialize group1107
 group1107 = (/ "    43.2029876708984375000000000", "    41.3748435974121093750000000", "   -57.1420593261718750000000000" /)
 !!!! Initialize group1108
 group1108 = (/ "    23.0118160247802734375000000", "   -20.2909259796142578125000000", "   -21.4338855743408203125000000" /)
 !!!! Initialize group1109
 group1109 = (/ "     6.3591713905334472656250000", "    31.4078044891357421875000000", "  -140.0870208740234375000000000" /)
 !!!! Initialize group1110
 group1110 = (/ "    -0.4070738852024078369140625", "  -206.8251647949218750000000000", "    -3.2400932312011718750000000" /)
 !!!! Initialize group1111
 group1111 = (/ "   -44.7920074462890625000000000", "    17.4621562957763671875000000", "    42.8617362976074218750000000" /)
 !!!! Initialize group1112
 group1112 = (/ "    58.2722816467285156250000000", "    58.0970458984375000000000000", "    16.9670619964599609375000000" /)
 !!!! Initialize group1113
 group1113 = (/ "    16.9334106445312500000000000", "     8.2857236862182617187500000", "    -1.2926766872406005859375000" /)
 !!!! Initialize group1114
 group1114 = (/ "   -80.9407882690429687500000000", "   -72.5907440185546875000000000", "    42.6952323913574218750000000" /)
 !!!! Initialize group1115
 group1115 = (/ "    33.1611328125000000000000000", "    -1.8049770593643188476562500", "    49.8647117614746093750000000" /)
 !!!! Initialize group1116
 group1116 = (/ "    11.6197404861450195312500000", "  -119.6489562988281250000000000", "   -11.4086809158325195312500000" /)
 !!!! Initialize group1117
 group1117 = (/ "   -35.8882942199707031250000000", "    -9.5567522048950195312500000", "    37.4177894592285156250000000" /)
 !!!! Initialize group1118
 group1118 = (/ "    55.9115715026855468750000000", "    16.9220085144042968750000000", "    -5.4052186012268066406250000" /)
 !!!! Initialize group1119
 group1119 = (/ "   -18.4054317474365234375000000", "   -69.9104309082031250000000000", "    -3.3014941215515136718750000" /)
 !!!! Initialize group1120
 group1120 = (/ "    -0.8391206264495849609375000", "   -11.6337537765502929687500000", "   -15.0410051345825195312500000" /)
 !!!! Initialize group1121
 group1121 = (/ "    51.2109451293945312500000000", "   -50.5134735107421875000000000", "     9.1548156738281250000000000" /)
 !!!! Initialize group1122
 group1122 = (/ "    -9.7386941909790039062500000", "    -9.9489746093750000000000000", "   -23.5602779388427734375000000" /)
 !!!! Initialize group1123
 group1123 = (/ "    -2.5567204952239990234375000", "   -23.7423610687255859375000000", "   -62.1223182678222656250000000" /)
 !!!! Initialize group1124
 group1124 = (/ "   -55.9834785461425781250000000", "   -42.0993843078613281250000000", "    54.9510307312011718750000000" /)
 !!!! Initialize group1125
 group1125 = (/ "    31.0605106353759765625000000", "     8.5535840988159179687500000", "    26.9564571380615234375000000" /)
 !!!! Initialize group1126
 group1126 = (/ "   -41.5011367797851562500000000", "   -23.5291080474853515625000000", "    -4.1314301490783691406250000" /)
 !!!! Initialize group1127
 group1127 = (/ "   111.8416290283203125000000000", "   -28.0096893310546875000000000", "    24.8025474548339843750000000" /)
 !!!! Initialize group1128
 group1128 = (/ "     0.4935769438743591308593750", "   -21.1599617004394531250000000", "   -79.0341796875000000000000000" /)
 !!!! Initialize group1129
 group1129 = (/ "    75.5839843750000000000000000", "    -5.6982421875000000000000000", "    46.1329536437988281250000000" /)
 !!!! Initialize group1130
 group1130 = (/ "   -34.8922767639160156250000000", "   -15.7818431854248046875000000", "    24.3978557586669921875000000" /)
 !!!! Initialize group1131
 group1131 = (/ "    50.6257286071777343750000000", "   -47.2038841247558593750000000", "    -9.2327251434326171875000000" /)
 !!!! Initialize group1132
 group1132 = (/ "   -74.6977767944335937500000000", "     9.2453546524047851562500000", "   -26.0932521820068359375000000" /)
 !!!! Initialize group1133
 group1133 = (/ "     0.7524432539939880371093750", "    14.6195125579833984375000000", "    34.9641952514648437500000000" /)
 !!!! Initialize group1134
 group1134 = (/ "   -14.0936031341552734375000000", "     7.6939320564270019531250000", "   -43.7461585998535156250000000" /)
 !!!! Initialize group1135
 group1135 = (/ "    50.8718376159667968750000000", "   -55.2236328125000000000000000", "    17.6950550079345703125000000" /)
 !!!! Initialize group1136
 group1136 = (/ "  -111.4383850097656250000000000", "   -47.0082511901855468750000000", "   -58.9678459167480468750000000" /)
 !!!! Initialize group1137
 group1137 = (/ "    23.7166824340820312500000000", "    35.7888755798339843750000000", "    24.1996536254882812500000000" /)
 !!!! Initialize group1138
 group1138 = (/ "    26.9258384704589843750000000", "   -31.2054576873779296875000000", "   182.1607055664062500000000000" /)
 !!!! Initialize group1139
 group1139 = (/ "   -30.7717609405517578125000000", "   -14.7189531326293945312500000", "    81.2851486206054687500000000" /)
 !!!! Initialize group1140
 group1140 = (/ "    38.2860488891601562500000000", "    15.7051887512207031250000000", "   -48.0195655822753906250000000" /)
 !!!! Initialize group1141
 group1141 = (/ "   -43.4295463562011718750000000", "   -21.1465435028076171875000000", "   -36.6444435119628906250000000" /)
 !!!! Initialize group1142
 group1142 = (/ "   -48.6622390747070312500000000", "    68.7433242797851562500000000", "   -89.7780685424804687500000000" /)
 !!!! Initialize group1143
 group1143 = (/ "    28.9584712982177734375000000", "  -116.2830352783203125000000000", "   -59.2906379699707031250000000" /)
 !!!! Initialize group1144
 group1144 = (/ "   -69.0387802124023437500000000", "     4.4531469345092773437500000", "    34.4719696044921875000000000" /)
 !!!! Initialize group1145
 group1145 = (/ "    10.1078243255615234375000000", "     3.0168449878692626953125000", "    46.4249572753906250000000000" /)
 !!!! Initialize group1146
 group1146 = (/ "     2.5596785545349121093750000", "   -11.5359487533569335937500000", "    -7.7927083969116210937500000" /)
 !!!! Initialize group1147
 group1147 = (/ "   -19.7937488555908203125000000", "    -6.2716732025146484375000000", "   -46.4251098632812500000000000" /)
 !!!! Initialize group1148
 group1148 = (/ "    49.8310546875000000000000000", "     4.6627717018127441406250000", "    19.0926151275634765625000000" /)
 !!!! Initialize group1149
 group1149 = (/ "    -5.2217221260070800781250000", "    18.6252422332763671875000000", "    32.1569633483886718750000000" /)
 !!!! Initialize group1150
 group1150 = (/ "    69.7544937133789062500000000", "    25.7606925964355468750000000", "    50.1025810241699218750000000" /)
 !!!! Initialize group1151
 group1151 = (/ "   -35.3637847900390625000000000", "    21.8473033905029296875000000", "    49.3368225097656250000000000" /)
 !!!! Initialize group1152
 group1152 = (/ "   -45.7167282104492187500000000", "    34.1369590759277343750000000", "  -110.2192916870117187500000000" /)
 !!!! Initialize group1153
 group1153 = (/ "    -9.7777051925659179687500000", "    45.6433258056640625000000000", "    31.4907512664794921875000000" /)
 !!!! Initialize group1154
 group1154 = (/ "   -36.5346412658691406250000000", "    79.4205093383789062500000000", "    22.2060718536376953125000000" /)
 !!!! Initialize group1155
 group1155 = (/ "   -60.3722686767578125000000000", "    -7.4248023033142089843750000", "   -99.8086242675781250000000000" /)
 !!!! Initialize group1156
 group1156 = (/ "    50.2982635498046875000000000", "   -35.8126945495605468750000000", "   -76.8133087158203125000000000" /)
 !!!! Initialize group1157
 group1157 = (/ "   -39.9097480773925781250000000", "   -33.3762130737304687500000000", "   -81.8118972778320312500000000" /)
 !!!! Initialize group1158
 group1158 = (/ "    -9.6445198059082031250000000", "    23.4265403747558593750000000", "    22.7558460235595703125000000" /)
 !!!! Initialize group1159
 group1159 = (/ "    46.3960952758789062500000000", "  -101.0848007202148437500000000", "   -13.7239141464233398437500000" /)
 !!!! Initialize group1160
 group1160 = (/ "   -55.7490959167480468750000000", "    30.4460525512695312500000000", "  -191.3477478027343750000000000" /)
 !!!! Initialize group1161
 group1161 = (/ "  -104.3630447387695312500000000", "   -30.1881713867187500000000000", "    -0.3781738877296447753906250" /)
 !!!! Initialize group1162
 group1162 = (/ "    44.3683242797851562500000000", "     8.0836267471313476562500000", "    -4.4910774230957031250000000" /)
 !!!! Initialize group1163
 group1163 = (/ "    70.3276138305664062500000000", "   -28.5800056457519531250000000", "    16.7517929077148437500000000" /)
 !!!! Initialize group1164
 group1164 = (/ "    53.5350189208984375000000000", "    84.6488723754882812500000000", "     3.9660117626190185546875000" /)
 !!!! Initialize group1165
 group1165 = (/ "     5.5839123725891113281250000", "    -2.6426072120666503906250000", "   156.5021972656250000000000000" /)
 !!!! Initialize group1166
 group1166 = (/ "    22.9478912353515625000000000", "   -42.8888435363769531250000000", "   105.0890884399414062500000000" /)
 !!!! Initialize group1167
 group1167 = (/ "   -16.7661018371582031250000000", "     3.9546043872833251953125000", "   -41.6071357727050781250000000" /)
 !!!! Initialize group1168
 group1168 = (/ "    17.4085674285888671875000000", "   -41.9056510925292968750000000", "  -173.2646331787109375000000000" /)
 !!!! Initialize group1169
 group1169 = (/ "    -9.5330600738525390625000000", "  -106.3155746459960937500000000", "    33.2999877929687500000000000" /)
 !!!! Initialize group1170
 group1170 = (/ "     3.6686000823974609375000000", "   -93.4314727783203125000000000", "   129.2216949462890625000000000" /)
 !!!! Initialize group1171
 group1171 = (/ "    22.6303138732910156250000000", "   101.8853225708007812500000000", "    32.4829597473144531250000000" /)
 !!!! Initialize group1172
 group1172 = (/ "   -21.3265495300292968750000000", "    42.5242843627929687500000000", "    17.0838489532470703125000000" /)
 !!!! Initialize group1173
 group1173 = (/ "    41.6909828186035156250000000", "    20.2697677612304687500000000", "     4.9396209716796875000000000" /)
 !!!! Initialize group1174
 group1174 = (/ "    -6.1704659461975097656250000", "    59.1567115783691406250000000", "    33.0637664794921875000000000" /)
 !!!! Initialize group1175
 group1175 = (/ "  -139.0912780761718750000000000", "    20.1487350463867187500000000", "   -12.5956554412841796875000000" /)
 !!!! Initialize group1176
 group1176 = (/ "   -32.4782752990722656250000000", "    -2.6973590850830078125000000", "   -79.6478576660156250000000000" /)
 !!!! Initialize group1177
 group1177 = (/ "    51.4283218383789062500000000", "    34.7678604125976562500000000", "   -96.6350708007812500000000000" /)
 !!!! Initialize group1178
 group1178 = (/ "    27.5735340118408203125000000", "    33.0263748168945312500000000", "   -93.4353866577148437500000000" /)
 !!!! Initialize group1179
 group1179 = (/ "   -19.9854965209960937500000000", "    52.8857917785644531250000000", "    35.2418479919433593750000000" /)
 !!!! Initialize group1180
 group1180 = (/ "   -69.2710800170898437500000000", "   -32.5139503479003906250000000", "    19.8117332458496093750000000" /)
 !!!! Initialize group1181
 group1181 = (/ "   -52.4891891479492187500000000", "    -5.8377099037170410156250000", "    54.9241828918457031250000000" /)
 !!!! Initialize group1182
 group1182 = (/ "    28.3426723480224609375000000", "     8.0542144775390625000000000", "    -4.4456682205200195312500000" /)
 !!!! Initialize group1183
 group1183 = (/ "    78.1919174194335937500000000", "    -3.4780235290527343750000000", "   -21.6299953460693359375000000" /)
 !!!! Initialize group1184
 group1184 = (/ "    -2.6685700416564941406250000", "    46.4415702819824218750000000", "    30.8725452423095703125000000" /)
 !!!! Initialize group1185
 group1185 = (/ "   -67.4994354248046875000000000", "   -18.8213291168212890625000000", "  -129.0503387451171875000000000" /)
 !!!! Initialize group1186
 group1186 = (/ "   -86.6525955200195312500000000", "    31.3150386810302734375000000", "    30.5849227905273437500000000" /)
 !!!! Initialize group1187
 group1187 = (/ "    51.1570816040039062500000000", "   -68.6723022460937500000000000", "   -74.7653427124023437500000000" /)
 !!!! Initialize group1188
 group1188 = (/ "  -156.1883544921875000000000000", "   -61.4409370422363281250000000", "    63.1547241210937500000000000" /)
 !!!! Initialize group1189
 group1189 = (/ "  -108.3154907226562500000000000", "   -40.2658996582031250000000000", "    -2.9237449169158935546875000" /)
 !!!! Initialize group1190
 group1190 = (/ "   -33.8112754821777343750000000", "   101.0819320678710937500000000", "   -64.9705123901367187500000000" /)
 !!!! Initialize group1191
 group1191 = (/ "   -73.2876434326171875000000000", "    -6.7692437171936035156250000", "     2.4527952671051025390625000" /)
 !!!! Initialize group1192
 group1192 = (/ "    46.7569084167480468750000000", "  -198.2222747802734375000000000", "   -59.1184616088867187500000000" /)
 !!!! Initialize group1193
 group1193 = (/ "   -74.8868331909179687500000000", "    33.3400192260742187500000000", "   -57.6200370788574218750000000" /)
 !!!! Initialize group1194
 group1194 = (/ "    65.6428604125976562500000000", "   -58.2293167114257812500000000", "     4.5770053863525390625000000" /)
 !!!! Initialize group1195
 group1195 = (/ "   -30.9764385223388671875000000", "    27.7291240692138671875000000", "  -109.6218872070312500000000000" /)
 !!!! Initialize group1196
 group1196 = (/ "   -10.7588291168212890625000000", "     0.9670855402946472167968750", "    13.4878120422363281250000000" /)
 !!!! Initialize group1197
 group1197 = (/ "    49.2109947204589843750000000", "   -52.2865295410156250000000000", "    72.1309967041015625000000000" /)
 !!!! Initialize group1198
 group1198 = (/ "   117.6089096069335937500000000", "    40.6539039611816406250000000", "   -13.4847927093505859375000000" /)
 !!!! Initialize group1199
 group1199 = (/ "   -12.6098842620849609375000000", "    77.9602050781250000000000000", "    29.4247837066650390625000000" /)
 !!!! Initialize group1200
 group1200 = (/ "   -16.3743057250976562500000000", "   -57.9028778076171875000000000", "     0.4660860896110534667968750" /)
 !!!! Initialize group1201
 group1201 = (/ "    77.3511428833007812500000000", "    69.1554641723632812500000000", "    91.8134155273437500000000000" /)
 !!!! Initialize group1202
 group1202 = (/ "    78.7498397827148437500000000", "    73.0908508300781250000000000", "   -51.0843658447265625000000000" /)
 !!!! Initialize group1203
 group1203 = (/ "   -24.7931823730468750000000000", "    52.1819229125976562500000000", "   169.3569641113281250000000000" /)
 !!!! Initialize group1204
 group1204 = (/ "   112.1659774780273437500000000", "   -43.4488601684570312500000000", "     8.7247581481933593750000000" /)
 !!!! Initialize group1205
 group1205 = (/ "   -16.3194332122802734375000000", "   -43.4547615051269531250000000", "   -40.0648193359375000000000000" /)
 !!!! Initialize group1206
 group1206 = (/ "   -34.0399398803710937500000000", "    48.0346336364746093750000000", "     2.1970298290252685546875000" /)
 !!!! Initialize group1207
 group1207 = (/ "    -6.8362016677856445312500000", "    -2.8752717971801757812500000", "  -138.5693206787109375000000000" /)
 !!!! Initialize group1208
 group1208 = (/ "   -40.0469284057617187500000000", "    57.5835227966308593750000000", "   -17.5059928894042968750000000" /)
 !!!! Initialize group1209
 group1209 = (/ "    20.0038700103759765625000000", "    62.2407684326171875000000000", "   -17.2376346588134765625000000" /)
 !!!! Initialize group1210
 group1210 = (/ "   -60.7236328125000000000000000", "  -121.3212432861328125000000000", "   -17.2299270629882812500000000" /)
 !!!! Initialize group1211
 group1211 = (/ "   -47.0645408630371093750000000", "    10.4405479431152343750000000", "   -34.0924453735351562500000000" /)
 !!!! Initialize group1212
 group1212 = (/ "   -75.5555419921875000000000000", "    73.0995330810546875000000000", "   -15.8829154968261718750000000" /)
 !!!! Initialize group1213
 group1213 = (/ "    69.4224243164062500000000000", "   -72.5105819702148437500000000", "    85.6305084228515625000000000" /)
 !!!! Initialize group1214
 group1214 = (/ "   -21.1950626373291015625000000", "   -16.5290431976318359375000000", "    50.5273017883300781250000000" /)
 !!!! Initialize group1215
 group1215 = (/ "   195.0507049560546875000000000", "   -45.3632888793945312500000000", "   -35.3066520690917968750000000" /)
 !!!! Initialize group1216
 group1216 = (/ "    66.5385284423828125000000000", "    11.0204238891601562500000000", "   -11.1878137588500976562500000" /)
 !!!! Initialize group1217
 group1217 = (/ "    54.6883392333984375000000000", "     1.6283848285675048828125000", "   184.1800689697265625000000000" /)
 !!!! Initialize group1218
 group1218 = (/ "    10.6277008056640625000000000", "   -33.9793777465820312500000000", "    35.2334403991699218750000000" /)
 !!!! Initialize group1219
 group1219 = (/ "    31.8547782897949218750000000", "    -3.0250515937805175781250000", "    18.6303348541259765625000000" /)
 !!!! Initialize group1220
 group1220 = (/ "    63.1068115234375000000000000", "   -17.4026279449462890625000000", "   102.4452667236328125000000000" /)
 !!!! Initialize group1221
 group1221 = (/ "    41.8373146057128906250000000", "    12.8507137298583984375000000", "   -17.0083274841308593750000000" /)
 !!!! Initialize group1222
 group1222 = (/ "    17.2190341949462890625000000", "    12.7692193984985351562500000", "   -82.8829956054687500000000000" /)
 !!!! Initialize group1223
 group1223 = (/ "   -52.5122337341308593750000000", "   -20.3123569488525390625000000", "   -35.2896385192871093750000000" /)
 !!!! Initialize group1224
 group1224 = (/ "    44.4940681457519531250000000", "    19.0525455474853515625000000", "   -58.0449790954589843750000000" /)
 !!!! Initialize group1225
 group1225 = (/ "    -7.9691081047058105468750000", "   -68.8364181518554687500000000", "     6.5269603729248046875000000" /)
 !!!! Initialize group1226
 group1226 = (/ "   -52.3422164916992187500000000", "    84.8849029541015625000000000", "   -43.0908737182617187500000000" /)
 !!!! Initialize group1227
 group1227 = (/ "   248.0735321044921875000000000", "    61.2121467590332031250000000", "    -2.8746974468231201171875000" /)
 !!!! Initialize group1228
 group1228 = (/ "   -89.0650711059570312500000000", "    -4.9911823272705078125000000", "     2.1617228984832763671875000" /)
 !!!! Initialize group1229
 group1229 = (/ "   -63.5298118591308593750000000", "    29.5281429290771484375000000", "    26.9450683593750000000000000" /)
 !!!! Initialize group1230
 group1230 = (/ "   -12.1654024124145507812500000", "   -11.0413923263549804687500000", "    14.2040290832519531250000000" /)
 !!!! Initialize group1231
 group1231 = (/ "   -35.6305046081542968750000000", "     3.1089942455291748046875000", "    15.7315626144409179687500000" /)
 !!!! Initialize group1232
 group1232 = (/ "   -11.7231674194335937500000000", "   -19.7371997833251953125000000", "     8.8305435180664062500000000" /)
 !!!! Initialize group1233
 group1233 = (/ "   -30.6488666534423828125000000", "     2.2628784179687500000000000", "   -22.0700588226318359375000000" /)
 !!!! Initialize group1234
 group1234 = (/ "   -63.9853401184082031250000000", "   -66.7419281005859375000000000", "   -21.8666629791259765625000000" /)
 !!!! Initialize group1235
 group1235 = (/ "    66.9218902587890625000000000", "    -6.2293052673339843750000000", "    20.1897964477539062500000000" /)
 !!!! Initialize group1236
 group1236 = (/ "   -24.7548027038574218750000000", "    28.1453456878662109375000000", "   -21.6281242370605468750000000" /)
 !!!! Initialize group1237
 group1237 = (/ "     6.0719699859619140625000000", "   -14.2863721847534179687500000", "    11.6362142562866210937500000" /)
 !!!! Initialize group1238
 group1238 = (/ "   -33.5313491821289062500000000", "   -58.4348068237304687500000000", "   -61.3744850158691406250000000" /)
 !!!! Initialize group1239
 group1239 = (/ "    40.8922271728515625000000000", "   -47.7830390930175781250000000", "    -5.5157113075256347656250000" /)
 !!!! Initialize group1240
 group1240 = (/ "    30.9597702026367187500000000", "   -49.3481559753417968750000000", "   -16.1692085266113281250000000" /)
 !!!! Initialize group1241
 group1241 = (/ "    42.2594757080078125000000000", "   -32.0745048522949218750000000", "   -11.4074516296386718750000000" /)
 !!!! Initialize group1242
 group1242 = (/ "    24.7782077789306640625000000", "   -43.9497604370117187500000000", "    99.2594223022460937500000000" /)
 !!!! Initialize group1243
 group1243 = (/ "   -37.8458786010742187500000000", "    18.6529712677001953125000000", "   109.7459564208984375000000000" /)
 !!!! Initialize group1244
 group1244 = (/ "    26.5234355926513671875000000", "    30.3382244110107421875000000", "     3.3447391986846923828125000" /)
 !!!! Initialize group1245
 group1245 = (/ "   -62.8403854370117187500000000", "    19.0347690582275390625000000", "    29.4404563903808593750000000" /)
 !!!! Initialize group1246
 group1246 = (/ "   -24.5538902282714843750000000", "    -2.5041179656982421875000000", "    26.7537975311279296875000000" /)
 !!!! Initialize group1247
 group1247 = (/ "    56.8698387145996093750000000", "    16.7983036041259765625000000", "   -37.7058525085449218750000000" /)
 !!!! Initialize group1248
 group1248 = (/ "    38.8937454223632812500000000", "    23.2708415985107421875000000", "    27.8150520324707031250000000" /)
 !!!! Initialize group1249
 group1249 = (/ "    47.6711654663085937500000000", "    -0.7796223163604736328125000", "    31.9809551239013671875000000" /)
 !!!! Initialize group1250
 group1250 = (/ "    30.4008731842041015625000000", "   -30.8877124786376953125000000", "   -16.6374454498291015625000000" /)
 !!!! Initialize group1251
 group1251 = (/ "  -112.8457107543945312500000000", "    -6.0539302825927734375000000", "    26.9318122863769531250000000" /)
 !!!! Initialize group1252
 group1252 = (/ "   -35.8816566467285156250000000", "  -144.0957794189453125000000000", "     6.6550540924072265625000000" /)
 !!!! Initialize group1253
 group1253 = (/ "    11.8083782196044921875000000", "    26.1975803375244140625000000", "   -33.3883361816406250000000000" /)
 !!!! Initialize group1254
 group1254 = (/ "   152.7866058349609375000000000", "    -3.0680215358734130859375000", "   -78.8946075439453125000000000" /)
 !!!! Initialize group1255
 group1255 = (/ "    12.2481803894042968750000000", "   -34.1872100830078125000000000", "    88.4093856811523437500000000" /)
 !!!! Initialize group1256
 group1256 = (/ "     0.8037011623382568359375000", "  -141.4544677734375000000000000", "   -20.8310394287109375000000000" /)
 !!!! Initialize group1257
 group1257 = (/ "   -52.0045700073242187500000000", "    -4.3754739761352539062500000", "    41.4341888427734375000000000" /)
 !!!! Initialize group1258
 group1258 = (/ "   -10.6836881637573242187500000", "    31.4717292785644531250000000", "    37.9367523193359375000000000" /)
 !!!! Initialize group1259
 group1259 = (/ "   -15.3663501739501953125000000", "   -16.1735172271728515625000000", "   -26.0787086486816406250000000" /)
 !!!! Initialize group1260
 group1260 = (/ "   -14.6378669738769531250000000", "    38.7323493957519531250000000", "    10.3593721389770507812500000" /)
 !!!! Initialize group1261
 group1261 = (/ "    30.7755508422851562500000000", "   -15.9006710052490234375000000", "   -17.5219306945800781250000000" /)
 !!!! Initialize group1262
 group1262 = (/ "   -12.0230913162231445312500000", "     4.6670765876770019531250000", "   -47.7906913757324218750000000" /)
 !!!! Initialize group1263
 group1263 = (/ "     2.7036602497100830078125000", "   104.1770935058593750000000000", "    25.8693180084228515625000000" /)
 !!!! Initialize group1264
 group1264 = (/ "   -22.4724006652832031250000000", "   -36.3818969726562500000000000", "   -86.5956039428710937500000000" /)
 !!!! Initialize group1265
 group1265 = (/ "    35.4908676147460937500000000", "   -27.7765178680419921875000000", "   -46.9003791809082031250000000" /)
 !!!! Initialize group1266
 group1266 = (/ "    22.8256759643554687500000000", "   -80.8622283935546875000000000", "   -88.5093917846679687500000000" /)
 !!!! Initialize group1267
 group1267 = (/ "   -77.0208892822265625000000000", "    16.8932476043701171875000000", "   -43.2667274475097656250000000" /)
 !!!! Initialize group1268
 group1268 = (/ "   -21.5745964050292968750000000", "    98.6765975952148437500000000", "   -33.8637771606445312500000000" /)
 !!!! Initialize group1269
 group1269 = (/ "    31.3025474548339843750000000", "     7.9863529205322265625000000", "   -28.3263092041015625000000000" /)
 !!!! Initialize group1270
 group1270 = (/ "   -50.4802398681640625000000000", "   110.0627899169921875000000000", "     6.1517710685729980468750000" /)
 !!!! Initialize group1271
 group1271 = (/ "   -32.0246162414550781250000000", "     1.8902654647827148437500000", "   -14.1930265426635742187500000" /)
 !!!! Initialize group1272
 group1272 = (/ "    15.7794570922851562500000000", "    63.8262634277343750000000000", "    21.1369361877441406250000000" /)
 !!!! Initialize group1273
 group1273 = (/ "    18.2654094696044921875000000", "   -47.2477912902832031250000000", "   -86.5570983886718750000000000" /)
 !!!! Initialize group1274
 group1274 = (/ "   -38.3297004699707031250000000", "  -142.7917022705078125000000000", "    -8.6928272247314453125000000" /)
 !!!! Initialize group1275
 group1275 = (/ "    49.1496124267578125000000000", "   -64.9608230590820312500000000", "   -12.5160722732543945312500000" /)
 !!!! Initialize group1276
 group1276 = (/ "   -11.4866399765014648437500000", "   -26.5128612518310546875000000", "     6.7380924224853515625000000" /)
 !!!! Initialize group1277
 group1277 = (/ "    62.9289550781250000000000000", "    39.0230064392089843750000000", "    16.2792491912841796875000000" /)
 !!!! Initialize group1278
 group1278 = (/ "   -47.2835655212402343750000000", "    46.9350204467773437500000000", "   -20.2364158630371093750000000" /)
 !!!! Initialize group1279
 group1279 = (/ "    43.0073394775390625000000000", "    67.6665573120117187500000000", "   -22.5246620178222656250000000" /)
 !!!! Initialize group1280
 group1280 = (/ "   -79.6010208129882812500000000", "    54.9536476135253906250000000", "   202.2291107177734375000000000" /)
 !!!! Initialize group1281
 group1281 = (/ "    38.0316886901855468750000000", "     2.3483445644378662109375000", "     0.4255059957504272460937500" /)
 !!!! Initialize group1282
 group1282 = (/ "   -32.1527900695800781250000000", "    70.9332504272460937500000000", "    57.3603897094726562500000000" /)
 !!!! Initialize group1283
 group1283 = (/ "    25.1278724670410156250000000", "   -47.8527565002441406250000000", "   -61.1602554321289062500000000" /)
 !!!! Initialize group1284
 group1284 = (/ "    16.2129154205322265625000000", "   -12.4449138641357421875000000", "     2.6470551490783691406250000" /)
 !!!! Initialize group1285
 group1285 = (/ "   -71.0841140747070312500000000", "    56.0105018615722656250000000", "   -18.7631340026855468750000000" /)
 !!!! Initialize group1286
 group1286 = (/ "   -98.7599868774414062500000000", "    -8.8173189163208007812500000", "     8.2183370590209960937500000" /)
 !!!! Initialize group1287
 group1287 = (/ "    33.6633491516113281250000000", "     2.1294789314270019531250000", "    84.9246749877929687500000000" /)
 !!!! Initialize group1288
 group1288 = (/ "    77.7629165649414062500000000", "    83.1012878417968750000000000", "   -32.9642410278320312500000000" /)
 !!!! Initialize group1289
 group1289 = (/ "   -65.6925582885742187500000000", "    47.8997039794921875000000000", "   -90.0093460083007812500000000" /)
 !!!! Initialize group1290
 group1290 = (/ "   -54.9985427856445312500000000", "   -81.0345916748046875000000000", "    30.6333656311035156250000000" /)
 !!!! Initialize group1291
 group1291 = (/ "     5.9718022346496582031250000", "     5.7899627685546875000000000", "   -11.5971689224243164062500000" /)
 !!!! Initialize group1292
 group1292 = (/ "    72.2981414794921875000000000", "   -14.7094068527221679687500000", "   -26.4514656066894531250000000" /)
 !!!! Initialize group1293
 group1293 = (/ "    18.5533657073974609375000000", "    -0.0883828401565551757812500", "   -98.6268539428710937500000000" /)
 !!!! Initialize group1294
 group1294 = (/ "   107.1773757934570312500000000", "   107.0432510375976562500000000", "    33.9331893920898437500000000" /)
 !!!! Initialize group1295
 group1295 = (/ "   204.3434600830078125000000000", "    37.6004219055175781250000000", "   -47.5311660766601562500000000" /)
 !!!! Initialize group1296
 group1296 = (/ "   -12.9008417129516601562500000", "    14.6518745422363281250000000", "   -73.7034683227539062500000000" /)
 !!!! Initialize group1297
 group1297 = (/ "     1.3842165470123291015625000", "    28.5639076232910156250000000", "     4.3622646331787109375000000" /)
 !!!! Initialize group1298
 group1298 = (/ "   -62.4073410034179687500000000", "     7.2806525230407714843750000", "    27.5190563201904296875000000" /)
 !!!! Initialize group1299
 group1299 = (/ "   -21.5708675384521484375000000", "    19.8262844085693359375000000", "    13.7511348724365234375000000" /)
 !!!! Initialize group1300
 group1300 = (/ "   -33.2217864990234375000000000", "    19.7214412689208984375000000", "   -70.3499374389648437500000000" /)
 !!!! Initialize group1301
 group1301 = (/ "    98.5289611816406250000000000", "    52.0005378723144531250000000", "   -70.2591400146484375000000000" /)
 !!!! Initialize group1302
 group1302 = (/ "   -75.6259765625000000000000000", "   -21.2159290313720703125000000", "  -163.8088684082031250000000000" /)
 !!!! Initialize group1303
 group1303 = (/ "   -19.2663555145263671875000000", "    21.9795131683349609375000000", "    -4.8931751251220703125000000" /)
 !!!! Initialize group1304
 group1304 = (/ "   -46.0812187194824218750000000", "   -13.8279190063476562500000000", "    56.9730110168457031250000000" /)
 !!!! Initialize group1305
 group1305 = (/ "   -63.8398971557617187500000000", "   152.8819580078125000000000000", "     9.9366703033447265625000000" /)
 !!!! Initialize group1306
 group1306 = (/ "   -41.5467605590820312500000000", "    26.1517505645751953125000000", "    13.2165822982788085937500000" /)
 !!!! Initialize group1307
 group1307 = (/ "    26.1350307464599609375000000", "   -75.7974166870117187500000000", "    -7.7566680908203125000000000" /)
 !!!! Initialize group1308
 group1308 = (/ "    35.1756019592285156250000000", "    70.0852203369140625000000000", "    52.6355667114257812500000000" /)
 !!!! Initialize group1309
 group1309 = (/ "    29.4933872222900390625000000", "   -25.3013973236083984375000000", "    -8.2135553359985351562500000" /)
 !!!! Initialize group1310
 group1310 = (/ "    25.2283935546875000000000000", "    37.2047805786132812500000000", "    90.7258911132812500000000000" /)
 !!!! Initialize group1311
 group1311 = (/ "  -115.1975936889648437500000000", "     4.6773738861083984375000000", "    29.8879737854003906250000000" /)
 !!!! Initialize group1312
 group1312 = (/ "    15.9116592407226562500000000", "    10.5488080978393554687500000", "   108.2565078735351562500000000" /)
 !!!! Initialize group1313
 group1313 = (/ "   120.6115875244140625000000000", "     2.0849099159240722656250000", "    36.9843063354492187500000000" /)
 !!!! Initialize group1314
 group1314 = (/ "    14.9785366058349609375000000", "    65.3399200439453125000000000", "   -30.2003250122070312500000000" /)
 !!!! Initialize group1315
 group1315 = (/ "   -55.6031455993652343750000000", "    14.7826642990112304687500000", "  -118.7403640747070312500000000" /)
 !!!! Initialize group1316
 group1316 = (/ "    31.5106201171875000000000000", "    -0.6071194410324096679687500", "     2.6112980842590332031250000" /)
 !!!! Initialize group1317
 group1317 = (/ "   -12.1255645751953125000000000", "    -7.1685566902160644531250000", "   -66.0932769775390625000000000" /)
 !!!! Initialize group1318
 group1318 = (/ "   -74.4188232421875000000000000", "   -58.0932693481445312500000000", "     3.6551492214202880859375000" /)
 !!!! Initialize group1319
 group1319 = (/ "    19.0258712768554687500000000", "    16.4168186187744140625000000", "   -16.9743041992187500000000000" /)
 !!!! Initialize group1320
 group1320 = (/ "     4.4839844703674316406250000", "    17.5722961425781250000000000", "   -13.8235759735107421875000000" /)
 !!!! Initialize group1321
 group1321 = (/ "    62.7338027954101562500000000", "   -48.7589874267578125000000000", "   -59.2276878356933593750000000" /)
 !!!! Initialize group1322
 group1322 = (/ "    40.1092033386230468750000000", "    50.5893058776855468750000000", "    -7.9290275573730468750000000" /)
 !!!! Initialize group1323
 group1323 = (/ "   -14.8556022644042968750000000", "   -32.5871429443359375000000000", "    49.2085952758789062500000000" /)
 !!!! Initialize group1324
 group1324 = (/ "    43.4193916320800781250000000", "    -1.8631600141525268554687500", "    -0.8032388091087341308593750" /)
 !!!! Initialize group1325
 group1325 = (/ "    -1.4931136369705200195312500", "    42.0963058471679687500000000", "     2.5330903530120849609375000" /)
 !!!! Initialize group1326
 group1326 = (/ "     3.6752049922943115234375000", "    -1.7852413654327392578125000", "     0.8312346339225769042968750" /)
 !!!! Initialize group1327
 group1327 = (/ "    85.2284240722656250000000000", "   -44.9758834838867187500000000", "   -22.6343822479248046875000000" /)
 !!!! Initialize group1328
 group1328 = (/ "   -10.8331775665283203125000000", "   -48.4295005798339843750000000", "   -23.5057868957519531250000000" /)
 !!!! Initialize group1329
 group1329 = (/ "   -32.7942085266113281250000000", "    45.3733520507812500000000000", "    -1.7826918363571166992187500" /)
 !!!! Initialize group1330
 group1330 = (/ "      92.83078002929687500000000", "     3.3873012065887451171875000", "     1.5153970718383789062500000" /)
 !!!! Initialize group1331
 group1331 = (/ "    -1.5099450349807739257812500", "   -28.2689495086669921875000000", "    34.7589950561523437500000000" /)
 !!!! Initialize group1332
 group1332 = (/ "     1.6218219995498657226562500", "   -63.9016799926757812500000000", "     1.9896453619003295898437500" /)
 !!!! Initialize group1333
 group1333 = (/ "   128.1360778808593750000000000", "    38.9369087219238281250000000", "   -54.5660972595214843750000000" /)
 !!!! Initialize group1334
 group1334 = (/ "   -23.8748664855957031250000000", "   -15.4689702987670898437500000", "    -4.3495621681213378906250000" /)
 !!!! Initialize group1335
 group1335 = (/ "   -27.6215152740478515625000000", "    12.6812381744384765625000000", "    -6.9859061241149902343750000" /)
 !!!! Initialize group1336
 group1336 = (/ "    53.6320648193359375000000000", "    52.1906242370605468750000000", "    41.8015480041503906250000000" /)
 !!!! Initialize group1337
 group1337 = (/ "    84.7277984619140625000000000", "  -111.9275817871093750000000000", "   -52.3655128479003906250000000" /)
 !!!! Initialize group1338
 group1338 = (/ "    80.5757293701171875000000000", "   -36.0747642517089843750000000", "   112.2441864013671875000000000" /)
 !!!! Initialize group1339
 group1339 = (/ "    43.7448043823242187500000000", "   -23.9763641357421875000000000", "     4.7787799835205078125000000" /)
 !!!! Initialize group1340
 group1340 = (/ "   -62.2526054382324218750000000", "   -84.9996719360351562500000000", "    23.4251270294189453125000000" /)
 !!!! Initialize group1341
 group1341 = (/ "    36.0665092468261718750000000", "   -75.1880340576171875000000000", "   -62.5147552490234375000000000" /)
 !!!! Initialize group1342
 group1342 = (/ "   -10.3218460083007812500000000", "    34.5386276245117187500000000", "    19.7215080261230468750000000" /)
 !!!! Initialize group1343
 group1343 = (/ "   -15.9899635314941406250000000", "   -15.8450469970703125000000000", "    16.4353713989257812500000000" /)
 !!!! Initialize group1344
 group1344 = (/ "     3.8521220684051513671875000", "    -0.4015481472015380859375000", "   246.2827606201171875000000000" /)
 !!!! Initialize group1345
 group1345 = (/ "    60.2731933593750000000000000", "    26.6527462005615234375000000", "    54.8725776672363281250000000" /)
 !!!! Initialize group1346
 group1346 = (/ "    13.8415260314941406250000000", "   -23.9900093078613281250000000", "    -9.3183937072753906250000000" /)
 !!!! Initialize group1347
 group1347 = (/ "    -2.6917085647583007812500000", "    18.8724079132080078125000000", "   -36.1818809509277343750000000" /)
 !!!! Initialize group1348
 group1348 = (/ "  -102.1870880126953125000000000", "    61.9054489135742187500000000", "    89.5711135864257812500000000" /)
 !!!! Initialize group1349
 group1349 = (/ "  -142.3636474609375000000000000", "    39.1017799377441406250000000", "    -5.1577420234680175781250000" /)
 !!!! Initialize group1350
 group1350 = (/ "    46.9227676391601562500000000", "     9.9989337921142578125000000", "    -9.2911071777343750000000000" /)
 !!!! Initialize group1351
 group1351 = (/ "     4.3919501304626464843750000", "    38.1174964904785156250000000", "   -30.7671108245849609375000000" /)
 !!!! Initialize group1352
 group1352 = (/ "   -16.5514125823974609375000000", "    11.9474725723266601562500000", "    45.7598533630371093750000000" /)
 !!!! Initialize group1353
 group1353 = (/ "   105.7297973632812500000000000", "    11.3679571151733398437500000", "    52.5408477783203125000000000" /)
 !!!! Initialize group1354
 group1354 = (/ "    24.6263217926025390625000000", "    13.7702369689941406250000000", "   -13.7182006835937500000000000" /)
 !!!! Initialize group1355
 group1355 = (/ "    12.7285890579223632812500000", "    49.0510978698730468750000000", "    34.7866630554199218750000000" /)
 !!!! Initialize group1356
 group1356 = (/ "   -63.0533561706542968750000000", "     8.2327527999877929687500000", "   -41.5821647644042968750000000" /)
 !!!! Initialize group1357
 group1357 = (/ "    33.8018798828125000000000000", "    -5.4789876937866210937500000", "    24.1994762420654296875000000" /)
 !!!! Initialize group1358
 group1358 = (/ "   -45.0720901489257812500000000", "    14.5615653991699218750000000", "    37.2514076232910156250000000" /)
 !!!! Initialize group1359
 group1359 = (/ "    -9.7939767837524414062500000", "   112.4140014648437500000000000", "   -31.5192775726318359375000000" /)
 !!!! Initialize group1360
 group1360 = (/ "    23.5189132690429687500000000", "   -48.0205459594726562500000000", "   -30.6316318511962890625000000" /)
 !!!! Initialize group1361
 group1361 = (/ "    -5.1627383232116699218750000", "   -21.9492797851562500000000000", "   -20.7816524505615234375000000" /)
 !!!! Initialize group1362
 group1362 = (/ "     1.8221435546875000000000000", "    95.9282073974609375000000000", "    -6.9291124343872070312500000" /)
 !!!! Initialize group1363
 group1363 = (/ "   -51.4412918090820312500000000", "   -85.3489532470703125000000000", "    91.5339279174804687500000000" /)
 !!!! Initialize group1364
 group1364 = (/ "   -10.1040449142456054687500000", "   -15.5094413757324218750000000", "   -60.2127532958984375000000000" /)
 !!!! Initialize group1365
 group1365 = (/ "    10.1429376602172851562500000", "   -30.1074829101562500000000000", "   -33.4969749450683593750000000" /)
 !!!! Initialize group1366
 group1366 = (/ "   -25.6875610351562500000000000" ,"     9.1017847061157226562500000", "   -84.6352691650390625000000000" /)
 !!!! Initialize group1367
 group1367 = (/ "   147.0370330810546875000000000", "   -50.1814651489257812500000000", "    29.0308284759521484375000000" /)
 !!!! Initialize group1368
 group1368 = (/ "   -19.7328262329101562500000000", "   -75.4048156738281250000000000", "    26.1988563537597656250000000" /)
 !!!! Initialize group1369
 group1369 = (/ "    -5.3813524246215820312500000", "    36.2055664062500000000000000", "     1.2566895484924316406250000" /)
 !!!! Initialize group1370
 group1370 = (/ "   -23.2169761657714843750000000", "    -2.1079332828521728515625000", "    75.0718612670898437500000000" /)
 !!!! Initialize group1371
 group1371 = (/ "  -137.8211975097656250000000000", "   -15.5637388229370117187500000", "    -7.7647552490234375000000000" /)
 !!!! Initialize group1372
 group1372 = (/ "   -91.3898010253906250000000000", "   -27.3475093841552734375000000", "  -112.3271026611328125000000000" /)
 !!!! Initialize group1373
 group1373 = (/ "    -6.6557340621948242187500000", "    -4.3433403968811035156250000", "   -50.4544143676757812500000000" /)
 !!!! Initialize group1374
 group1374 = (/ "   -91.6101837158203125000000000", "    39.8104934692382812500000000", "    17.9428844451904296875000000" /)
 !!!! Initialize group1375
 group1375 = (/ "    19.7905845642089843750000000", "   -49.0773315429687500000000000", "   -34.1138534545898437500000000" /)
 !!!! Initialize group1376
 group1376 = (/ "   -10.6531257629394531250000000", "  -104.6238632202148437500000000", "   -44.2244606018066406250000000" /)
 !!!! Initialize group1377
 group1377 = (/ "    97.7230224609375000000000000", "   -73.2295074462890625000000000", "    28.9964847564697265625000000" /)
 !!!! Initialize group1378
 group1378 = (/ "   -14.2928981781005859375000000", "   -49.9005088806152343750000000", "   -57.0455093383789062500000000" /)
 !!!! Initialize group1379
 group1379 = (/ "   -66.0134658813476562500000000", "    68.5418319702148437500000000", "     1.8149623870849609375000000" /)
 !!!! Initialize group1380
 group1380 = (/ "     9.9496259689331054687500000", "    72.7047729492187500000000000", "   -23.4720287322998046875000000" /)
 !!!! Initialize group1381
 group1381 = (/ "   -22.6316051483154296875000000", "    -4.5345430374145507812500000", "   -12.8154659271240234375000000" /)
 !!!! Initialize group1382
 group1382 = (/ "    -0.2120447158813476562500000", "     7.0241322517395019531250000", "    52.7244110107421875000000000" /)
 !!!! Initialize group1383
 group1383 = (/ "    63.2868728637695312500000000", "     2.8017599582672119140625000", "   -18.7582759857177734375000000" /)
 !!!! Initialize group1384
 group1384 = (/ "   -98.5954208374023437500000000", "  -123.0365295410156250000000000", "    39.5961608886718750000000000" /)
 !!!! Initialize group1385
 group1385 = (/ "    -0.7860482931137084960937500", "    50.8216323852539062500000000", "   -74.4745864868164062500000000" /)
 !!!! Initialize group1386
 group1386 = (/ "   -72.6089477539062500000000000", "   -82.3421783447265625000000000", "   -50.9847869873046875000000000" /)
 !!!! Initialize group1387
 group1387 = (/ "    74.9774780273437500000000000", "    29.3170776367187500000000000", "    -2.6083710193634033203125000" /)
 !!!! Initialize group1388
 group1388 = (/ "    11.2849016189575195312500000", "   -35.1649856567382812500000000", "   -13.8383054733276367187500000" /)
 !!!! Initialize group1389
 group1389 = (/ "    47.5065155029296875000000000", "    55.2163810729980468750000000", "    31.1393547058105468750000000" /)
 !!!! Initialize group1390
 group1390 = (/ "    75.0168609619140625000000000", "    61.9054183959960937500000000", "     8.3910131454467773437500000" /)
 !!!! Initialize group1391
 group1391 = (/ "     1.2476503849029541015625000", "    52.2661972045898437500000000", "    17.1430206298828125000000000" /)
 !!!! Initialize group1392
 group1392 = (/ "    83.3760452270507812500000000", "    -5.4338707923889160156250000", "   -23.0242328643798828125000000" /)
 !!!! Initialize group1393
 group1393 = (/ "    51.9113655090332031250000000", "    51.6366729736328125000000000", "    -4.9191541671752929687500000" /)
 !!!! Initialize group1394
 group1394 = (/ "     3.2992868423461914062500000", "   111.2100830078125000000000000", "    -8.0005159378051757812500000" /)
 !!!! Initialize group1395
 group1395 = (/ "    11.4705457687377929687500000", "    48.4842338562011718750000000", "   -80.4775848388671875000000000" /)
 !!!! Initialize group1396
 group1396 = (/ "    17.6255855560302734375000000", "   -58.8874397277832031250000000", "    96.5511398315429687500000000" /)
 !!!! Initialize group1397
 group1397 = (/ "    68.1112670898437500000000000", "   -97.0440292358398437500000000", "    59.6573905944824218750000000" /)
 !!!! Initialize group1398
 group1398 = (/ "     3.8546369075775146484375000", "    -5.4965677261352539062500000", "     0.5539807677268981933593750" /)
 !!!! Initialize group1399
 group1399 = (/ "    54.5256385803222656250000000", "   -24.9498252868652343750000000", "    29.4897594451904296875000000" /)
 !!!! Initialize group1400
 group1400 = (/ "   -33.2693977355957031250000000", "    32.8553009033203125000000000", "   -51.6802330017089843750000000" /)
 !!!! Initialize group1401
 group1401 = (/ "   -45.3405036926269531250000000", "   -19.4122772216796875000000000", "   -38.3911323547363281250000000" /)
 !!!! Initialize group1402
 group1402 = (/ "   -47.2208976745605468750000000", "    53.3907394409179687500000000", "  -107.9637832641601562500000000" /)
 !!!! Initialize group1403
 group1403 = (/ "    88.8673400878906250000000000", "   -37.7831916809082031250000000", "   -12.4424829483032226562500000" /)
 !!!! Initialize group1404
 group1404 = (/ "    83.4469528198242187500000000", "    91.1108093261718750000000000", "   -25.0367622375488281250000000" /)
 !!!! Initialize group1405
 group1405 = (/ "   115.8166275024414062500000000", "    11.8648376464843750000000000", "    -1.6341490745544433593750000" /)
 !!!! Initialize group1406
 group1406 = (/ "   -22.7497539520263671875000000", "    71.3861083984375000000000000", "   108.5803070068359375000000000" /)
 !!!! Initialize group1407
 group1407 = (/ "    48.5737838745117187500000000", "    60.5212707519531250000000000", "    14.7617683410644531250000000" /)
 !!!! Initialize group1408
 group1408 = (/ "   -31.3364162445068359375000000", "    23.0384693145751953125000000", "   -50.7872619628906250000000000" /)
 !!!! Initialize group1409
 group1409 = (/ "    -7.7674531936645507812500000", "   -16.1238517761230468750000000", "   -12.5054988861083984375000000" /)
 !!!! Initialize group1410
 group1410 = (/ "    27.6090030670166015625000000", "    55.5683097839355468750000000", "    68.8301773071289062500000000" /)
 !!!! Initialize group1411
 group1411 = (/ "    16.3315429687500000000000000", "     7.0484638214111328125000000", "     5.6292738914489746093750000" /)
 !!!! Initialize group1412
 group1412 = (/ "   -22.4681739807128906250000000", "   -48.7203369140625000000000000", "   -22.3928737640380859375000000" /)
 !!!! Initialize group1413
 group1413 = (/ "     1.3906233310699462890625000", "    31.8110618591308593750000000", "    -3.8252749443054199218750000" /)
 !!!! Initialize group1414
 group1414 = (/ "    69.9453659057617187500000000", "   -47.1512107849121093750000000", "     4.1064033508300781250000000" /)
 !!!! Initialize group1415
 group1415 = (/ "   109.2942504882812500000000000", "   -30.5205135345458984375000000", "   -28.4839973449707031250000000" /)
 !!!! Initialize group1416
 group1416 = (/ "   -10.1030340194702148437500000", "  -115.5995559692382812500000000", "     4.3985629081726074218750000" /)
 !!!! Initialize group1417
 group1417 = (/ "   -96.6803970336914062500000000", "     9.8815841674804687500000000", "    -6.1687192916870117187500000" /)
 !!!! Initialize group1418
 group1418 = (/ "    49.3220748901367187500000000", "   -12.5066061019897460937500000", "   -47.6999473571777343750000000" /)
 !!!! Initialize group1419
 group1419 = (/ "   -82.6668624877929687500000000", "     8.7027797698974609375000000", "    45.0268859863281250000000000" /)
 !!!! Initialize group1420
 group1420 = (/ "   -35.3935432434082031250000000", "   -47.8611488342285156250000000", "  -115.9939727783203125000000000" /)
 !!!! Initialize group1421
 group1421 = (/ "   -19.8934478759765625000000000", "   -15.1358833312988281250000000", "    41.3392448425292968750000000" /)
 !!!! Initialize group1422
 group1422 = (/ "    -1.1496472358703613281250000", "   -40.0031127929687500000000000", "   -16.6198577880859375000000000" /)
 !!!! Initialize group1423
 group1423 = (/ "   -17.3952732086181640625000000", "    65.4544830322265625000000000", "     6.1159195899963378906250000" /)
 !!!! Initialize group1424
 group1424 = (/ "   -85.0828552246093750000000000", "    71.7041244506835937500000000", "    21.2358760833740234375000000" /)
 !!!! Initialize group1425
 group1425 = (/ "  -101.3980026245117187500000000", "   -69.3809356689453125000000000", "   -38.1270675659179687500000000" /)
 !!!! Initialize group1426
 group1426 = (/ "    12.6774358749389648437500000", "    56.6226882934570312500000000", "   -71.3914871215820312500000000" /)
 !!!! Initialize group1427
 group1427 = (/ "    21.0806522369384765625000000", "   -36.0447158813476562500000000", "    18.0126876831054687500000000" /)
 !!!! Initialize group1428
 group1428 = (/ "     8.6316671371459960937500000", "   -22.7203025817871093750000000", "    25.5561199188232421875000000" /)
 !!!! Initialize group1429
 group1429 = (/ "   -45.1010322570800781250000000", "   -15.1319427490234375000000000", "  -140.1236877441406250000000000" /)
 !!!! Initialize group1430
 group1430 = (/ "    11.5648641586303710937500000", "   142.4321441650390625000000000", "    42.5888862609863281250000000" /)
 !!!! Initialize group1431
 group1431 = (/ "   -50.5155792236328125000000000", "  -147.4296112060546875000000000", "   -88.4468688964843750000000000" /)
 !!!! Initialize group1432
 group1432 = (/ "    27.2121162414550781250000000", "    43.8597183227539062500000000", "   -66.1536636352539062500000000" /)
 !!!! Initialize group1433
 group1433 = (/ "    69.0354232788085937500000000", "    36.9768447875976562500000000", "    49.5454940795898437500000000" /)
 !!!! Initialize group1434
 group1434 = (/ "    50.1289978027343750000000000", "    34.1391448974609375000000000", "    87.4034805297851562500000000" /)
 !!!! Initialize group1435
 group1435 = (/ "   -26.0426578521728515625000000", "   -58.9883842468261718750000000", "    44.7982521057128906250000000" /)
 !!!! Initialize group1436
 group1436 = (/ "     6.6064782142639160156250000", "     5.3070917129516601562500000", "    97.7580413818359375000000000" /)
 !!!! Initialize group1437
 group1437 = (/ "   -16.1339740753173828125000000", "   -31.1840572357177734375000000", "   -48.3215141296386718750000000" /)
 !!!! Initialize group1438
 group1438 = (/ "    69.7877807617187500000000000", "   -34.8733291625976562500000000", "     6.3698253631591796875000000" /)
 !!!! Initialize group1439
 group1439 = (/ "   -20.1605548858642578125000000", "   -33.5124969482421875000000000", "   -53.0561027526855468750000000" /)
 !!!! Initialize group1440
 group1440 = (/ "   -20.5261821746826171875000000", "   -24.3680171966552734375000000", "    83.9227294921875000000000000" /)
 !!!! Initialize group1441
 group1441 = (/ "   -33.0320968627929687500000000", "     5.3923850059509277343750000", "    -7.5652012825012207031250000" /)
 !!!! Initialize group1442
 group1442 = (/ "    12.0955924987792968750000000", "   -17.3445148468017578125000000", "   145.3186340332031250000000000" /)
 !!!! Initialize group1443
 group1443 = (/ "   -58.9349327087402343750000000", "    69.1168289184570312500000000", "    21.8927383422851562500000000" /)
 !!!! Initialize group1444
 group1444 = (/ "    24.5350151062011718750000000", "    32.0134620666503906250000000", "   -38.0041809082031250000000000" /)
 !!!! Initialize group1445
 group1445 = (/ "   -78.7397232055664062500000000", "    49.3306617736816406250000000", "   -19.5125236511230468750000000" /)
 !!!! Initialize group1446
 group1446 = (/ "     5.1120433807373046875000000", "   -66.8857879638671875000000000", "   108.0661468505859375000000000" /)
 !!!! Initialize group1447
 group1447 = (/ "   -49.8164443969726562500000000", "   106.2961425781250000000000000", "    40.3698120117187500000000000" /)
 !!!! Initialize group1448
 group1448 = (/ "   161.0449371337890625000000000", "    61.3194618225097656250000000", "   -43.4034919738769531250000000" /)
 !!!! Initialize group1449
 group1449 = (/ "    43.4456787109375000000000000", "    -9.3206586837768554687500000", "   -73.2086029052734375000000000" /)
 !!!! Initialize group1450
 group1450 = (/ "   -49.9760093688964843750000000", "    -6.3526010513305664062500000", "    -3.4619846343994140625000000" /)
 !!!! Initialize group1451
 group1451 = (/ "    21.0310306549072265625000000", "  -130.3092193603515625000000000", "     2.5779209136962890625000000" /)
 !!!! Initialize group1452
 group1452 = (/ "   -52.9674186706542968750000000", "    41.3517837524414062500000000", "    35.6664123535156250000000000" /)
 !!!! Initialize group1453
 group1453 = (/ "    19.7526473999023437500000000", "   -82.0973663330078125000000000", "   -66.9884796142578125000000000" /)
 !!!! Initialize group1454
 group1454 = (/ "    85.0815277099609375000000000", "    -3.8738207817077636718750000", "   -18.7357826232910156250000000" /)
 !!!! Initialize group1455
 group1455 = (/ "   -11.6345891952514648437500000", "   -19.8733730316162109375000000", "  -102.4556732177734375000000000" /)
 !!!! Initialize group1456
 group1456 = (/ "    -4.8154387474060058593750000", "   -39.5557899475097656250000000", "   -45.7039260864257812500000000" /)
 !!!! Initialize group1457
 group1457 = (/ "   -18.7803802490234375000000000", "    23.6487236022949218750000000", "    -7.2029747962951660156250000" /)
 !!!! Initialize group1458
 group1458 = (/ "   -72.6748352050781250000000000", "     7.4339075088500976562500000", "    -2.3725769519805908203125000" /)
 !!!! Initialize group1459
 group1459 = (/ "   -71.7773284912109375000000000", "   -38.4825515747070312500000000", "    -4.5644178390502929687500000" /)
 !!!! Initialize group1460
 group1460 = (/ "    -0.8476184606552124023437500", "     8.2976398468017578125000000", "    98.9918136596679687500000000" /)
 !!!! Initialize group1461
 group1461 = (/ "    18.6829204559326171875000000", "    -4.6638245582580566406250000", "    30.7434062957763671875000000" /)
 !!!! Initialize group1462
 group1462 = (/ "   -25.2304286956787109375000000", "     5.1886348724365234375000000", "    29.8463592529296875000000000" /)
 !!!! Initialize group1463
 group1463 = (/ "   -72.1494140625000000000000000", "  -197.7288818359375000000000000", "   -55.2817573547363281250000000" /)
 !!!! Initialize group1464
 group1464 = (/ "    58.8010978698730468750000000", "    53.7560310363769531250000000", "     4.2352428436279296875000000" /)
 !!!! Initialize group1465
 group1465 = (/ "  -103.2831497192382812500000000", "   -26.5291767120361328125000000", "    47.1139907836914062500000000" /)
 !!!! Initialize group1466
 group1466 = (/ "   -54.0140304565429687500000000", "    30.0222015380859375000000000", "   -65.7815093994140625000000000" /)
 !!!! Initialize group1467
 group1467 = (/ "   -66.2152557373046875000000000", "     7.0717968940734863281250000", "    78.4529190063476562500000000" /)
 !!!! Initialize group1468
 group1468 = (/ "    -0.7423415184020996093750000", "     6.0951328277587890625000000", "   -31.7555484771728515625000000" /)
 !!!! Initialize group1469
 group1469 = (/ "    -5.3801116943359375000000000", "   -14.8900470733642578125000000", "    25.0419483184814453125000000" /)
 !!!! Initialize group1470
 group1470 = (/ "    10.7929267883300781250000000", "   -37.2066459655761718750000000", "    19.5323238372802734375000000" /)
 !!!! Initialize group1471
 group1471 = (/ "   -30.3593425750732421875000000", "   -36.2343444824218750000000000", "   -12.2634954452514648437500000" /)
 !!!! Initialize group1472
 group1472 = (/ "   -11.7351942062377929687500000", "    17.2700767517089843750000000", "   -54.2032585144042968750000000" /)
 !!!! Initialize group1473
 group1473 = (/ "     8.4076585769653320312500000", "    -7.3677043914794921875000000", "    14.8905849456787109375000000" /)
 !!!! Initialize group1474
 group1474 = (/ "   -40.3009033203125000000000000", "    60.7680206298828125000000000", "    -5.3282270431518554687500000" /)
 !!!! Initialize group1475
 group1475 = (/ "   -51.2537078857421875000000000", "   -19.1543827056884765625000000", "    25.6630630493164062500000000" /)
 !!!! Initialize group1476
 group1476 = (/ "   -32.1118240356445312500000000", "    15.0479001998901367187500000", "    59.9591026306152343750000000" /)
 !!!! Initialize group1477
 group1477 = (/ "    -2.4222836494445800781250000", "     2.4790551662445068359375000", "     1.0990269184112548828125000" /)
 !!!! Initialize group1478
 group1478 = (/ "     6.6332187652587890625000000", "  -138.7775268554687500000000000", "    32.7534523010253906250000000" /)
 !!!! Initialize group1479
 group1479 = (/ "   -19.3421401977539062500000000", "   -23.3220615386962890625000000", "  -117.6221923828125000000000000" /)
 !!!! Initialize group1480
 group1480 = (/ "    35.7045555114746093750000000", "    30.4113979339599609375000000", "   -15.0034770965576171875000000" /)
 !!!! Initialize group1481
 group1481 = (/ "   -73.4780349731445312500000000", "   -19.4879932403564453125000000", "   -20.2091979980468750000000000" /)
 !!!! Initialize group1482
 group1482 = (/ "   -25.1944789886474609375000000", "    -3.7151534557342529296875000", "   -13.9310369491577148437500000" /)
 !!!! Initialize group1483
 group1483 = (/ "    14.6235218048095703125000000", "    19.5512580871582031250000000", "   -86.2162399291992187500000000" /)
 !!!! Initialize group1484
 group1484 = (/ "    50.6175727844238281250000000", "  -120.1791381835937500000000000", "    20.3129081726074218750000000" /)
 !!!! Initialize group1485
 group1485 = (/ "    28.9574775695800781250000000", "    33.8474426269531250000000000", "   -29.8070278167724609375000000" /)
 !!!! Initialize group1486
 group1486 = (/ "   -18.9350719451904296875000000", "    41.5333824157714843750000000", "   -37.9616012573242187500000000" /)
 !!!! Initialize group1487
 group1487 = (/ "    14.1210899353027343750000000", "   -20.2837429046630859375000000", "  -134.0112609863281250000000000" /)
 !!!! Initialize group1488
 group1488 = (/ "   -37.6861076354980468750000000", "   -88.3046264648437500000000000", "    -3.2781620025634765625000000" /)
 !!!! Initialize group1489
 group1489 = (/ "     7.3638591766357421875000000", "   -36.4839096069335937500000000", "    76.3301086425781250000000000" /)
 !!!! Initialize group1490
 group1490 = (/ "     4.8700366020202636718750000", "   -89.1844558715820312500000000", "    18.3338127136230468750000000" /)
 !!!! Initialize group1491
 group1491 = (/ "    82.1113586425781250000000000", "     3.5017757415771484375000000", "   -28.9324970245361328125000000" /)
 !!!! Initialize group1492
 group1492 = (/ "    10.7200927734375000000000000", "   -57.7350730895996093750000000", "     2.9063305854797363281250000" /)
 !!!! Initialize group1493
 group1493 = (/ "   -37.4633789062500000000000000", "   -21.7183055877685546875000000", "   141.2416381835937500000000000" /)
 !!!! Initialize group1494
 group1494 = (/ "     5.5694561004638671875000000", "    49.1915626525878906250000000", "    15.0681362152099609375000000" /)
 !!!! Initialize group1495
 group1495 = (/ "  -114.4703750610351562500000000", "   -95.9253845214843750000000000", "   151.2958984375000000000000000" /)
 !!!! Initialize group1496
 group1496 = (/ "   -99.9643173217773437500000000", "    40.7002258300781250000000000", "  -124.8872604370117187500000000" /)
 !!!! Initialize group1497
 group1497 = (/ "    39.9574050903320312500000000", "     2.7352757453918457031250000", "   -45.6410789489746093750000000" /)
 !!!! Initialize group1498
 group1498 = (/ "     2.4548902511596679687500000", "   -44.3712577819824218750000000", "    13.3978118896484375000000000" /)
 !!!! Initialize group1499
 group1499 = (/ "    34.1589775085449218750000000", "   -58.3004379272460937500000000", "    35.2058868408203125000000000" /)
 !!!! Initialize group1500
 group1500 = (/ "   -52.4050140380859375000000000", "    -2.6579797267913818359375000", "   -11.2146606445312500000000000" /)
 !!!! Initialize group1501
 group1501 = (/ "     2.6893582344055175781250000", "    13.5983228683471679687500000", "     9.9928426742553710937500000" /)
 !!!! Initialize group1502
 group1502 = (/ "    -1.5307023525238037109375000", "    43.1116790771484375000000000", "     3.0338215827941894531250000" /)
 !!!! Initialize group1503
 group1503 = (/ "    24.7295551300048828125000000", "    33.9318161010742187500000000", "    29.6010837554931640625000000" /)
 !!!! Initialize group1504
 group1504 = (/ "   -46.8580055236816406250000000", "    20.0549449920654296875000000", "   -29.1213016510009765625000000" /)
 !!!! Initialize group1505
 group1505 = (/ "    28.5618400573730468750000000", "    26.0704936981201171875000000", "    14.6314888000488281250000000" /)
 !!!! Initialize group1506
 group1506 = (/ "     2.7101359367370605468750000", "    49.5954132080078125000000000", "    84.8313140869140625000000000" /)
 !!!! Initialize group1507
 group1507 = (/ "   -12.9632587432861328125000000", "    25.1600914001464843750000000", "    39.5509223937988281250000000" /)
 !!!! Initialize group1508
 group1508 = (/ "    26.2718524932861328125000000", "    26.1153545379638671875000000", "    19.0865821838378906250000000" /)
 !!!! Initialize group1509
 group1509 = (/ "   -12.8860502243041992187500000", "    -1.9057619571685791015625000", "   -10.7158555984497070312500000" /)
 !!!! Initialize group1510
 group1510 = (/ "   -26.5565795898437500000000000", "   -93.2390975952148437500000000", "    12.8615207672119140625000000" /)
 !!!! Initialize group1511
 group1511 = (/ "  -132.9214477539062500000000000", "    56.4402008056640625000000000", "   -14.2143707275390625000000000" /)
 !!!! Initialize group1512
 group1512 = (/ "    46.1364212036132812500000000", "    36.4304542541503906250000000", "   -34.6413154602050781250000000" /)
 !!!! Initialize group1513
 group1513 = (/ "    11.8925046920776367187500000", "    -8.5648021697998046875000000", "    53.7819061279296875000000000" /)
 !!!! Initialize group1514
 group1514 = (/ "    19.5375194549560546875000000", "    65.1148834228515625000000000", "    43.1420860290527343750000000" /)
 !!!! Initialize group1515
 group1515 = (/ "   -10.3575725555419921875000000", "     6.3338994979858398437500000", "    26.7491302490234375000000000" /)
 !!!! Initialize group1516
 group1516 = (/ "    30.9657649993896484375000000", "     7.9458150863647460937500000", "    33.1509132385253906250000000" /)
 !!!! Initialize group1517
 group1517 = (/ "     2.7670564651489257812500000", "    -8.7018032073974609375000000", "    22.7336826324462890625000000" /)
 !!!! Initialize group1518
 group1518 = (/ "    76.4784927368164062500000000", "    13.9205017089843750000000000", "    23.4494724273681640625000000" /)
 !!!! Initialize group1519
 group1519 = (/ "   -50.9747123718261718750000000", "    -2.7737205028533935546875000", "    46.0328521728515625000000000" /)
 !!!! Initialize group1520
 group1520 = (/ "    -4.3215203285217285156250000", "    -1.6013778448104858398437500", "     9.8942079544067382812500000" /)
 !!!! Initialize group1521
 group1521 = (/ "   -43.9348030090332031250000000", "   -43.2541236877441406250000000", "   -75.8365783691406250000000000" /)
 !!!! Initialize group1522
 group1522 = (/ "     3.3951172828674316406250000", "    57.2105484008789062500000000", "   -19.2945823669433593750000000" /)
 !!!! Initialize group1523
 group1523 = (/ "   -12.9288434982299804687500000", "   -31.2671947479248046875000000", "   -46.2845001220703125000000000" /)
 !!!! Initialize group1524
 group1524 = (/ "   -95.1976318359375000000000000", "    -1.0289714336395263671875000", "   -37.1758575439453125000000000" /)
 !!!! Initialize group1525
 group1525 = (/ "   -53.2229919433593750000000000", "   -12.5749197006225585937500000", "    -1.3407627344131469726562500" /)
 !!!! Initialize group1526
 group1526 = (/ "   184.5166931152343750000000000", "    13.8168268203735351562500000", "   -15.3107843399047851562500000" /)
 !!!! Initialize group1527
 group1527 = (/ "   -64.6278381347656250000000000", "    -1.5686426162719726562500000", "    14.7550954818725585937500000" /)
 !!!! Initialize group1528
 group1528 = (/ "    -3.5279779434204101562500000", "  -125.7815170288085937500000000", "    45.8095626831054687500000000" /)
 !!!! Initialize group1529
 group1529 = (/ "   -57.2737655639648437500000000", "    55.9864578247070312500000000", "    -1.5971646308898925781250000" /)
 !!!! Initialize group1530
 group1530 = (/ "   -49.5332107543945312500000000", "     4.0294618606567382812500000", "    21.8804035186767578125000000" /)
 !!!! Initialize group1531
 group1531 = (/ "   -31.6589393615722656250000000", "    28.6139717102050781250000000", "    75.6710510253906250000000000" /)
 !!!! Initialize group1532
 group1532 = (/ "  -153.7818145751953125000000000", "    38.5381851196289062500000000", "    -7.8233270645141601562500000" /)
 !!!! Initialize group1533
 group1533 = (/ "    36.8131484985351562500000000", "    34.9539756774902343750000000", "    -2.7443106174468994140625000" /)
 !!!! Initialize group1534
 group1534 = (/ "    30.5039920806884765625000000", "   -21.1982460021972656250000000", "   -42.2021026611328125000000000" /)
 !!!! Initialize group1535
 group1535 = (/ "    32.0045356750488281250000000", "    -4.7064528465270996093750000", "    66.6939010620117187500000000" /)
 !!!! Initialize group1536
 group1536 = (/ "    44.0858917236328125000000000", "    39.0422592163085937500000000", "    12.9940299987792968750000000" /)
 !!!! Initialize group1537
 group1537 = (/ "   -42.9646034240722656250000000", "   -17.4345302581787109375000000", "    22.1007061004638671875000000" /)
 !!!! Initialize group1538
 group1538 = (/ "   -47.7453384399414062500000000", "    10.3576412200927734375000000", "   -79.9772720336914062500000000" /)
 !!!! Initialize group1539
 group1539 = (/ "  -102.2752761840820312500000000", "   -31.7457466125488281250000000", "    19.5283927917480468750000000" /)
 !!!! Initialize group1540
 group1540 = (/ "    46.8916816711425781250000000", "    82.0128631591796875000000000", "   -16.9688091278076171875000000" /)
 !!!! Initialize group1541
 group1541 = (/ "     5.5306582450866699218750000", "    -5.4779515266418457031250000", "    83.2448425292968750000000000" /)
 !!!! Initialize group1542
 group1542 = (/ "  -161.2117462158203125000000000", "     1.2158998250961303710937500", "   -44.4096145629882812500000000" /)
 !!!! Initialize group1543
 group1543 = (/ "   -23.7301788330078125000000000", "  -122.3530273437500000000000000", "   -19.1781101226806640625000000" /)
 !!!! Initialize group1544
 group1544 = (/ "   -51.5504493713378906250000000", "   -17.3122539520263671875000000", "   -22.3911685943603515625000000" /)
 !!!! Initialize group1545
 group1545 = (/ "     2.9238371849060058593750000", "    13.3493938446044921875000000", "    -1.6522949934005737304687500" /)
 !!!! Initialize group1546
 group1546 = (/ "    -3.9130849838256835937500000", "    45.6478462219238281250000000", "    -6.7878208160400390625000000" /)
 !!!! Initialize group1547
 group1547 = (/ "    20.3673706054687500000000000", "    -8.8996772766113281250000000", "    82.8237457275390625000000000" /)
 !!!! Initialize group1548
 group1548 = (/ "    20.6883411407470703125000000", "   -25.0180034637451171875000000", "    59.4367065429687500000000000" /)
 !!!! Initialize group1549
 group1549 = (/ "   -61.1925010681152343750000000", "    58.2789077758789062500000000", "   -54.0348167419433593750000000" /)
 !!!! Initialize group1550
 group1550 = (/ "    43.9278945922851562500000000", "    -7.4934344291687011718750000", "     4.0043745040893554687500000" /)
 !!!! Initialize group1551
 group1551 = (/ "   -49.7235298156738281250000000", "   -27.7396469116210937500000000", "   -49.8163452148437500000000000" /)
 !!!! Initialize group1552
 group1552 = (/ "    70.5318069458007812500000000", "   -14.6263761520385742187500000", "     7.5674285888671875000000000" /)
 !!!! Initialize group1553
 group1553 = (/ "   -29.6582279205322265625000000", "    91.9864120483398437500000000", "    11.2788715362548828125000000" /)
 !!!! Initialize group1554
 group1554 = (/ "    -8.0425672531127929687500000", "   -12.1129417419433593750000000", "   -12.4266920089721679687500000" /)
 !!!! Initialize group1555
 group1555 = (/ "   -49.5872001647949218750000000", "    90.4870223999023437500000000", "    52.1963539123535156250000000" /)
 !!!! Initialize group1556
 group1556 = (/ "    68.0017623901367187500000000", "    42.4537315368652343750000000", "    19.0658779144287109375000000" /)
 !!!! Initialize group1557
 group1557 = (/ "   -97.1136550903320312500000000", "   -23.2290496826171875000000000", "    45.6796379089355468750000000" /)
 !!!! Initialize group1558
 group1558 = (/ "  -120.1124267578125000000000000", "   -73.5132141113281250000000000", "   -47.1302986145019531250000000" /)
 !!!! Initialize group1559
 group1559 = (/ "    39.2182083129882812500000000", "   -22.7816219329833984375000000", "    24.6823806762695312500000000" /)
 !!!! Initialize group1560
 group1560 = (/ "    30.8374786376953125000000000", "   -11.4953432083129882812500000", "   119.2308197021484375000000000" /)
 !!!! Initialize group1561
 group1561 = (/ "   -19.2838268280029296875000000", "   -26.3414497375488281250000000", "     8.6738290786743164062500000" /)
 !!!! Initialize group1562
 group1562 = (/ "     3.3719100952148437500000000", "    -4.1569013595581054687500000", "   -52.8649406433105468750000000" /)
 !!!! Initialize group1563
 group1563 = (/ "   -37.0496826171875000000000000", "    17.8396072387695312500000000", "    39.8584861755371093750000000" /)
 !!!! Initialize group1564
 group1564 = (/ "   -14.8519678115844726562500000", "   -12.3054552078247070312500000", "    74.0775909423828125000000000" /)
 !!!! Initialize group1565
 group1565 = (/ "   -24.8952255249023437500000000", "     9.1599321365356445312500000", "     3.3649709224700927734375000" /)
 !!!! Initialize group1566
 group1566 = (/ "    -4.6924695968627929687500000", "   -41.5001869201660156250000000", "    -1.5180929899215698242187500" /)
 !!!! Initialize group1567
 group1567 = (/ "    42.1815643310546875000000000", "    24.7025241851806640625000000", "  -129.9759979248046875000000000" /)
 !!!! Initialize group1568
 group1568 = (/ "    27.7505531311035156250000000", "    35.5314064025878906250000000", "    49.9014778137207031250000000" /)
 !!!! Initialize group1569
 group1569 = (/ "    -6.4857096672058105468750000", "    47.1023445129394531250000000", "    15.8844709396362304687500000" /)
 !!!! Initialize group1570
 group1570 = (/ "  -262.1902770996093750000000000", "    32.1120338439941406250000000", "   -69.6620712280273437500000000" /)
 !!!! Initialize group1571
 group1571 = (/ "    58.9077796936035156250000000", "    77.5241317749023437500000000", "     6.3366222381591796875000000" /)
 !!!! Initialize group1572
 group1572 = (/ "    10.3562698364257812500000000", "    76.8454360961914062500000000", "   -64.9593887329101562500000000" /)
 !!!! Initialize group1573
 group1573 = (/ "     9.9748392105102539062500000", "  -173.8873443603515625000000000", "   -14.5267620086669921875000000" /)
 !!!! Initialize group1574
 group1574 = (/ "   -18.8061923980712890625000000", "     1.2534461021423339843750000", "  -117.4356079101562500000000000" /)
 !!!! Initialize group1575
 group1575 = (/ "    13.0322160720825195312500000", "    50.3514747619628906250000000", "    -9.9358110427856445312500000" /)
 !!!! Initialize group1576
 group1576 = (/ "    -2.4765608310699462890625000", "   -65.7886047363281250000000000", "   -58.0949974060058593750000000" /)
 !!!! Initialize group1577
 group1577 = (/ "   -60.9435501098632812500000000", "    -1.8690321445465087890625000", "  -119.9457397460937500000000000" /)
 !!!! Initialize group1578
 group1578 = (/ "   -13.6597776412963867187500000", "   -87.7817916870117187500000000", "    17.1669120788574218750000000" /)
 !!!! Initialize group1579
 group1579 = (/ "   -51.5128326416015625000000000", "    27.6334247589111328125000000", "    28.6721420288085937500000000" /)
 !!!! Initialize group1580
 group1580 = (/ "   -82.8881683349609375000000000", "   -35.5600776672363281250000000", "   -53.4985771179199218750000000" /)
 !!!! Initialize group1581
 group1581 = (/ "    63.9496231079101562500000000", "     9.4694728851318359375000000", "     3.0060148239135742187500000" /)
 !!!! Initialize group1582
 group1582 = (/ "   -70.8375091552734375000000000", "    46.8782005310058593750000000", "     7.3023295402526855468750000" /)
 !!!! Initialize group1583
 group1583 = (/ "   -50.0681457519531250000000000", "   -20.1332607269287109375000000", "   -47.0618934631347656250000000" /)
 !!!! Initialize group1584
 group1584 = (/ "    57.7771530151367187500000000", "   -32.7585105895996093750000000", "   -38.4342002868652343750000000" /)
 !!!! Initialize group1585
 group1585 = (/ "   -12.4821395874023437500000000", "    -5.1787490844726562500000000", "   -41.9138526916503906250000000" /)
 !!!! Initialize group1586
 group1586 = (/ "   -33.9473495483398437500000000", "   -64.5840759277343750000000000", "    18.2066802978515625000000000" /)
 !!!! Initialize group1587
 group1587 = (/ "    94.0151138305664062500000000", "    67.6504287719726562500000000", "   -60.7468681335449218750000000" /)
 !!!! Initialize group1588
 group1588 = (/ "    68.7792358398437500000000000", "    53.8036117553710937500000000", "    65.2883682250976562500000000" /)
 !!!! Initialize group1589
 group1589 = (/ "   -30.4407749176025390625000000", "    40.7352485656738281250000000", "   -29.3011283874511718750000000" /)
 !!!! Initialize group1590
 group1590 = (/ "   -41.3603706359863281250000000", "    18.4569187164306640625000000", "    25.0963630676269531250000000" /)
 !!!! Initialize group1591
 group1591 = (/ "    30.9901905059814453125000000", "    27.6170158386230468750000000", "   -23.8943576812744140625000000" /)
 !!!! Initialize group1592
 group1592 = (/ "   -46.5608596801757812500000000", "    56.8215255737304687500000000", "     2.3167896270751953125000000" /)
 !!!! Initialize group1593
 group1593 = (/ "   -23.4674758911132812500000000", "    29.0362873077392578125000000", "    96.8839111328125000000000000" /)
 !!!! Initialize group1594
 group1594 = (/ "    29.4801044464111328125000000", "     2.5189845561981201171875000", "    20.2059040069580078125000000" /)
 !!!! Initialize group1595
 group1595 = (/ "   -33.0815162658691406250000000", "   -27.7216777801513671875000000", "     3.5499653816223144531250000" /)
 !!!! Initialize group1596
 group1596 = (/ "   -54.1265068054199218750000000", "    20.0974140167236328125000000", "    -2.1096348762512207031250000" /)
 !!!! Initialize group1597
 group1597 = (/ "    -2.0693733692169189453125000", "   -83.9395828247070312500000000", "   -11.8500185012817382812500000" /)
 !!!! Initialize group1598
 group1598 = (/ "    44.3711700439453125000000000", "   -28.2345237731933593750000000", "   -18.8333282470703125000000000" /)
 !!!! Initialize group1599
 group1599 = (/ "   -75.9348220825195312500000000", "    21.5659923553466796875000000", "    -2.0890278816223144531250000" /)
 !!!! Initialize group1600
 group1600 = (/ "   -71.1123809814453125000000000", "   -10.0112085342407226562500000", "   -60.9344329833984375000000000" /)
 !!!! Initialize group1601
 group1601 = (/ "   -72.6657714843750000000000000", "   -10.3839073181152343750000000", "   -20.8289318084716796875000000" /)
 !!!! Initialize group1602
 group1602 = (/ "   -28.9738483428955078125000000", "   -13.8108768463134765625000000", "    60.4029235839843750000000000" /)
 !!!! Initialize group1603
 group1603 = (/ "    61.5943031311035156250000000", "   -51.1621208190917968750000000", "   -13.3086700439453125000000000" /)
 !!!! Initialize group1604
 group1604 = (/ "   -14.2499418258666992187500000", "   102.0686569213867187500000000", "    -6.3702917098999023437500000" /)
 !!!! Initialize group1605
 group1605 = (/ "    15.9933862686157226562500000", "    71.5119781494140625000000000", "   136.3336181640625000000000000" /)
 !!!! Initialize group1606
 group1606 = (/ "    57.2190208435058593750000000", "    74.0163726806640625000000000", "  -117.9187011718750000000000000" /)
 !!!! Initialize group1607
 group1607 = (/ "   -16.2856502532958984375000000", "     9.0592269897460937500000000", "     2.8654510974884033203125000" /)
 !!!! Initialize group1608
 group1608 = (/ "    34.2334403991699218750000000", "    55.4514350891113281250000000", "     7.0166378021240234375000000" /)
 !!!! Initialize group1609
 group1609 = (/ "    -3.2220742702484130859375000", "   -10.4899015426635742187500000", "   -21.1598415374755859375000000" /)
 !!!! Initialize group1610
 group1610 = (/ "     7.6353359222412109375000000", "     3.7673223018646240234375000", "   -64.1417999267578125000000000" /)
 !!!! Initialize group1611
 group1611 = (/ "     1.2561647891998291015625000", "   -73.1116104125976562500000000", "    68.3651657104492187500000000" /)
 !!!! Initialize group1612
 group1612 = (/ "    15.8706741333007812500000000", "     2.4478995800018310546875000", "   101.1337738037109375000000000" /)
 !!!! Initialize group1613
 group1613 = (/ "    -1.6445873975753784179687500", "    44.2466926574707031250000000", "   -70.8002014160156250000000000" /)
 !!!! Initialize group1614
 group1614 = (/ "     2.6411297321319580078125000", "     3.1853532791137695312500000", "    -2.5982768535614013671875000" /)
 !!!! Initialize group1615
 group1615 = (/ "    17.7562294006347656250000000", "   -21.0562248229980468750000000", "    -2.3583819866180419921875000" /)
 !!!! Initialize group1616
 group1616 = (/ "    62.6785545349121093750000000", "     5.0002617835998535156250000", "    23.8101806640625000000000000" /)
 !!!! Initialize group1617
 group1617 = (/ "     4.0903444290161132812500000", "   -18.1170997619628906250000000", "     4.5846571922302246093750000" /)
 !!!! Initialize group1618
 group1618 = (/ "    23.4305038452148437500000000", "    85.6547012329101562500000000", "     2.0508439540863037109375000" /)
 !!!! Initialize group1619
 group1619 = (/ "    26.2195396423339843750000000", "     3.8463599681854248046875000", "    21.9908866882324218750000000" /)
 !!!! Initialize group1620
 group1620 = (/ "     2.4981522560119628906250000", "   -23.3464488983154296875000000", "    -2.2709858417510986328125000" /)
 !!!! Initialize group1621
 group1621 = (/ "    -9.2193775177001953125000000", "    85.9789810180664062500000000", "     3.3753464221954345703125000" /)
 !!!! Initialize group1622
 group1622 = (/ "     0.7949997186660766601562500", "    10.1464862823486328125000000", "   -37.7405090332031250000000000" /)
 !!!! Initialize group1623
 group1623 = (/ "   -11.7286758422851562500000000", "    -4.7248263359069824218750000", "    -0.6464492082595825195312500" /)
 !!!! Initialize group1624
 group1624 = (/ "   -42.7876663208007812500000000", "    -3.3728768825531005859375000", "    70.1014022827148437500000000" /)
 !!!! Initialize group1625
 group1625 = (/ "   -24.1896572113037109375000000", "    11.6285657882690429687500000", "     2.1987845897674560546875000" /)
 !!!! Initialize group1626
 group1626 = (/ "    -0.5633730292320251464843750", "     9.6008348464965820312500000", "    13.8107728958129882812500000" /)
 !!!! Initialize group1627
 group1627 = (/ "   -20.4110107421875000000000000", "     1.0711487531661987304687500", "    52.8936576843261718750000000" /)
 !!!! Initialize group1628
 group1628 = (/ "    46.4532089233398437500000000", "    63.1058998107910156250000000", "     0.2217268049716949462890625" /)
 !!!! Initialize group1629
 group1629 = (/ "   -40.5744934082031250000000000", "  -137.1905822753906250000000000", "     2.8723893165588378906250000" /)
 !!!! Initialize group1630
 group1630 = (/ "   -26.9317607879638671875000000", "     2.9750297069549560546875000", "    38.6278648376464843750000000" /)
 !!!! Initialize group1631
 group1631 = (/ "     0.2195118963718414306640625", "   -72.4418487548828125000000000", "    76.8785247802734375000000000" /)
 !!!! Initialize group1632
 group1632 = (/ "    21.7794914245605468750000000", "   -54.8884086608886718750000000", "    10.1826400756835937500000000" /)
 !!!! Initialize group1633
 group1633 = (/ "    29.5763149261474609375000000", "    -1.3123668432235717773437500", "     6.0472097396850585937500000" /)
 !!!! Initialize group1634
 group1634 = (/ "   200.5403594970703125000000000", "    25.6655673980712890625000000", "   -67.3635406494140625000000000" /)
 !!!! Initialize group1635
 group1635 = (/ "    -6.2116298675537109375000000", "   101.2473297119140625000000000", "    -3.1537346839904785156250000" /)
 !!!! Initialize group1636
 group1636 = (/ "     0.0784889459609985351562500", "    20.9266223907470703125000000", "    33.5235519409179687500000000" /)
 !!!! Initialize group1637
 group1637 = (/ "  -154.5786437988281250000000000", "   -22.1326427459716796875000000", "     3.1036283969879150390625000" /)
 !!!! Initialize group1638
 group1638 = (/ "    99.1401214599609375000000000", "    -0.8094909787178039550781250", "    35.2585716247558593750000000" /)
 !!!! Initialize group1639
 group1639 = (/ "    -0.3424182832241058349609375", "    74.8715362548828125000000000", "   -39.9187965393066406250000000" /)
 !!!! Initialize group1640
 group1640 = (/ "     0.1215514689683914184570312", "   -92.3988876342773437500000000", "    -6.5317950248718261718750000" /)
 !!!! Initialize group1641
 group1641 = (/ "   105.5229339599609375000000000", "     9.9768257141113281250000000", "   -22.7198390960693359375000000" /)
 !!!! Initialize group1642
 group1642 = (/ "   130.6935424804687500000000000", "     3.6024549007415771484375000", "   -23.4676876068115234375000000" /)
 !!!! Initialize group1643
 group1643 = (/ "    -1.4645489454269409179687500", "    39.2729034423828125000000000", "     0.8539593815803527832031250" /)
 !!!! Initialize group1644
 group1644 = (/ "   -19.5329418182373046875000000", "   -52.3573913574218750000000000", "     9.9560642242431640625000000" /)
 !!!! Initialize group1645
 group1645 = (/ "    27.1908416748046875000000000", "    -3.5987873077392578125000000", "     8.4236164093017578125000000" /)
 !!!! Initialize group1646
 group1646 = (/ "     2.3849351406097412109375000", "    33.1190414428710937500000000", "    37.1356353759765625000000000" /)
 !!!! Initialize group1647
 group1647 = (/ "   -68.0520172119140625000000000", "    46.1991577148437500000000000", "    -5.4303073883056640625000000" /)
 !!!! Initialize group1648
 group1648 = (/ "  -159.5190277099609375000000000", "    -2.0028326511383056640625000", "  -151.5586242675781250000000000" /)
 !!!! Initialize group1649
 group1649 = (/ "     2.3733768463134765625000000", "     3.4430932998657226562500000", "   -56.1926727294921875000000000" /)
 !!!! Initialize group1650
 group1650 = (/ "     2.4866054058074951171875000", "    16.3257484436035156250000000", "     1.4770779609680175781250000" /)
 !!!! Initialize group1651
 group1651 = (/ "     2.2682185173034667968750000", "    -9.3273687362670898437500000", "     1.6403949260711669921875000" /)
 !!!! Initialize group1652
 group1652 = (/ "    21.8050975799560546875000000", "    -8.2615242004394531250000000", "   -44.4143486022949218750000000" /)
 !!!! Initialize group1653
 group1653 = (/ "   -74.9856567382812500000000000", "     3.4170188903808593750000000", "    59.2891235351562500000000000" /)
 !!!! Initialize group1654
 group1654 = (/ "    -0.2438468933105468750000000", "   -73.2901306152343750000000000", "   121.8336868286132812500000000" /)
 !!!! Initialize group1655
 group1655 = (/ "   -49.1468009948730468750000000", "   -26.6212368011474609375000000", "    27.5286293029785156250000000" /)
 !!!! Initialize group1656
 group1656 = (/ "    28.0747108459472656250000000", "    -0.2684806287288665771484375", "     9.0036058425903320312500000" /)
 !!!! Initialize group1657
 group1657 = (/ "    39.3763236999511718750000000", "    11.3083086013793945312500000", "     1.2848597764968872070312500" /)
 !!!! Initialize group1658
 group1658 = (/ "    -2.8240973949432373046875000", "    98.8899993896484375000000000", "  -163.2226715087890625000000000" /)
 !!!! Initialize group1659
 group1659 = (/ "   -50.9966659545898437500000000", "   -27.3232212066650390625000000", "    -0.1545816957950592041015625" /)
 !!!! Initialize group1660
 group1660 = (/ "    -6.7262086868286132812500000", "    24.1683712005615234375000000", "    50.6375122070312500000000000" /)
 !!!! Initialize group1661
 group1661 = (/ "   -16.5397224426269531250000000", "     0.5492386221885681152343750", "   -28.4865512847900390625000000" /)
 !!!! Initialize group1662
 group1662 = (/ "     1.7340469360351562500000000", "   -16.8372707366943359375000000", "   -71.1012268066406250000000000" /)
 !!!! Initialize group1663
 group1663 = (/ "    30.6537284851074218750000000", "   -23.2573928833007812500000000", "   280.8426818847656250000000000" /)
 !!!! Initialize group1664
 group1664 = (/ "   -49.5237693786621093750000000", "     1.4782972335815429687500000", "   -76.1417160034179687500000000" /)
 !!!! Initialize group1665
 group1665 = (/ "   -22.4592704772949218750000000", "   -23.7186279296875000000000000", "   -55.5368003845214843750000000" /)
 !!!! Initialize group1666
 group1666 = (/ "    -2.9915442466735839843750000", "   -88.1470413208007812500000000", "   102.6974487304687500000000000" /)
 !!!! Initialize group1667
 group1667 = (/ "   144.5808105468750000000000000", "    -1.6790150403976440429687500", "   -55.0400276184082031250000000" /)
 !!!! Initialize group1668
 group1668 = (/ "     3.7439193725585937500000000", "   -24.5325202941894531250000000", "   -44.1702880859375000000000000" /)
 !!!! Initialize group1669
 group1669 = (/ "   107.7342453002929687500000000", "     0.2407162785530090332031250", "     3.0042531490325927734375000" /)
 !!!! Initialize group1670
 group1670 = (/ "    30.6314697265625000000000000", "    50.6970176696777343750000000", "    46.7018051147460937500000000" /)
 !!!! Initialize group1671
 group1671 = (/ "     8.2608861923217773437500000", "   105.0561752319335937500000000", "     0.8927106857299804687500000" /)
 !!!! Initialize group1672
 group1672 = (/ "    -2.2477960586547851562500000", "    87.6768112182617187500000000", "     4.9286971092224121093750000" /)
 !!!! Initialize group1673
 group1673 = (/ "    -1.7303428649902343750000000", "    -0.9971437454223632812500000", "    23.0870857238769531250000000" /)
 !!!! Initialize group1674
 group1674 = (/ "   -12.9559583663940429687500000", "    60.2680435180664062500000000", "    30.3307437896728515625000000" /)
 !!!! Initialize group1675
 group1675 = (/ "    27.6731281280517578125000000", "    -4.1266136169433593750000000", "     1.0730975866317749023437500" /)
 !!!! Initialize group1676
 group1676 = (/ "    -2.5359647274017333984375000", "    -5.9650707244873046875000000", "    24.9740104675292968750000000" /)
 !!!! Initialize group1677
 group1677 = (/ "   -42.2134437561035156250000000", "    -2.2367641925811767578125000", "   -12.5490760803222656250000000" /)
 !!!! Initialize group1678
 group1678 = (/ "    23.1430664062500000000000000", "    14.5064001083374023437500000", "    -4.3510766029357910156250000" /)
 !!!! Initialize group1679
 group1679 = (/ "    -4.3632769584655761718750000", "     8.2672233581542968750000000", "   -32.3172645568847656250000000" /)
 !!!! Initialize group1680
 group1680 = (/ "    30.3703556060791015625000000", "    -4.4035339355468750000000000", "     3.3042945861816406250000000" /)
 !!!! Initialize group1681
 group1681 = (/ "    10.9643392562866210937500000", "   -34.3328018188476562500000000", "   -24.1217384338378906250000000" /)
 !!!! Initialize group1682
 group1682 = (/ "     2.8850998878479003906250000", "   -61.3495140075683593750000000", "    -0.4643656909465789794921875" /)
 !!!! Initialize group1683
 group1683 = (/ "    51.4621505737304687500000000", "   -13.9837779998779296875000000", "     2.6419618129730224609375000" /)
 !!!! Initialize group1684
 group1684 = (/ "     1.8675724267959594726562500", "    -9.3695383071899414062500000", "    44.9997138977050781250000000" /)
 !!!! Initialize group1685
 group1685 = (/ "    12.9743633270263671875000000", "    -2.2090661525726318359375000", "     0.4927337765693664550781250" /)
 !!!! Initialize group1686
 group1686 = (/ "   -52.6484565734863281250000000", "    -9.4931945800781250000000000", "  -115.6470260620117187500000000" /)
 !!!! Initialize group1687
 group1687 = (/ "     3.2231628894805908203125000", "     0.4321861863136291503906250", "     7.3806762695312500000000000" /)
 !!!! Initialize group1688
 group1688 = (/ "    16.2852210998535156250000000", "    20.7832851409912109375000000", "   -20.0130176544189453125000000" /)
 !!!! Initialize group1689
 group1689 = (/ "    -0.4707701802253723144531250", "   224.8232421875000000000000000", "   -51.3320960998535156250000000" /)
 !!!! Initialize group1690
 group1690 = (/ "    13.4129314422607421875000000", "     1.3277735710144042968750000", "     4.0325822830200195312500000" /)
 !!!! Initialize group1691
 group1691 = (/ "    42.9740219116210937500000000", "    34.7392349243164062500000000", "    52.3214073181152343750000000" /)
	
	! Assian groups to the groups array
	groups(0, :) = group0
	groups(1, :) = group1
	groups(2, :) = group2
	groups(3, :) = group3
	groups(4, :) = group4
	groups(5, :) = group5
	groups(6, :) = group6
	groups(7, :) = group7
	groups(8, :) = group8
	groups(9, :) = group9
	groups(10, :) = group10 	! The group shift's right... Down for EVIL DOERS! if your a induction thingy... but your not One so 1
	groups(11, :) = group11		! Signaling my intentions way in advance.... If your still on one
	groups(12, :) = group12
	groups(13, :) = group13
	groups(14, :) = group14
	groups(15, :) = group15
	groups(16, :) = group16
	groups(17, :) = group17
	groups(18, :) = group18
	groups(19, :) = group19
	groups(20, :) = group20
	groups(21, :) = group21
	groups(22, :) = group22
	groups(23, :) = group23
	groups(24, :) = group24
	groups(25, :) = group25
	groups(26, :) = group26
	groups(27, :) = group27
	groups(28, :) = group28
	groups(29, :) = group29
	groups(30, :) = group30
	groups(31, :) = group31
	groups(32, :) = group32
	groups(33, :) = group33
	groups(34, :) = group34
	groups(35, :) = group35
	groups(36, :) = group36
	groups(37, :) = group37
	groups(38, :) = group38
	groups(39, :) = group39
	groups(40, :) = group40
	groups(41, :) = group41
	groups(42, :) = group42
	groups(43, :) = group43
	groups(44, :) = group44
	groups(45, :) = group45
	groups(46, :) = group46
	groups(47, :) = group47
	groups(48, :) = group48
	groups(49, :) = group49
	groups(50, :) = group50
	groups(51, :) = group51
	groups(52, :) = group52
	groups(53, :) = group53
	groups(54, :) = group54
	groups(55, :) = group55
	groups(56, :) = group56
	groups(57, :) = group57
	groups(58, :) = group58
	groups(59, :) = group59
	groups(60, :) = group60
	groups(61, :) = group61
	groups(62, :) = group62
	groups(63, :) = group63
	groups(64, :) = group64
	groups(65, :) = group65
	groups(66, :) = group66
	groups(67, :) = group67
	groups(68, :) = group68
	groups(69, :) = group69
	groups(70, :) = group70
	groups(71, :) = group71
	groups(72, :) = group72
	groups(73, :) = group73
	groups(74, :) = group74
	groups(75, :) = group75
	groups(76, :) = group76
	groups(77, :) = group77
	groups(78, :) = group78
	groups(79, :) = group79
	groups(80, :) = group80
	groups(81, :) = group81
	groups(82, :) = group82
	groups(83, :) = group83
	groups(84, :) = group84
	groups(85, :) = group85
	groups(86, :) = group86
	groups(87, :) = group87
	groups(88, :) = group88
	groups(89, :) = group89
	groups(90, :) = group90
	groups(91, :) = group91
	groups(92, :) = group92
	groups(93, :) = group93
	groups(94, :) = group94		! Yea it's not important down here I just wanted you to see it moves here too, or will on 100.
	groups(95, :) = group95
	groups(96, :) = group96
	groups(97, :) = group97
	groups(98, :) = group98
	groups(99, :) = group99
	groups(100, :) = group100		! Anyway, as for how far we WILL go... I think 333,333 total groups is a good number...
	groups(101, :) = group101		! So what, thats like group333332 or something, right?
	groups(102, :) = group102		! And group100 was two
	groups(103, :) = group103
	groups(104, :) = group104
	groups(105, :) = group105
	groups(106, :) = group106
	groups(107, :) = group107
	groups(108, :) = group108
	groups(109, :) = group109
	groups(110, :) = group110
	groups(111, :) = group111
	groups(112, :) = group112
	groups(113, :) = group113
	groups(114, :) = group114
	groups(115, :) = group115
	groups(116, :) = group116
	groups(117, :) = group117
	groups(118, :) = group118
	groups(119, :) = group119
	groups(120, :) = group120
	groups(121, :) = group121
	groups(122, :) = group122
	groups(123, :) = group123
	groups(124, :) = group124
	groups(125, :) = group125
	groups(126, :) = group126
	groups(127, :) = group127
	groups(128, :) = group128
	groups(129, :) = group129
	groups(130, :) = group130
	groups(131, :) = group131
	groups(132, :) = group132
	groups(133, :) = group133
	groups(134, :) = group134
	groups(135, :) = group135
	groups(136, :) = group136
	groups(137, :) = group137
	groups(138, :) = group138
	groups(139, :) = group139
	groups(140, :) = group140
	groups(141, :) = group141
	groups(142, :) = group142
	groups(143, :) = group143
	groups(144, :) = group144
	groups(145, :) = group145
	groups(146, :) = group146
	groups(147, :) = group147
	groups(148, :) = group148
	groups(149, :) = group149
	groups(150, :) = group150
	groups(151, :) = group151
	groups(152, :) = group152
	groups(153, :) = group153
	groups(154, :) = group154
	groups(155, :) = group155
	groups(156, :) = group156
	groups(157, :) = group157
	groups(158, :) = group158
	groups(159, :) = group159
	groups(160, :) = group160
	groups(161, :) = group161
	groups(162, :) = group162
	groups(163, :) = group163
	groups(164, :) = group164
	groups(165, :) = group165
	groups(166, :) = group166
	groups(167, :) = group167
	groups(168, :) = group168
	groups(169, :) = group169
	groups(170, :) = group170
	groups(171, :) = group171
	groups(172, :) = group172
	groups(173, :) = group173
	groups(174, :) = group174
	groups(175, :) = group175
	groups(176, :) = group176
	groups(177, :) = group177
	groups(178, :) = group178
	groups(179, :) = group179
	groups(180, :) = group180
	groups(181, :) = group181
	groups(182, :) = group182
	groups(183, :) = group183
	groups(184, :) = group184
	groups(185, :) = group185
	groups(186, :) = group186
	groups(187, :) = group187
	groups(188, :) = group188
	groups(189, :) = group189
	groups(190, :) = group190
	groups(191, :) = group191
	groups(192, :) = group192
	groups(193, :) = group193
	groups(194, :) = group194
	groups(195, :) = group195
	groups(196, :) = group196
	groups(197, :) = group197
	groups(198, :) = group198
	groups(199, :) = group199
	groups(200, :) = group200
	groups(201, :) = group201
	groups(202, :) = group202
	groups(203, :) = group203
	groups(204, :) = group204
	groups(205, :) = group205
	groups(206, :) = group206
	groups(207, :) = group207
	groups(208, :) = group208
	groups(209, :) = group209
	groups(210, :) = group210
	groups(211, :) = group211
	groups(212, :) = group212
	groups(213, :) = group213
	groups(214, :) = group214
	groups(215, :) = group215
	groups(216, :) = group216
	groups(217, :) = group217
	groups(218, :) = group218
	groups(219, :) = group219
	groups(220, :) = group220
	groups(221, :) = group221
	groups(222, :) = group222
	groups(223, :) = group223
	groups(224, :) = group224
	groups(225, :) = group225
	groups(226, :) = group226
	groups(227, :) = group227
	groups(228, :) = group228
	groups(229, :) = group229
	groups(230, :) = group230
	groups(231, :) = group231
	groups(232, :) = group232
	groups(233, :) = group233
	groups(234, :) = group234
	groups(235, :) = group235
	groups(236, :) = group236
	groups(237, :) = group237
	groups(238, :) = group238
	groups(239, :) = group239
	groups(240, :) = group240
	groups(241, :) = group241
	groups(242, :) = group242
	groups(243, :) = group243
	groups(244, :) = group244
	groups(245, :) = group245
	groups(246, :) = group246
	groups(247, :) = group247
	groups(248, :) = group248
	groups(249, :) = group249
	groups(250, :) = group250
	groups(251, :) = group251
	groups(252, :) = group252
	groups(253, :) = group253
	groups(254, :) = group254
	groups(255, :) = group255
	groups(256, :) = group256
	groups(257, :) = group257
	groups(258, :) = group258
	groups(259, :) = group259
	groups(260, :) = group260
	groups(261, :) = group261
	groups(262, :) = group262
	groups(263, :) = group263
	groups(264, :) = group264
	groups(265, :) = group265
	groups(266, :) = group266
	groups(267, :) = group267
	groups(268, :) = group268
	groups(269, :) = group269
	groups(270, :) = group270
	groups(271, :) = group271
	groups(272, :) = group272
	groups(273, :) = group273
	groups(274, :) = group274
	groups(275, :) = group275
	groups(276, :) = group276
	groups(277, :) = group277
	groups(278, :) = group278
	groups(279, :) = group279
	groups(280, :) = group280
	groups(281, :) = group281
	groups(282, :) = group282
	groups(283, :) = group283
	groups(284, :) = group284
	groups(285, :) = group285
	groups(286, :) = group286
	groups(287, :) = group287
	groups(288, :) = group288
	groups(289, :) = group289
	groups(290, :) = group290
	groups(291, :) = group291
	groups(292, :) = group292
	groups(293, :) = group293
	groups(294, :) = group294
	groups(295, :) = group295
	groups(296, :) = group296
	groups(297, :) = group297
	groups(298, :) = group298
	groups(299, :) = group299
	groups(300, :) = group300
	groups(301, :) = group301
	groups(302, :) = group302
	groups(303, :) = group303
	groups(304, :) = group304
	groups(305, :) = group305
	groups(306, :) = group306
	groups(307, :) = group307
	groups(308, :) = group308
	groups(309, :) = group309
	groups(310, :) = group310
	groups(311, :) = group311
	groups(312, :) = group312
	groups(313, :) = group313
	groups(314, :) = group314
	groups(315, :) = group315
	groups(316, :) = group316
	groups(317, :) = group317
	groups(318, :) = group318
	groups(319, :) = group319
	groups(320, :) = group320
	groups(321, :) = group321
	groups(322, :) = group322
	groups(323, :) = group323
	groups(324, :) = group324
	groups(325, :) = group325
	groups(326, :) = group326
	groups(327, :) = group327
	groups(328, :) = group328
	groups(329, :) = group329
	groups(330, :) = group330
	groups(331, :) = group331
	groups(332, :) = group332
	groups(333, :) = group333
	groups(334, :) = group334
	groups(335, :) = group335
	groups(336, :) = group336
	groups(337, :) = group337
	groups(338, :) = group338
	groups(339, :) = group339
	groups(340, :) = group340
	groups(341, :) = group341
	groups(342, :) = group342
	groups(343, :) = group343
	groups(344, :) = group344
	groups(345, :) = group345
	groups(346, :) = group346
	groups(347, :) = group347
	groups(348, :) = group348
	groups(349, :) = group349
	groups(350, :) = group350
	groups(351, :) = group351
	groups(352, :) = group352
	groups(353, :) = group353
	groups(354, :) = group354
	groups(355, :) = group355
	groups(356, :) = group356
	groups(357, :) = group357
	groups(358, :) = group358
	groups(359, :) = group359
	groups(360, :) = group360
	groups(361, :) = group361
	groups(362, :) = group362
	groups(363, :) = group363
	groups(364, :) = group364
	groups(365, :) = group365
	groups(366, :) = group366
	groups(367, :) = group367
	groups(368, :) = group368
	groups(369, :) = group369
	groups(370, :) = group370
	groups(371, :) = group371
	groups(372, :) = group372
	groups(373, :) = group373
	groups(374, :) = group374
	groups(375, :) = group375
	groups(376, :) = group376
	groups(377, :) = group377
	groups(378, :) = group378
	groups(379, :) = group379
	groups(380, :) = group380
	groups(381, :) = group381
	groups(382, :) = group382
	groups(383, :) = group383
	groups(384, :) = group384
	groups(385, :) = group385
	groups(386, :) = group386
	groups(387, :) = group387
	groups(388, :) = group388
	groups(389, :) = group389
	groups(390, :) = group390
	groups(391, :) = group391
	groups(392, :) = group392
	groups(393, :) = group393
	groups(394, :) = group394
	groups(395, :) = group395
	groups(396, :) = group396
	groups(397, :) = group397
	groups(398, :) = group398
	groups(399, :) = group399
	groups(400, :) = group400
	groups(401, :) = group401
	groups(402, :) = group402
	groups(403, :) = group403
	groups(404, :) = group404
	groups(405, :) = group405
	groups(406, :) = group406
	groups(407, :) = group407
	groups(408, :) = group408
	groups(409, :) = group409
	groups(410, :) = group410
	groups(411, :) = group411
	groups(412, :) = group412
	groups(413, :) = group413
	groups(414, :) = group414
	groups(415, :) = group415
	groups(416, :) = group416
	groups(417, :) = group417
	groups(418, :) = group418
	groups(419, :) = group419
	groups(420, :) = group420
	groups(421, :) = group421
	groups(422, :) = group422
	groups(423, :) = group423
	groups(424, :) = group424
	groups(425, :) = group425
	groups(426, :) = group426
	groups(427, :) = group427
	groups(428, :) = group428
	groups(429, :) = group429
	groups(430, :) = group430
	groups(431, :) = group431
	groups(432, :) = group432
	groups(433, :) = group433
	groups(434, :) = group434
	groups(435, :) = group435
	groups(436, :) = group436
	groups(437, :) = group437
	groups(438, :) = group438
	groups(439, :) = group439
	groups(440, :) = group440
	groups(441, :) = group441
	groups(442, :) = group442
	groups(443, :) = group443
	groups(444, :) = group444
	groups(445, :) = group445
	groups(446, :) = group446
	groups(447, :) = group447
	groups(448, :) = group448
	groups(449, :) = group449
	groups(450, :) = group450
	groups(451, :) = group451
	groups(452, :) = group452
	groups(453, :) = group453
	groups(454, :) = group454
	groups(455, :) = group455
	groups(456, :) = group456
	groups(457, :) = group457
	groups(458, :) = group458
	groups(459, :) = group459
	groups(460, :) = group460
	groups(461, :) = group461
	groups(462, :) = group462
	groups(463, :) = group463
	groups(464, :) = group464
	groups(465, :) = group465
	groups(466, :) = group466
	groups(467, :) = group467
	groups(468, :) = group468
	groups(469, :) = group469
	groups(470, :) = group470
	groups(471, :) = group471
	groups(472, :) = group472
	groups(473, :) = group473
	groups(474, :) = group474
	groups(475, :) = group475
	groups(476, :) = group476
	groups(477, :) = group477
	groups(478, :) = group478
	groups(479, :) = group479
	groups(480, :) = group480
	groups(481, :) = group481
	groups(482, :) = group482
	groups(483, :) = group483
	groups(484, :) = group484
	groups(485, :) = group485
	groups(486, :) = group486
	groups(487, :) = group487
	groups(488, :) = group488
	groups(489, :) = group489
	groups(490, :) = group490
	groups(491, :) = group491
	groups(492, :) = group492
	groups(493, :) = group493
	groups(494, :) = group494
	groups(495, :) = group495
	groups(496, :) = group496
	groups(497, :) = group497
	groups(498, :) = group498
	groups(499, :) = group499
	groups(500, :) = group500
	groups(501, :) = group501
	groups(502, :) = group502
	groups(503, :) = group503
	groups(504, :) = group504
	groups(505, :) = group505
	groups(506, :) = group506
	groups(507, :) = group507
	groups(508, :) = group508
	groups(509, :) = group509
	groups(510, :) = group510
	groups(511, :) = group511
	groups(512, :) = group512
	groups(513, :) = group513
	groups(514, :) = group514
	groups(515, :) = group515
	groups(516, :) = group516
	groups(517, :) = group517
	groups(518, :) = group518
	groups(519, :) = group519
	groups(520, :) = group520
	groups(521, :) = group521
	groups(522, :) = group522
	groups(523, :) = group523
	groups(524, :) = group524
	groups(525, :) = group525
	groups(526, :) = group526
	groups(527, :) = group527
	groups(528, :) = group528
	groups(529, :) = group529
	groups(530, :) = group530
	groups(531, :) = group531
	groups(532, :) = group532
	groups(533, :) = group533
	groups(534, :) = group534
	groups(535, :) = group535
	groups(536, :) = group536
	groups(537, :) = group537
	groups(538, :) = group538
	groups(539, :) = group539
	groups(540, :) = group540
	groups(541, :) = group541
	groups(542, :) = group542
	groups(543, :) = group543
	groups(544, :) = group544
	groups(545, :) = group545
	groups(546, :) = group546
	groups(547, :) = group547
	groups(548, :) = group548
	groups(549, :) = group549
	groups(550, :) = group550
	groups(551, :) = group551
	groups(552, :) = group552
	groups(553, :) = group553
	groups(554, :) = group554
	groups(555, :) = group555
	groups(556, :) = group556
	groups(557, :) = group557
	groups(558, :) = group558
	groups(559, :) = group559
	groups(560, :) = group560
	groups(561, :) = group561
	groups(562, :) = group562
	groups(563, :) = group563
	groups(564, :) = group564
	groups(565, :) = group565
	groups(566, :) = group566
	groups(567, :) = group567
	groups(568, :) = group568
	groups(569, :) = group569
	groups(570, :) = group570
	groups(571, :) = group571
	groups(572, :) = group572
	groups(573, :) = group573
	groups(574, :) = group574
	groups(575, :) = group575
	groups(576, :) = group576
	groups(577, :) = group577
	groups(578, :) = group578
	groups(579, :) = group579
	groups(580, :) = group580
	groups(581, :) = group581
	groups(582, :) = group582
	groups(583, :) = group583
	groups(584, :) = group584
	groups(585, :) = group585
	groups(586, :) = group586
	groups(587, :) = group587
	groups(588, :) = group588
	groups(589, :) = group589
	groups(590, :) = group590
	groups(591, :) = group591
	groups(592, :) = group592
	groups(593, :) = group593
	groups(594, :) = group594
	groups(595, :) = group595
	groups(596, :) = group596
	groups(597, :) = group597
	groups(598, :) = group598
	groups(599, :) = group599
	groups(600, :) = group600
	groups(601, :) = group601
	groups(602, :) = group602
	groups(603, :) = group603
	groups(604, :) = group604
	groups(605, :) = group605
	groups(606, :) = group606
	groups(607, :) = group607
	groups(608, :) = group608
	groups(609, :) = group609
	groups(610, :) = group610
	groups(611, :) = group611
	groups(612, :) = group612
	groups(613, :) = group613
	groups(614, :) = group614
	groups(615, :) = group615
	groups(616, :) = group616
	groups(617, :) = group617
	groups(618, :) = group618
	groups(619, :) = group619
	groups(620, :) = group620
	groups(621, :) = group621
	groups(622, :) = group622
	groups(623, :) = group623
	groups(624, :) = group624
	groups(625, :) = group625
	groups(626, :) = group626
	groups(627, :) = group627
	groups(628, :) = group628
	groups(629, :) = group629
	groups(630, :) = group630
	groups(631, :) = group631
	groups(632, :) = group632
	groups(633, :) = group633
	groups(634, :) = group634
	groups(635, :) = group635
	groups(636, :) = group636
	groups(637, :) = group637
	groups(638, :) = group638
	groups(639, :) = group639
	groups(640, :) = group640
	groups(641, :) = group641
	groups(642, :) = group642
	groups(643, :) = group643
	groups(644, :) = group644
	groups(645, :) = group645
	groups(646, :) = group646
	groups(647, :) = group647
	groups(648, :) = group648
	groups(649, :) = group649
	groups(650, :) = group650
	groups(651, :) = group651
	groups(652, :) = group652
	groups(653, :) = group653
	groups(654, :) = group654
	groups(655, :) = group655
	groups(656, :) = group656
	groups(657, :) = group657
	groups(658, :) = group658
	groups(659, :) = group659
	groups(660, :) = group660
	groups(661, :) = group661
	groups(662, :) = group662
	groups(663, :) = group663
	groups(664, :) = group664
	groups(665, :) = group665
	groups(666, :) = group666
	groups(667, :) = group667
	groups(668, :) = group668
	groups(669, :) = group669
	groups(670, :) = group670
	groups(671, :) = group671
	groups(672, :) = group672
	groups(673, :) = group673
	groups(674, :) = group674
	groups(675, :) = group675
	groups(676, :) = group676
	groups(677, :) = group677
	groups(678, :) = group678
	groups(679, :) = group679
	groups(680, :) = group680
	groups(681, :) = group681
	groups(682, :) = group682
	groups(683, :) = group683
	groups(684, :) = group684
	groups(685, :) = group685
	groups(686, :) = group686
	groups(687, :) = group687
	groups(688, :) = group688
	groups(689, :) = group689
	groups(690, :) = group690
	groups(691, :) = group691
	groups(692, :) = group692
	groups(693, :) = group693
	groups(694, :) = group694
	groups(695, :) = group695
	groups(696, :) = group696
	groups(697, :) = group697
	groups(698, :) = group698
	groups(699, :) = group699
	groups(700, :) = group700
	groups(701, :) = group701
	groups(702, :) = group702
	groups(703, :) = group703
	groups(704, :) = group704
	groups(705, :) = group705
	groups(706, :) = group706
	groups(707, :) = group707
	groups(708, :) = group708
	groups(709, :) = group709
	groups(710, :) = group710
	groups(711, :) = group711
	groups(712, :) = group712
	groups(713, :) = group713
	groups(714, :) = group714
	groups(715, :) = group715
	groups(716, :) = group716
	groups(717, :) = group717
	groups(718, :) = group718
	groups(719, :) = group719
	groups(720, :) = group720
	groups(721, :) = group721
	groups(722, :) = group722
	groups(723, :) = group723
	groups(724, :) = group724
	groups(725, :) = group725
	groups(726, :) = group726
	groups(727, :) = group727
	groups(728, :) = group728
	groups(729, :) = group729
	groups(730, :) = group730
	groups(731, :) = group731
	groups(732, :) = group732
	groups(733, :) = group733
	groups(734, :) = group734
	groups(735, :) = group735
	groups(736, :) = group736
	groups(737, :) = group737
	groups(738, :) = group738
	groups(739, :) = group739
	groups(740, :) = group740
	groups(741, :) = group741
	groups(742, :) = group742
	groups(743, :) = group743
	groups(744, :) = group744
	groups(745, :) = group745
	groups(746, :) = group746
	groups(747, :) = group747
	groups(748, :) = group748
	groups(749, :) = group749
	groups(750, :) = group750
	groups(751, :) = group751
	groups(752, :) = group752
	groups(753, :) = group753
	groups(754, :) = group754
	groups(755, :) = group755
	groups(756, :) = group756
	groups(757, :) = group757
	groups(758, :) = group758
	groups(759, :) = group759
	groups(760, :) = group760
	groups(761, :) = group761
	groups(762, :) = group762
	groups(763, :) = group763
	groups(764, :) = group764
	groups(765, :) = group765
	groups(766, :) = group766
	groups(767, :) = group767
	groups(768, :) = group768
	groups(769, :) = group769
	groups(770, :) = group770
	groups(771, :) = group771
	groups(772, :) = group772
	groups(773, :) = group773
	groups(774, :) = group774
	groups(775, :) = group775
	groups(776, :) = group776
	groups(777, :) = group777
	groups(778, :) = group778
	groups(779, :) = group779
	groups(780, :) = group780
	groups(781, :) = group781
	groups(782, :) = group782
	groups(783, :) = group783
	groups(784, :) = group784
	groups(785, :) = group785
	groups(786, :) = group786
	groups(787, :) = group787
	groups(788, :) = group788
	groups(789, :) = group789
	groups(790, :) = group790
	groups(791, :) = group791
	groups(792, :) = group792
	groups(793, :) = group793
	groups(794, :) = group794
	groups(795, :) = group795
	groups(796, :) = group796
	groups(797, :) = group797
	groups(798, :) = group798
	groups(799, :) = group799
	groups(800, :) = group800
	groups(801, :) = group801
	groups(802, :) = group802
	groups(803, :) = group803
	groups(804, :) = group804
	groups(805, :) = group805
	groups(806, :) = group806
	groups(807, :) = group807
	groups(808, :) = group808
	groups(809, :) = group809
	groups(810, :) = group810
	groups(811, :) = group811
	groups(812, :) = group812
	groups(813, :) = group813
	groups(814, :) = group814
	groups(815, :) = group815
	groups(816, :) = group816
	groups(817, :) = group817
	groups(818, :) = group818
	groups(819, :) = group819
	groups(820, :) = group820
	groups(821, :) = group821
	groups(822, :) = group822
	groups(823, :) = group823
	groups(824, :) = group824
	groups(825, :) = group825
	groups(826, :) = group826
	groups(827, :) = group827
	groups(828, :) = group828
	groups(829, :) = group829
	groups(830, :) = group830
	groups(831, :) = group831
	groups(832, :) = group832
	groups(833, :) = group833
	groups(834, :) = group834
	groups(835, :) = group835
	groups(836, :) = group836
	groups(837, :) = group837
	groups(838, :) = group838
	groups(839, :) = group839
	groups(840, :) = group840
	groups(841, :) = group841
	groups(842, :) = group842
	groups(843, :) = group843
	groups(844, :) = group844
	groups(845, :) = group845
	groups(846, :) = group846
	groups(847, :) = group847
	groups(848, :) = group848
	groups(849, :) = group849
	groups(850, :) = group850
	groups(851, :) = group851
	groups(852, :) = group852
	groups(853, :) = group853
	groups(854, :) = group854
	groups(855, :) = group855
	groups(856, :) = group856
	groups(857, :) = group857
	groups(858, :) = group858
	groups(859, :) = group859
	groups(860, :) = group860
	groups(861, :) = group861
	groups(862, :) = group862
	groups(863, :) = group863
	groups(864, :) = group864
	groups(865, :) = group865
	groups(866, :) = group866
	groups(867, :) = group867
	groups(868, :) = group868
	groups(869, :) = group869
	groups(870, :) = group870
	groups(871, :) = group871
	groups(872, :) = group872
	groups(873, :) = group873
	groups(874, :) = group874
	groups(875, :) = group875
	groups(876, :) = group876
	groups(877, :) = group877
	groups(878, :) = group878
	groups(879, :) = group879
	groups(880, :) = group880
	groups(881, :) = group881
	groups(882, :) = group882
	groups(883, :) = group883
	groups(884, :) = group884
	groups(885, :) = group885
	groups(886, :) = group886
	groups(887, :) = group887
	groups(888, :) = group888
	groups(889, :) = group889
	groups(890, :) = group890
	groups(891, :) = group891
	groups(892, :) = group892
	groups(893, :) = group893
	groups(894, :) = group894
	groups(895, :) = group895
	groups(896, :) = group896
	groups(897, :) = group897
	groups(898, :) = group898
	groups(899, :) = group899
	groups(900, :) = group900
	groups(901, :) = group901
	groups(902, :) = group902
	groups(903, :) = group903
	groups(904, :) = group904
	groups(905, :) = group905
	groups(906, :) = group906
	groups(907, :) = group907
	groups(908, :) = group908
	groups(909, :) = group909
	groups(910, :) = group910
	groups(911, :) = group911
	groups(912, :) = group912
	groups(913, :) = group913
	groups(914, :) = group914
	groups(915, :) = group915
	groups(916, :) = group916
	groups(917, :) = group917
	groups(918, :) = group918
	groups(919, :) = group919
	groups(920, :) = group920
	groups(921, :) = group921
	groups(922, :) = group922
	groups(923, :) = group923
	groups(924, :) = group924
	groups(925, :) = group925
	groups(926, :) = group926
	groups(927, :) = group927
	groups(928, :) = group928
	groups(929, :) = group929
	groups(930, :) = group930
	groups(931, :) = group931
	groups(932, :) = group932
	groups(933, :) = group933
	groups(934, :) = group934
	groups(935, :) = group935
	groups(936, :) = group936
	groups(937, :) = group937
	groups(938, :) = group938
	groups(939, :) = group939
	groups(940, :) = group940
	groups(941, :) = group941
	groups(942, :) = group942
	groups(943, :) = group943
	groups(944, :) = group944
	groups(945, :) = group945
	groups(946, :) = group946
	groups(947, :) = group947
	groups(948, :) = group948
	groups(949, :) = group949
	groups(950, :) = group950
	groups(951, :) = group951
	groups(952, :) = group952
	groups(953, :) = group953
	groups(954, :) = group954
	groups(955, :) = group955
	groups(956, :) = group956
	groups(957, :) = group957
	groups(958, :) = group958
	groups(959, :) = group959
	groups(960, :) = group960
	groups(961, :) = group961
	groups(962, :) = group962
	groups(963, :) = group963
	groups(964, :) = group964
	groups(965, :) = group965
	groups(966, :) = group966
	groups(967, :) = group967
	groups(968, :) = group968
	groups(969, :) = group969
	groups(970, :) = group970
	groups(971, :) = group971
	groups(972, :) = group972
	groups(973, :) = group973
	groups(974, :) = group974
	groups(975, :) = group975
	groups(976, :) = group976
	groups(977, :) = group977
	groups(978, :) = group978
	groups(979, :) = group979
	groups(980, :) = group980
	groups(981, :) = group981
	groups(982, :) = group982
	groups(983, :) = group983
	groups(984, :) = group984
	groups(985, :) = group985
	groups(986, :) = group986
	groups(987, :) = group987
	groups(988, :) = group988
	groups(989, :) = group989
	groups(990, :) = group990
	groups(991, :) = group991
	groups(992, :) = group992
	groups(993, :) = group993
	groups(994, :) = group994
	groups(995, :) = group995
	groups(996, :) = group996
	groups(997, :) = group997
	groups(998, :) = group998
	groups(999, :) = group999
	groups(1000, :) = group1000		! And just too note the same number shifts to the right here, and the number is 3 times now.
	groups(1001, :) = group1001
	groups(1002, :) = group1002
	groups(1003, :) = group1003
	groups(1004, :) = group1004
	groups(1005, :) = group1005
	groups(1006, :) = group1006
	groups(1007, :) = group1007
	groups(1008, :) = group1008
	groups(1009, :) = group1009
	groups(1010, :) = group1010
	groups(1011, :) = group1011
	groups(1012, :) = group1012
	groups(1013, :) = group1013
	groups(1014, :) = group1014
	groups(1015, :) = group1015
	groups(1016, :) = group1016
	groups(1017, :) = group1017
	groups(1018, :) = group1018
	groups(1019, :) = group1019
	groups(1020, :) = group1020
	groups(1021, :) = group1021
	groups(1022, :) = group1022
	groups(1023, :) = group1023
	groups(1024, :) = group1024
	groups(1025, :) = group1025
	groups(1026, :) = group1026
	groups(1027, :) = group1027
	groups(1028, :) = group1028
	groups(1029, :) = group1029
	groups(1030, :) = group1030
	groups(1031, :) = group1031
	groups(1032, :) = group1032
	groups(1033, :) = group1033
	groups(1034, :) = group1034
	groups(1035, :) = group1035
	groups(1036, :) = group1036
	groups(1037, :) = group1037
	groups(1038, :) = group1038
	groups(1039, :) = group1039
	groups(1040, :) = group1040
	groups(1041, :) = group1041
	groups(1042, :) = group1042
	groups(1043, :) = group1043
	groups(1044, :) = group1044
	groups(1045, :) = group1045
	groups(1046, :) = group1046
	groups(1047, :) = group1047
	groups(1048, :) = group1048
	groups(1049, :) = group1049
	groups(1050, :) = group1050
	groups(1051, :) = group1051
	groups(1052, :) = group1052
	groups(1053, :) = group1053
	groups(1054, :) = group1054
	groups(1055, :) = group1055
	groups(1056, :) = group1056
	groups(1057, :) = group1057
	groups(1058, :) = group1058
	groups(1059, :) = group1059
	groups(1060, :) = group1060
	groups(1061, :) = group1061
	groups(1062, :) = group1062
	groups(1063, :) = group1063
	groups(1064, :) = group1064
	groups(1065, :) = group1065
	groups(1066, :) = group1066
	groups(1067, :) = group1067
	groups(1068, :) = group1068
	groups(1069, :) = group1069
	groups(1070, :) = group1070
	groups(1071, :) = group1071
	groups(1072, :) = group1072
	groups(1073, :) = group1073
	groups(1074, :) = group1074
	groups(1075, :) = group1075
	groups(1076, :) = group1076
	groups(1077, :) = group1077
	groups(1078, :) = group1078
	groups(1079, :) = group1079
	groups(1080, :) = group1080
	groups(1081, :) = group1081
	groups(1082, :) = group1082
	groups(1083, :) = group1083
	groups(1084, :) = group1084
	groups(1085, :) = group1085
	groups(1086, :) = group1086
	groups(1087, :) = group1087
	groups(1088, :) = group1088
	groups(1089, :) = group1089
	groups(1090, :) = group1090
	groups(1091, :) = group1091
	groups(1092, :) = group1092
	groups(1093, :) = group1093
	groups(1094, :) = group1094
	groups(1095, :) = group1095
	groups(1096, :) = group1096
	groups(1097, :) = group1097
	groups(1098, :) = group1098
	groups(1099, :) = group1099
	groups(1100, :) = group1100
	groups(1101, :) = group1101
	groups(1102, :) = group1102
	groups(1103, :) = group1103
	groups(1104, :) = group1104
	groups(1105, :) = group1105
	groups(1106, :) = group1106
	groups(1107, :) = group1107
	groups(1108, :) = group1108
	groups(1109, :) = group1109
	groups(1110, :) = group1110
	groups(1111, :) = group1111
	groups(1112, :) = group1112
	groups(1113, :) = group1113
	groups(1114, :) = group1114
	groups(1115, :) = group1115
	groups(1116, :) = group1116
	groups(1117, :) = group1117
	groups(1118, :) = group1118
	groups(1119, :) = group1119
	groups(1120, :) = group1120
	groups(1121, :) = group1121
	groups(1122, :) = group1122
	groups(1123, :) = group1123
	groups(1124, :) = group1124
	groups(1125, :) = group1125
	groups(1126, :) = group1126
	groups(1127, :) = group1127
	groups(1128, :) = group1128
	groups(1129, :) = group1129
	groups(1130, :) = group1130
	groups(1131, :) = group1131
	groups(1132, :) = group1132
	groups(1133, :) = group1133
	groups(1134, :) = group1134
	groups(1135, :) = group1135
	groups(1136, :) = group1136
	groups(1137, :) = group1137
	groups(1138, :) = group1138
	groups(1139, :) = group1139
	groups(1140, :) = group1140
	groups(1141, :) = group1141
	groups(1142, :) = group1142
	groups(1143, :) = group1143
	groups(1144, :) = group1144
	groups(1145, :) = group1145
	groups(1146, :) = group1146
	groups(1147, :) = group1147
	groups(1148, :) = group1148
	groups(1149, :) = group1149
	groups(1150, :) = group1150
	groups(1151, :) = group1151
	groups(1152, :) = group1152
	groups(1153, :) = group1153
	groups(1154, :) = group1154
	groups(1155, :) = group1155
	groups(1156, :) = group1156
	groups(1157, :) = group1157
	groups(1158, :) = group1158
	groups(1159, :) = group1159
	groups(1160, :) = group1160
	groups(1161, :) = group1161
	groups(1162, :) = group1162
	groups(1163, :) = group1163
	groups(1164, :) = group1164
	groups(1165, :) = group1165
	groups(1166, :) = group1166
	groups(1167, :) = group1167
	groups(1168, :) = group1168
	groups(1169, :) = group1169
	groups(1170, :) = group1170
	groups(1171, :) = group1171
	groups(1172, :) = group1172
	groups(1173, :) = group1173
	groups(1174, :) = group1174
	groups(1175, :) = group1175
	groups(1176, :) = group1176
	groups(1177, :) = group1177
	groups(1178, :) = group1178
	groups(1179, :) = group1179
	groups(1180, :) = group1180
	groups(1181, :) = group1181
	groups(1182, :) = group1182
	groups(1183, :) = group1183
	groups(1184, :) = group1184
	groups(1185, :) = group1185
	groups(1186, :) = group1186
	groups(1187, :) = group1187
	groups(1188, :) = group1188
	groups(1189, :) = group1189
	groups(1190, :) = group1190
	groups(1191, :) = group1191
	groups(1192, :) = group1192
	groups(1193, :) = group1193
	groups(1194, :) = group1194
	groups(1195, :) = group1195
	groups(1196, :) = group1196
	groups(1197, :) = group1197
	groups(1198, :) = group1198
	groups(1199, :) = group1199
	groups(1200, :) = group1200
	groups(1201, :) = group1201
	groups(1202, :) = group1202
	groups(1203, :) = group1203
	groups(1204, :) = group1204
	groups(1205, :) = group1205
	groups(1206, :) = group1206
	groups(1207, :) = group1207
	groups(1208, :) = group1208
	groups(1209, :) = group1209
	groups(1210, :) = group1210
	groups(1211, :) = group1211
	groups(1212, :) = group1212
	groups(1213, :) = group1213
	groups(1214, :) = group1214
	groups(1215, :) = group1215
	groups(1216, :) = group1216
	groups(1217, :) = group1217
	groups(1218, :) = group1218
	groups(1219, :) = group1219
	groups(1220, :) = group1220
	groups(1221, :) = group1221
	groups(1222, :) = group1222
	groups(1223, :) = group1223
	groups(1224, :) = group1224
	groups(1225, :) = group1225
	groups(1226, :) = group1226
	groups(1227, :) = group1227
	groups(1228, :) = group1228
	groups(1229, :) = group1229
	groups(1230, :) = group1230
	groups(1231, :) = group1231
	groups(1232, :) = group1232
	groups(1233, :) = group1233
	groups(1234, :) = group1234
	groups(1235, :) = group1235
	groups(1236, :) = group1236
	groups(1237, :) = group1237
	groups(1238, :) = group1238
	groups(1239, :) = group1239
	groups(1240, :) = group1240
	groups(1241, :) = group1241
	groups(1242, :) = group1242
	groups(1243, :) = group1243
	groups(1244, :) = group1244
	groups(1245, :) = group1245
	groups(1246, :) = group1246
	groups(1247, :) = group1247
	groups(1248, :) = group1248
	groups(1249, :) = group1249
	groups(1250, :) = group1250
	groups(1251, :) = group1251
	groups(1252, :) = group1252
	groups(1253, :) = group1253
	groups(1254, :) = group1254
	groups(1255, :) = group1255
	groups(1256, :) = group1256
	groups(1257, :) = group1257
	groups(1258, :) = group1258
	groups(1259, :) = group1259
	groups(1260, :) = group1260
	groups(1261, :) = group1261
	groups(1262, :) = group1262
	groups(1263, :) = group1263
	groups(1264, :) = group1264
	groups(1265, :) = group1265
	groups(1266, :) = group1266
	groups(1267, :) = group1267
	groups(1268, :) = group1268
	groups(1269, :) = group1269
	groups(1270, :) = group1270
	groups(1271, :) = group1271
	groups(1272, :) = group1272
	groups(1273, :) = group1273
	groups(1274, :) = group1274
	groups(1275, :) = group1275
	groups(1276, :) = group1276
	groups(1277, :) = group1277
	groups(1278, :) = group1278
	groups(1279, :) = group1279
	groups(1280, :) = group1280
	groups(1281, :) = group1281
	groups(1282, :) = group1282
	groups(1283, :) = group1283
	groups(1284, :) = group1284
	groups(1285, :) = group1285
	groups(1286, :) = group1286
	groups(1287, :) = group1287
	groups(1288, :) = group1288
	groups(1289, :) = group1289
	groups(1290, :) = group1290
	groups(1291, :) = group1291
	groups(1292, :) = group1292
	groups(1293, :) = group1293
	groups(1294, :) = group1294
	groups(1295, :) = group1295
	groups(1296, :) = group1296
	groups(1297, :) = group1297
	groups(1298, :) = group1298
	groups(1299, :) = group1299
	groups(1300, :) = group1300
	groups(1301, :) = group1301
	groups(1302, :) = group1302
	groups(1303, :) = group1303
	groups(1304, :) = group1304
	groups(1305, :) = group1305
	groups(1306, :) = group1306
	groups(1307, :) = group1307
	groups(1308, :) = group1308
	groups(1309, :) = group1309
	groups(1310, :) = group1310
	groups(1311, :) = group1311
	groups(1312, :) = group1312
	groups(1313, :) = group1313
	groups(1314, :) = group1314
	groups(1315, :) = group1315
	groups(1316, :) = group1316
	groups(1317, :) = group1317
	groups(1318, :) = group1318
	groups(1319, :) = group1319
	groups(1320, :) = group1320
	groups(1321, :) = group1321
	groups(1322, :) = group1322
	groups(1323, :) = group1323
	groups(1324, :) = group1324
	groups(1325, :) = group1325
	groups(1326, :) = group1326
	groups(1327, :) = group1327
	groups(1328, :) = group1328
	groups(1329, :) = group1329
	groups(1330, :) = group1330
	groups(1331, :) = group1331
	groups(1332, :) = group1332
	groups(1333, :) = group1333
	groups(1334, :) = group1334
	groups(1335, :) = group1335
	groups(1336, :) = group1336
	groups(1337, :) = group1337
	groups(1338, :) = group1338
	groups(1339, :) = group1339
	groups(1340, :) = group1340
	groups(1341, :) = group1341
	groups(1342, :) = group1342
	groups(1343, :) = group1343
	groups(1344, :) = group1344
	groups(1345, :) = group1345
	groups(1346, :) = group1346
	groups(1347, :) = group1347
	groups(1348, :) = group1348
	groups(1349, :) = group1349
	groups(1350, :) = group1350
	groups(1351, :) = group1351
	groups(1352, :) = group1352
	groups(1353, :) = group1353
	groups(1354, :) = group1354
	groups(1355, :) = group1355
	groups(1356, :) = group1356
	groups(1357, :) = group1357
	groups(1358, :) = group1358
	groups(1359, :) = group1359
	groups(1360, :) = group1360
	groups(1361, :) = group1361
	groups(1362, :) = group1362
	groups(1363, :) = group1363
	groups(1364, :) = group1364
	groups(1365, :) = group1365
	groups(1366, :) = group1366
	groups(1367, :) = group1367
	groups(1368, :) = group1368
	groups(1369, :) = group1369
	groups(1370, :) = group1370
	groups(1371, :) = group1371
	groups(1372, :) = group1372
	groups(1373, :) = group1373
	groups(1374, :) = group1374
	groups(1375, :) = group1375
	groups(1376, :) = group1376
	groups(1377, :) = group1377
	groups(1378, :) = group1378
	groups(1379, :) = group1379
	groups(1380, :) = group1380
	groups(1381, :) = group1381
	groups(1382, :) = group1382
	groups(1383, :) = group1383
	groups(1384, :) = group1384
	groups(1385, :) = group1385
	groups(1386, :) = group1386
	groups(1387, :) = group1387
	groups(1388, :) = group1388
	groups(1389, :) = group1389
	groups(1390, :) = group1390
	groups(1391, :) = group1391
	groups(1392, :) = group1392
	groups(1393, :) = group1393
	groups(1394, :) = group1394
	groups(1395, :) = group1395
	groups(1396, :) = group1396
	groups(1397, :) = group1397
	groups(1398, :) = group1398
	groups(1399, :) = group1399
	groups(1400, :) = group1400
	groups(1401, :) = group1401
	groups(1402, :) = group1402
	groups(1403, :) = group1403
	groups(1404, :) = group1404
	groups(1405, :) = group1405
	groups(1406, :) = group1406
	groups(1407, :) = group1407
	groups(1408, :) = group1408
	groups(1409, :) = group1409
	groups(1410, :) = group1410
	groups(1411, :) = group1411
	groups(1412, :) = group1412
	groups(1413, :) = group1413
	groups(1414, :) = group1414
	groups(1415, :) = group1415
	groups(1416, :) = group1416
	groups(1417, :) = group1417
	groups(1418, :) = group1418
	groups(1419, :) = group1419
	groups(1420, :) = group1420
	groups(1421, :) = group1421
	groups(1422, :) = group1422
	groups(1423, :) = group1423
	groups(1424, :) = group1424
	groups(1425, :) = group1425
	groups(1426, :) = group1426
	groups(1427, :) = group1427
	groups(1428, :) = group1428
	groups(1429, :) = group1429
	groups(1430, :) = group1430
	groups(1431, :) = group1431
	groups(1432, :) = group1432
	groups(1433, :) = group1433
	groups(1434, :) = group1434
	groups(1435, :) = group1435
	groups(1436, :) = group1436
	groups(1437, :) = group1437
	groups(1438, :) = group1438
	groups(1439, :) = group1439
	groups(1440, :) = group1440
	groups(1441, :) = group1441
	groups(1442, :) = group1442
	groups(1443, :) = group1443
	groups(1444, :) = group1444
	groups(1445, :) = group1445
	groups(1446, :) = group1446
	groups(1447, :) = group1447
	groups(1448, :) = group1448
	groups(1449, :) = group1449
	groups(1450, :) = group1450
	groups(1451, :) = group1451
	groups(1452, :) = group1452
	groups(1453, :) = group1453
	groups(1454, :) = group1454
	groups(1455, :) = group1455
	groups(1456, :) = group1456
	groups(1457, :) = group1457
	groups(1458, :) = group1458
	groups(1459, :) = group1459
	groups(1460, :) = group1460
	groups(1461, :) = group1461
	groups(1462, :) = group1462
	groups(1463, :) = group1463
	groups(1464, :) = group1464
	groups(1465, :) = group1465
	groups(1466, :) = group1466
	groups(1467, :) = group1467
	groups(1468, :) = group1468
	groups(1469, :) = group1469
	groups(1470, :) = group1470
	groups(1471, :) = group1471
	groups(1472, :) = group1472
	groups(1473, :) = group1473
	groups(1474, :) = group1474
	groups(1475, :) = group1475
	groups(1476, :) = group1476
	groups(1477, :) = group1477
	groups(1478, :) = group1478
	groups(1479, :) = group1479
	groups(1480, :) = group1480
	groups(1481, :) = group1481
	groups(1482, :) = group1482
	groups(1483, :) = group1483
	groups(1484, :) = group1484
	groups(1485, :) = group1485
	groups(1486, :) = group1486
	groups(1487, :) = group1487
	groups(1488, :) = group1488
	groups(1489, :) = group1489
	groups(1490, :) = group1490
	groups(1491, :) = group1491
	groups(1492, :) = group1492
	groups(1493, :) = group1493
	groups(1494, :) = group1494
	groups(1495, :) = group1495
	groups(1496, :) = group1496
	groups(1497, :) = group1497
	groups(1498, :) = group1498
	groups(1499, :) = group1499
	groups(1500, :) = group1500
	groups(1501, :) = group1501
	groups(1502, :) = group1502
	groups(1503, :) = group1503
	groups(1504, :) = group1504
	groups(1505, :) = group1505
	groups(1506, :) = group1506
	groups(1507, :) = group1507
	groups(1508, :) = group1508
	groups(1509, :) = group1509
	groups(1510, :) = group1510
	groups(1511, :) = group1511
	groups(1512, :) = group1512
	groups(1513, :) = group1513
	groups(1514, :) = group1514
	groups(1515, :) = group1515
	groups(1516, :) = group1516
	groups(1517, :) = group1517
	groups(1518, :) = group1518
	groups(1519, :) = group1519
	groups(1520, :) = group1520
	groups(1521, :) = group1521
	groups(1522, :) = group1522
	groups(1523, :) = group1523
	groups(1524, :) = group1524
	groups(1525, :) = group1525
	groups(1526, :) = group1526
	groups(1527, :) = group1527
	groups(1528, :) = group1528
	groups(1529, :) = group1529
	groups(1530, :) = group1530
	groups(1531, :) = group1531
	groups(1532, :) = group1532
	groups(1533, :) = group1533
	groups(1534, :) = group1534
	groups(1535, :) = group1535
	groups(1536, :) = group1536
	groups(1537, :) = group1537
	groups(1538, :) = group1538
	groups(1539, :) = group1539
	groups(1540, :) = group1540
	groups(1541, :) = group1541
	groups(1542, :) = group1542
	groups(1543, :) = group1543
	groups(1544, :) = group1544
	groups(1545, :) = group1545
	groups(1546, :) = group1546
	groups(1547, :) = group1547
	groups(1548, :) = group1548
	groups(1549, :) = group1549
	groups(1550, :) = group1550
	groups(1551, :) = group1551
	groups(1552, :) = group1552
	groups(1553, :) = group1553
	groups(1554, :) = group1554
	groups(1555, :) = group1555
	groups(1556, :) = group1556
	groups(1557, :) = group1557
	groups(1558, :) = group1558
	groups(1559, :) = group1559
	groups(1560, :) = group1560
	groups(1561, :) = group1561
	groups(1562, :) = group1562
	groups(1563, :) = group1563
	groups(1564, :) = group1564
	groups(1565, :) = group1565
	groups(1566, :) = group1566
	groups(1567, :) = group1567
	groups(1568, :) = group1568
	groups(1569, :) = group1569
	groups(1570, :) = group1570
	groups(1571, :) = group1571
	groups(1572, :) = group1572
	groups(1573, :) = group1573
	groups(1574, :) = group1574
	groups(1575, :) = group1575
	groups(1576, :) = group1576
	groups(1577, :) = group1577
	groups(1578, :) = group1578
	groups(1579, :) = group1579
	groups(1580, :) = group1580
	groups(1581, :) = group1581
	groups(1582, :) = group1582
	groups(1583, :) = group1583
	groups(1584, :) = group1584
	groups(1585, :) = group1585
	groups(1586, :) = group1586
	groups(1587, :) = group1587
	groups(1588, :) = group1588
	groups(1589, :) = group1589
	groups(1590, :) = group1590
	groups(1591, :) = group1591
	groups(1592, :) = group1592
	groups(1593, :) = group1593
	groups(1594, :) = group1594
	groups(1595, :) = group1595
	groups(1596, :) = group1596
	groups(1597, :) = group1597
	groups(1598, :) = group1598
	groups(1599, :) = group1599
	groups(1600, :) = group1600
	groups(1601, :) = group1601
	groups(1602, :) = group1602
	groups(1603, :) = group1603
	groups(1604, :) = group1604
	groups(1605, :) = group1605
	groups(1606, :) = group1606
	groups(1607, :) = group1607
	groups(1608, :) = group1608
	groups(1609, :) = group1609
	groups(1610, :) = group1610
	groups(1611, :) = group1611
	groups(1612, :) = group1612
	groups(1613, :) = group1613
	groups(1614, :) = group1614
	groups(1615, :) = group1615
	groups(1616, :) = group1616
	groups(1617, :) = group1617
	groups(1618, :) = group1618
	groups(1619, :) = group1619
	groups(1620, :) = group1620
	groups(1621, :) = group1621
	groups(1622, :) = group1622
	groups(1623, :) = group1623
	groups(1624, :) = group1624
	groups(1625, :) = group1625
	groups(1626, :) = group1626
	groups(1627, :) = group1627
	groups(1628, :) = group1628
	groups(1629, :) = group1629
	groups(1630, :) = group1630
	groups(1631, :) = group1631
	groups(1632, :) = group1632
	groups(1633, :) = group1633
	groups(1634, :) = group1634
	groups(1635, :) = group1635
	groups(1636, :) = group1636
	groups(1637, :) = group1637
	groups(1638, :) = group1638
	groups(1639, :) = group1639
	groups(1640, :) = group1640
	groups(1641, :) = group1641
	groups(1642, :) = group1642
	groups(1643, :) = group1643
	groups(1644, :) = group1644
	groups(1645, :) = group1645
	groups(1646, :) = group1646
	groups(1647, :) = group1647
	groups(1648, :) = group1648
	groups(1649, :) = group1649
	groups(1650, :) = group1650
	groups(1651, :) = group1651
	groups(1652, :) = group1652
	groups(1653, :) = group1653
	groups(1654, :) = group1654
	groups(1655, :) = group1655
	groups(1656, :) = group1656
	groups(1657, :) = group1657
	groups(1658, :) = group1658
	groups(1659, :) = group1659
	groups(1660, :) = group1660
	groups(1661, :) = group1661
	groups(1662, :) = group1662
	groups(1663, :) = group1663
	groups(1664, :) = group1664
	groups(1665, :) = group1665
	groups(1666, :) = group1666
	groups(1667, :) = group1667
	groups(1668, :) = group1668
	groups(1669, :) = group1669
	groups(1670, :) = group1670
	groups(1671, :) = group1671
	groups(1672, :) = group1672
	groups(1673, :) = group1673
	groups(1674, :) = group1674
	groups(1675, :) = group1675
	groups(1676, :) = group1676
	groups(1677, :) = group1677
	groups(1678, :) = group1678
	groups(1679, :) = group1679
	groups(1680, :) = group1680
	groups(1681, :) = group1681
	groups(1682, :) = group1682
	groups(1683, :) = group1683
	groups(1684, :) = group1684
	groups(1685, :) = group1685
	groups(1686, :) = group1686
	groups(1687, :) = group1687
	groups(1688, :) = group1688
	groups(1689, :) = group1689
	groups(1690, :) = group1690
	groups(1691, :) = group1691
	
	
	do i = 1, roll_count
	! Randomly select a group and number from the chosen group
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand * 1692) ! Warning, Ian Change THIS one last on this paticular program, it's in a different spot.
		if (selected_group < 0 .or. selected_group > 1691) then
			print *, "Error: selected_group out of range"
			stop
		end if
	
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand * 3)
		if (selected_number < 0 .or. selected_number > 2) then
			print *, "Error: selected_number out of range"
			stop
		end if
	
	call random_number(rand)
	roll_value = rand * 1.0e32 ! Small value to ensure the exponate is negative. Minus symbol taken out temp.
	!roll_value = rand / 1.0e32	! Can switch for bigger longer numbers
	
	! Manually adjust the exponate to be Negative using a logarithmic scale
	!roll_value = roll_value * 10**(-int(rand * 32))
	
		!if (rand > 0.0) then
		!first_non_zero_digit = int(rand * 1.0)
		!roll_value = roll_value + first_non_zero_digit * 1.0e20
		!end if		! I Don't seam to need this and the number is still starting with 1 when when the exponate is 33, will need to fix.

		! Assign a random sign to roll_value
		call random_number(rand)
		if (rand < 0.5) then
			roll_value = -roll_value
		end if
	write(formatted_roll_value, '(E35.25)') roll_value
	!print *, "Roll Value Before roll: ", formatted_roll_value ! commented out for cleaner output
		! Convert the formatted string back into a real number
		read(formatted_roll_value, '(E35.25)') roll_value
	
	
	read(groups(selected_group, selected_number), *) selected_number_real
	
			if (selected_number_real > 1.0) then
			selected_number_real = selected_number_real * decimal_shift
			end if
	
			! Check if selected_number_real is negative
			if (selected_number_real < 0.0) then
			roll_value = roll_value - abs(selected_number_real)
			else
			roll_value = roll_value + selected_number_real
			end if
			!roll_value = roll_value * decimal_shift ! temp disabled
	
			carry_over = carry_over + roll_value
			
			! reset the selected_number_real
			selected_number_real = 0.0
	
	
	y = roll_value - c			! So far, so good: c is 0
	t = random_sum + y			! Alas, sum is big, y small, so low-order digits of y are lost.
	c = (t - random_sum) - y	! (t-random_sum) recovers the high part of y; subtracting y recovers -(low part of y)
	random_sum = t				! Algebraically, c should always be zero. Beware overly-aggressive optimizing compilers!
								! Next time around, the lost low part will be added to y in a fresh attempt.
								! Print the current roll value and the total sum with more decimal places

		! Temporarily disable random sign assignment, although it dosen't seam to need this.
		! Assign a random sign to random_sum
		!call random_number(rand)
		!if (rand < 0.5) then
		!	random_sum = abs(random_sum)	! Ensure positive
		!else
		!	random_sum = -abs(random_sum)	! Ensure negative
		!end if
	! display the selected number
!print *, "Rolled from group ", selected_group, ": ", &
	!trim(groups(selected_group, selected_number))
	random_sum = random_sum + carry_over
	!print '("Randomized Sum: ", E35.25)', random_sum	! Every random call for roll_value needs to be different from each other
	print '(E35.25)', random_sum
		! reset the carry_over
		carry_over = 0.0
		! Reset the roll_value
		roll_value = 0.0 ! Reset roll_value so next should be random too
		carry_over_two = carry_over_two + random_sum	! After its been printed.
		
		y1 = random_sum - c1				! So far, so good: c1 is 0
		t1 = random_sum_total + y1			! Alas, sum is big, y1 small, so low-order digits of y1 are lost.
		c1 = (t1 - random_sum_total) - y1	! (t1-random_sum_total) recovers the high part of y1; subtracting y1 recovers -(low part of y1)
		random_sum_total = t1				! Algebraically, c1 should always be zero. Beware overly-aggressive optimizing compilers!
											! Next time around, the lost low part will be added to y1 in a fresh attempt.
											! print the current random_sum_total with more decimal places
		
		run_total(i) = random_sum
		random_sum = 0.0

		count = count + 1
	end do
	! Normalize the values in run_total
	max_value = maxval(run_total)
	if (max_value > 0.0) then
	normalized_run_total = run_total / max_value
	else
	normalized_run_total = run_total
	end if
			mean = sum(normalized_run_total) / count
			sum_squares = 0.0
			do j = 1, count
			sum_squares = sum_squares + (normalized_run_total(j) - mean)**2
			end do
			if (count > 1) then
			std_dev = sqrt(sum_squares / (count - 1))
			else
			std_dev = 0.0
			end if
			

	print *
	print '("Sum: ", E35.25)', random_sum_total + carry_over_two
	carry_over_two = 0.0
			! Check for large values in std_dev
			if (std_dev > 1.0e30) then
				print *, "Standard Dev A: Value Too Large To Display"
	else
	print '("STD: ", E35.25)', std_dev
	end if
end program Dt1_roller_EnJnDeSIgn2024