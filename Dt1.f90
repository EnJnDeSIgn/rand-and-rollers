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
	character(len=32), dimension(0:874, 0:2) :: groups
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
									   &group873, group874
									   
	character(len=35) :: formatted_roll_value
									   
	real, dimension(8) :: run_total, normalized_run_total
	
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
	roll_count = 8
	decimal_shift = 0.1
	roll_value = 0.0 ! I moved the roll_value call down into the loop in hopes it will be random all 8 times
	selected_number_real = 0.0

	call random_seed()
	
	! Display the progarm name and introduction ! Adding a line to identify purpose
	print *, "Dt1_roller_EnJnDeSIgn2024_?-?."
	print *, " randomness fit for the gods  "
	print *, "  Random Quantum Exponents    "
	print *, "    The Dancing Decimal       "
	print *, "      by Ian J Norris         "
	print *, "    Ian.enjn@gmail.com        "
	
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
	groups(102, :) = group102
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
	
	
	do i = 1, roll_count
	! Randomly select a group and number from the chosen group
	! Randomly select a group
	call random_number(rand)
	selected_group = int(rand *875) ! Warrning, Ian Change THIS one last on this paticular program, it's in a different spot.
	! Randomly select a number from the chosen group
	call random_number(rand)
	selected_number = int(rand *3)
	
	call random_number(rand)
	roll_value = rand * 1.0e32 ! Larger multiplier for longer numbers
	
		if (rand > 0.0) then
		first_non_zero_digit = int(rand * 10.0)
		roll_value = roll_value + first_non_zero_digit * 1.0e20
		end if

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
print *, "Rolled from group ", selected_group, ": ", &
	trim(groups(selected_group, selected_number))
	random_sum = random_sum + carry_over
	print '("Randomized Sum: ", E35.25)', random_sum	! Every random call for roll_value needs to be different from each other
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
			

	print *, "_______________"
	print '("Not Rolled Sum: ", E35.25)', random_sum_total + carry_over_two
	carry_over_two = 0.0
			! Check for large values in std_dev
			if (std_dev > 1.0e30) then
				print *, "Standard Dev A: Value Too Large To Display"
	else
	print '("Standard Dev A: ", E35.25)', std_dev
	end if
	print *, "_______________"
	print *, "By Ian J Norris"
end program Dt1_roller_EnJnDeSIgn2024