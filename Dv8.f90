program Dv8_roller_EnJnDeSIgn2024
	! Multiplication table for 0.5 and -0.5
! Number    0.5 * Number    -0.5 * Number    (0.5)^2 * Number    (-0.5)^2 * Number    (0.5)^3 * Number    (-0.5)^3 * Number    (0.5)^4 * Number    (-0.5)^4 * Number
! 1         0.5             -0.5             0.25                0.25                 0.125               -0.125               0.0625              0.0625
! 2         1.0             -1.0             0.5                 0.5                  0.25                -0.25                0.125               0.125
! 3         1.5             -1.5             0.75                0.75                 0.375               -0.375               0.1875              0.1875
! 4         2.0             -2.0             1.0                 1.0                  0.5                 -0.5                 0.25                0.25
! 5         2.5             -2.5             1.25                1.25                 0.625               -0.625               0.3125              0.3125
! 6         3.0             -3.0             1.5                 1.5                  0.75                -0.75                0.375               0.375
! 7         3.5             -3.5             1.75                1.75                 0.875               -0.875               0.4375              0.4375
! 8         4.0             -4.0             2.0                 2.0                  1.0                 -1.0                 0.5                 0.5
! 9         4.5             -4.5             2.25                2.25                 1.125               -1.125               0.5625              0.5625
! -1        -0.5            0.5              0.25                0.25                 -0.125              0.125                0.0625              0.0625
! -2        -1.0            1.0              0.5                 0.5                  -0.25               0.25                 0.125               0.125
! -3        -1.5            1.5              0.75                0.75                 -0.375              0.375                0.1875              0.1875
! -4        -2.0            2.0              1.0                 1.0                  -0.5                0.5                  0.25                0.25
! -5        -2.5            2.5              1.25                1.25                 -0.625              0.625                0.3125              0.3125
! -6        -3.0            3.0              1.5                 1.5                  -0.75               0.75                 0.375               0.375
! -7        -3.5            3.5              1.75                1.75                 -0.875              0.875                0.4375              0.4375
! -8        -4.0            4.0              2.0                 2.0                  -1.0                1.0                  0.5                 0.5
! -9        -4.5            4.5              2.25                2.25                 -1.125              1.125                0.5625              0.5625
! Extended Multiplication table for 0.5 and -0.5
! Number    (0.5)^5 * Number    (-0.5)^5 * Number    (0.5)^6 * Number    (-0.5)^6 * Number    (0.5)^7 * Number    (-0.5)^7 * Number    (0.5)^8 * Number    (-0.5)^8 * Number
! 1         0.03125             -0.03125             0.015625            0.015625             0.0078125           -0.0078125           0.00390625          0.00390625
! 2         0.0625              -0.0625              0.03125             0.03125              0.015625            -0.015625            0.0078125           0.0078125
! 3         0.09375             -0.09375             0.046875            0.046875             0.0234375           -0.0234375           0.01171875          0.01171875
! 4         0.125               -0.125               0.0625              0.0625               0.03125             -0.03125             0.015625            0.015625
! 5         0.15625             -0.15625             0.078125            0.078125             0.0390625           -0.0390625           0.01953125          0.01953125
! 6         0.1875              -0.1875              0.09375             0.09375              0.046875            -0.046875            0.0234375           0.0234375
! 7         0.21875             -0.21875             0.109375            0.109375             0.0546875           -0.0546875           0.02734375          0.02734375
! 8         0.25                -0.25                0.125               0.125                0.0625              -0.0625              0.03125             0.03125
! 9         0.28125             -0.28125             0.140625            0.140625             0.0703125           -0.0703125           0.03515625          0.03515625
! -1        -0.03125            0.03125              0.015625            0.015625             -0.0078125          0.0078125            0.00390625          0.00390625
! -2        -0.0625             0.0625               0.03125             0.03125              -0.015625           0.015625             0.0078125           0.0078125
! -3        -0.09375            0.09375              0.046875            0.046875             -0.0234375          0.0234375            0.01171875          0.01171875
! -4        -0.125              0.125                0.0625              0.0625               -0.03125            0.03125              0.015625            0.015625
! -5        -0.15625            0.15625              0.078125            0.078125             -0.0390625          0.0390625            0.01953125          0.01953125
! -6        -0.1875             0.1875               0.09375             0.09375              -0.046875           0.046875             0.0234375           0.0234375
! -7        -0.21875            0.21875              0.109375            0.109375             -0.0546875          0.0546875            0.02734375          0.02734375
! -8        -0.25               0.25                 0.125               0.125                -0.0625             0.0625               0.03125             0.03125
! -9        -0.28125            0.28125              0.140625            0.140625             -0.0703125          0.0703125            0.03515625          0.03515625
! Continuation of the Multiplication table for 0.5 and -0.5
! Number    (0.5)^9 * Number    (-0.5)^9 * Number    (0.5)^10 * Number    (-0.5)^10 * Number    (0.5)^11 * Number    (-0.5)^11 * Number    (0.5)^12 * Number    (-0.5)^12 * Number
! 1         0.001953125         -0.001953125         0.0009765625        0.0009765625         0.00048828125       -0.00048828125       0.000244140625      0.000244140625
! 2         0.00390625          -0.00390625          0.001953125         0.001953125          0.0009765625        -0.0009765625        0.00048828125       0.00048828125
! 3         0.005859375         -0.005859375         0.0029296875        0.0029296875         0.00146484375       -0.00146484375       0.000732421875      0.000732421875
! 4         0.0078125           -0.0078125           0.00390625          0.00390625           0.001953125         -0.001953125         0.0009765625        0.0009765625
! 5         0.009765625         -0.009765625         0.0048828125        0.0048828125         0.00244140625       -0.00244140625       0.001220703125      0.001220703125
! 6         0.01171875          -0.01171875          0.005859375         0.005859375          0.0029296875        -0.0029296875        0.00146484375       0.00146484375
! 7         0.013671875         -0.013671875         0.0068359375        0.0068359375         0.00341796875       -0.00341796875       0.001708984375      0.001708984375
! 8         0.015625            -0.015625            0.0078125           0.0078125            0.00390625          -0.00390625          0.001953125         0.001953125
! 9         0.017578125         -0.017578125         0.0087890625        0.0087890625         0.00439453125       -0.00439453125       0.002197265625      0.002197265625
! -1        -0.001953125        0.001953125          0.0009765625        0.0009765625         -0.00048828125      0.00048828125        0.000244140625      0.000244140625
! -2        -0.00390625         0.00390625           0.001953125         0.001953125          -0.0009765625       0.0009765625         0.00048828125       0.00048828125
! -3        -0.005859375        0.005859375          0.0029296875        0.0029296875         -0.00146484375      0.00146484375        0.000732421875      0.000732421875
! -4        -0.0078125          0.0078125            0.00390625          0.00390625           -0.001953125        0.001953125          0.0009765625        0.0009765625
! -5        -0.009765625        0.009765625          0.0048828125        0.0048828125         -0.00244140625      0.00244140625        0.001220703125      0.001220703125
! -6        -0.01171875         0.01171875           0.005859375         0.005859375          -0.0029296875       0.0029296875         0.00146484375       0.00146484375
! -7        -0.013671875        0.013671875          0.0068359375        0.0068359375         -0.00341796875      0.00341796875        0.001708984375      0.001708984375
! -8        -0.015625           0.015625             0.0078125           0.0078125            -0.00390625         0.00390625           0.001953125         0.001953125
! -9        -0.017578125        0.017578125          0.0087890625        0.0087890625         -0.00439453125      0.00439453125        0.002197265625      0.002197265625! Continuation of the Multiplication table for 0.5 and -0.5
! Number    (0.5)^13 * Number    (-0.5)^13 * Number    (0.5)^14 * Number    (-0.5)^14 * Number    (0.5)^15 * Number    (-0.5)^15 * Number    (0.5)^16 * Number    (-0.5)^16 * Number
! 1         0.0001220703125     -0.0001220703125     0.00006103515625    0.00006103515625     0.000030517578125   -0.000030517578125   0.0000152587890625  0.0000152587890625
! 2         0.000244140625      -0.000244140625      0.0001220703125     0.0001220703125      0.00006103515625    -0.00006103515625    0.000030517578125   0.000030517578125
! 3         0.0003662109375     -0.0003662109375     0.00018310546875    0.00018310546875     0.000091552734375   -0.000091552734375   0.0000457763671875  0.0000457763671875
! 4         0.00048828125       -0.00048828125       0.000244140625      0.000244140625       0.0001220703125     -0.0001220703125     0.00006103515625    0.00006103515625
! 5         0.0006103515625     -0.0006103515625     0.00030517578125    0.00030517578125     0.000152587890625   -0.000152587890625   0.0000762939453125  0.0000762939453125
! 6         0.000732421875      -0.000732421875      0.0003662109375     0.0003662109375      0.00018310546875    -0.00018310546875    0.000091552734375   0.000091552734375
! 7         0.0008544921875     -0.0008544921875     0.00042724609375    0.00042724609375     0.000213623046875   -0.000213623046875   0.0001068115234375  0.0001068115234375
! 8         0.0009765625        -0.0009765625        0.00048828125       0.00048828125        0.000244140625      -0.000244140625      0.0001220703125     0.0001220703125
! 9         0.0010986328125     -0.0010986328125     0.00054931640625    0.00054931640625     0.000274658203125   -0.000274658203125   0.0001373291015625  0.0001373291015625
! -1        -0.0001220703125    0.0001220703125      0.00006103515625    0.00006103515625     -0.000030517578125  0.000030517578125    0.0000152587890625  0.0000152587890625
! -2        -0.000244140625     0.000244140625       0.0001220703125     0.0001220703125      -0.00006103515625   0.00006103515625     0.000030517578125   0.000030517578125
! -3        -0.0003662109375    0.0003662109375      0.00018310546875    0.00018310546875     -0.000091552734375  0.000091552734375    0.0000457763671875  0.0000457763671875
! -4        -0.00048828125      0.00048828125        0.000244140625      0.000244140625       -0.0001220703125    0.0001220703125      0.00006103515625    0.00006103515625
! -5        -0.0006103515625    0.0006103515625      0.00030517578125    0.00030517578125     -0.000152587890625  0.000152587890625    0.0000762939453125  0.0000762939453125
! -6        -0.000732421875     0.000732421875       0.0003662109375     0.0003662109375      -0.00018310546875   0.00018310546875     0.000091552734375   0.000091552734375
! -7        -0.0008544921875    0.0008544921875      0.00042724609375    0.00042724609375     -0.000213623046875  0.000213623046875    0.0001068115234375  0.0001068115234375
! -8        -0.0009765625       0.0009765625         0.00048828125       0.00048828125        -0.000244140625     0.000244140625       0.0001220703125     0.0001220703125
! -9        -0.0010986328125    0.0010986328125      0.00054931640625    0.00054931640625     -0.000274658203125  0.000274658203125    0.0001373291015625  0.0001373291015625
! Continuation of the Multiplication table for 0.5 and -0.5
! Number    (0.5)^17 * Number    (-0.5)^17 * Number    (0.5)^18 * Number    (-0.5)^18 * Number    (0.5)^19 * Number    (-0.5)^19 * Number    (0.5)^20 * Number    (-0.5)^20 * Number
! 1         0.00000762939453125 -0.00000762939453125 0.000003814697265625 0.000003814697265625 0.0000019073486328125 -0.0000019073486328125 0.00000095367431640625 0.00000095367431640625
! 2         0.0000152587890625  -0.0000152587890625  0.00000762939453125  0.00000762939453125  0.000003814697265625  -0.000003814697265625  0.0000019073486328125  0.0000019073486328125
! 3         0.00002288818359375 -0.00002288818359375 0.000011444091796875 0.000011444091796875 0.0000057220458984375 -0.0000057220458984375 0.00000286102294921875 0.00000286102294921875
! 4         0.000030517578125    -0.000030517578125   0.0000152587890625   0.0000152587890625   0.00000762939453125   -0.00000762939453125   0.000003814697265625   0.000003814697265625
! 5         0.00003814697265625 -0.00003814697265625 0.000019073486328125 0.000019073486328125 0.0000095367431640625 -0.0000095367431640625 0.00000476837158203125 0.00000476837158203125
! 6         0.0000457763671875  -0.0000457763671875  0.00002288818359375  0.00002288818359375  0.000011444091796875  -0.000011444091796875  0.0000057220458984375  0.0000057220458984375
! 7         0.00005340576171875 -0.00005340576171875 0.000026702880859375 0.000026702880859375 0.0000133514404296875 -0.0000133514404296875 0.00000667572021484375 0.00000667572021484375
! 8         0.00006103515625    -0.00006103515625   0.000030517578125    0.000030517578125    0.0000152587890625   -0.0000152587890625   0.00000762939453125    0.00000762939453125
! 9         0.00006866455078125 -0.00006866455078125 0.000034332275390625 0.000034332275390625 0.0000171661376953125 -0.0000171661376953125 0.00000858306884765625 0.00000858306884765625
! -1        -0.00000762939453125 0.00000762939453125 0.000003814697265625 0.000003814697265625 -0.0000019073486328125 0.0000019073486328125 0.00000095367431640625 0.00000095367431640625
! -2        -0.0000152587890625  0.0000152587890625  0.00000762939453125  0.00000762939453125  -0.000003814697265625 0.000003814697265625 0.0000019073486328125  0.0000019073486328125
! -3        -0.00002288818359375 0.00002288818359375 0.000011444091796875 0.000011444091796875 -0.0000057220458984375 0.0000057220458984375 0.00000286102294921875 0.00000286102294921875
! -4        -0.000030517578125   0.000030517578125   0.0000152587890625   0.0000152587890625   -0.00000762939453125   0.00000762939453125   0.000003814697265625   0.000003814697265625
! -5        -0.00003814697265625 0.00003814697265625 0.000019073486328125 0.000019073486328125 -0.0000095367431640625 0.0000095367431640625 0.00000476837158203125 0.00000476837158203125
! -6        -0.0000457763671875  0.0000457763671875  0.00002288818359375  0.00002288818359375  -0.000011444091796875 0.000011444091796875 0.0000057220458984375  0.0000057220458984375
! -7        -0.00005340576171875 0.00005340576171875 0.000026702880859375 0.000026702880859375 -0.0000133514404296875 0.0000133514404296875 0.00000667572021484375 0.00000667572021484375
! -8        -0.00006103515625    0.00006103515625    0.000030517578125    0.000030517578125    -0.0000152587890625   0.0000152587890625   0.00000762939453125    0.00000762939453125
! -9        -0.00006866455078125 0.00006866455078125 0.000034332275390625 0.000034332275390625 -0.0000171661376953125 0.0000171661376953125 0.00000858306884765625 0.00000858306884765625
! Continuation of the Multiplication table for 0.5 and -0.5
! Number    (0.5)^21 * Number    (-0.5)^21 * Number    (0.5)^22 * Number    (-0.5)^22 * Number    (0.5)^23 * Number    (-0.5)^23 * Number    (0.5)^24 * Number    (-0.5)^24 * Number
! 1         0.000000476837158203125 -0.000000476837158203125 0.0000002384185791015625 0.0000002384185791015625 0.00000011920928955078125 -0.00000011920928955078125 0.000000059604644775390625 0.000000059604644775390625
! 2         0.00000095367431640625  -0.00000095367431640625  0.000000476837158203125  0.000000476837158203125  0.0000002384185791015625  -0.0000002384185791015625  0.00000011920928955078125  0.00000011920928955078125
! 3         0.000001430511474609375 -0.000001430511474609375 0.0000007152557373046875 0.0000007152557373046875 0.00000035762786865234375 -0.00000035762786865234375 0.000000178813934326171875 0.000000178813934326171875
! 4         0.0000019073486328125   -0.0000019073486328125   0.00000095367431640625   0.00000095367431640625   0.000000476837158203125   -0.000000476837158203125   0.0000002384185791015625   0.0000002384185791015625
! 5         0.000002384185791015625 -0.000002384185791015625 0.0000011920928955078125 0.0000011920928955078125 0.00000059604644775390625  -0.00000059604644775390625  0.000000298023223876953125 0.000000298023223876953125
! 6         0.00000286102294921875  -0.00000286102294921875  0.000001430511474609375  0.000001430511474609375  0.0000007152557373046875  -0.0000007152557373046875  0.00000035762786865234375  0.00000035762786865234375
! 7         0.000003337860107421875 -0.000003337860107421875 0.0000016689300537109375 0.0000016689300537109375 0.00000083446502685546875 -0.00000083446502685546875 0.000000417232513427734375 0.000000417232513427734375
! 8         0.000003814697265625    -0.000003814697265625    0.0000019073486328125    0.0000019073486328125    0.00000095367431640625    -0.00000095367431640625    0.000000476837158203125    0.000000476837158203125
! 9         0.000004291534423828125 -0.000004291534423828125 0.0000021457672119140625 0.0000021457672119140625 0.00000107288360595703125 -0.00000107288360595703125 0.000000536441802978515625 0.000000536441802978515625
! -1        -0.000000476837158203125 0.000000476837158203125 0.0000002384185791015625 0.0000002384185791015625 -0.00000011920928955078125 0.00000011920928955078125 0.000000059604644775390625 0.000000059604644775390625
! -2        -0.00000095367431640625  0.00000095367431640625  0.000000476837158203125  0.000000476837158203125  -0.0000002384185791015625 0.0000002384185791015625 0.00000011920928955078125  0.00000011920928955078125
! -3        -0.000001430511474609375 0.000001430511474609375 0.0000007152557373046875 0.0000007152557373046875 -0.00000035762786865234375 0.00000035762786865234375 0.000000178813934326171875 0.000000178813934326171875
! -4        -0.0000019073486328125   0.0000019073486328125   0.00000095367431640625   0.00000095367431640625   -0.000000476837158203125   0.000000476837158203125   0.0000002384185791015625   0.0000002384185791015625
! -5        -0.000002384185791015625 0.000002384185791015625 0.0000011920928955078125 0.0000011920928955078125 -0.00000059604644775390625  0.00000059604644775390625  0.000000298023223876953125 0.000000298023223876953125
! -6        -0.00000286102294921875  0.00000286102294921875  0.000001430511474609375  0.000001430511474609375  -0.0000007152557373046875  0.0000007152557373046875  0.00000035762786865234375  0.00000035762786865234375
! -7        -0.000003337860107421875 0.000003337860107421875 0.0000016689300537109375 0.0000016689300537109375 -0.00000083446502685546875  0.00000083446502685546875  0.000000417232513427734375 0.000000417232513427734375
! -8        -0.000003814697265625    0.000003814697265625    0.0000019073486328125    0.0000019073486328125    -0.00000095367431640625    0.00000095367431640625    0.000000476837158203125    0.000000476837158203125
! -9        -0.000004291534423828125 0.000004291534423828125 0.0000021457672119140625 0.0000021457672119140625 -0.00000107288360595703125  0.00000107288360595703125  0.000000536441802978515625 0.000000536441802978515625
! Continuation of the Multiplication table for 0.5 and -0.5
! Number    (0.5)^25 * Number    (-0.5)^25 * Number    (0.5)^26 * Number    (-0.5)^26 * Number    (0.5)^27 * Number    (-0.5)^27 * Number    (0.5)^28 * Number    (-0.5)^28 * Number
! 1         0.0000000298023223876953125 -0.0000000298023223876953125 0.00000001490116119384765625 0.00000001490116119384765625 0.000000007450580596923828125 -0.000000007450580596923828125 0.0000000037252902984619140625 0.0000000037252902984619140625
! 2         0.000000059604644775390625  -0.000000059604644775390625  0.0000000298023223876953125  0.0000000298023223876953125  0.00000001490116119384765625  -0.00000001490116119384765625  0.000000007450580596923828125 0.000000007450580596923828125
! 3         0.0000000894069671630859375 -0.0000000894069671630859375 0.00000004470348358154296875 0.00000004470348358154296875 0.000000022351741790771484375 -0.000000022351741790771484375 0.0000000111758708953857421875 0.0000000111758708953857421875
! 4         0.00000011920928955078125   -0.00000011920928955078125   0.000000059604644775390625   0.000000059604644775390625   0.0000000298023223876953125   -0.0000000298023223876953125   0.00000001490116119384765625  0.00000001490116119384765625
! 5         0.0000001490116119384765625 -0.0000001490116119384765625 0.00000007450580596923828125 0.00000007450580596923828125 0.000000037252902984619140625 -0.000000037252902984619140625 0.0000000186264514923095703125 0.0000000186264514923095703125
! 6         0.000000178813934326171875  -0.000000178813934326171875  0.0000000894069671630859375  0.0000000894069671630859375  0.00000004470348358154296875  -0.00000004470348358154296875  0.000000022351741790771484375 0.000000022351741790771484375
! 7         0.0000002086162567138671875 -0.0000002086162567138671875 0.00000010430812835693359375 0.00000010430812835693359375 0.000000052154064178466796875 -0.000000052154064178466796875 0.0000000260770320892333984375 0.0000000260770320892333984375
! 8         0.0000002384185791015625    -0.0000002384185791015625    0.00000011920928955078125    0.00000011920928955078125    0.000000059604644775390625    -0.000000059604644775390625    0.0000000298023223876953125   0.0000000298023223876953125
! 9         0.0000002682209014892578125 -0.0000002682209014892578125 0.00000013411045074462890625 0.00000013411045074462890625 0.000000067055225372314453125 -0.000000067055225372314453125 0.0000000335276126861572265625 0.0000000335276126861572265625
! -1        -0.0000000298023223876953125 0.0000000298023223876953125 0.00000001490116119384765625 0.00000001490116119384765625 -0.000000007450580596923828125 0.000000007450580596923828125 0.0000000037252902984619140625 0.0000000037252902984619140625
! -2        -0.000000059604644775390625  0.000000059604644775390625  0.0000000298023223876953125  0.0000000298023223876953125  -0.00000001490116119384765625  0.00000001490116119384765625  0.000000007450580596923828125 0.000000007450580596923828125
! -3        -0.0000000894069671630859375 0.0000000894069671630859375 0.00000004470348358154296875 0.00000004470348358154296875 -0.000000022351741790771484375 0.000000022351741790771484375 0.0000000111758708953857421875 0.0000000111758708953857421875
! -4        -0.00000011920928955078125   0.00000011920928955078125   0.000000059604644775390625   0.000000059604644775390625   -0.0000000298023223876953125   0.0000000298023223876953125   0.00000001490116119384765625  0.00000001490116119384765625
! -5        -0.0000001490116119384765625 0.0000001490116119384765625 0.00000007450580596923828125 0.00000007450580596923828125 -0.000000037252902984619140625 0.000000037252902984619140625 0.0000000186264514923095703125 0.0000000186264514923095703125
! -6        -0.000000178813934326171875  0.000000178813934326171875  0.0000000894069671630859375  0.0000000894069671630859375  -0.00000004470348358154296875  0.00000004470348358154296875  0.000000022351741790771484375 0.000000022351741790771484375
! -7        -0.0000002086162567138671875 0.0000002086162567138671875 0.00000010430812835693359375 0.00000010430812835693359375 -0.000000052154064178466796875 0.000000052154064178466796875 0.0000000260770320892333984375 0.0000000260770320892333984375
! -8        -0.0000002384185791015625    0.0000002384185791015625    0.00000011920928955078125    0.00000011920928955078125    -0.000000059604644775390625    0.000000059604644775390625    0.0000000298023223876953125   0.0000000298023223876953125
! -9        -0.0000002682209014892578125 0.0000002682209014892578125 0.00000013411045074462890625 0.00000013411045074462890625 -0.000000067055225372314453125 0.000000067055225372314453125 0.0000000335276126861572265625 0.0000000335276126861572265625
	implicit none
	integer :: selected_group, selected_number, i, j, roll_count
	character(len=180), dimension(0:9, 0:3) :: groups
	character(len=180), dimension(4) :: group0, group1, group2, group3, group4, group5, group6, group7, group8, group9
	real, dimension(50) :: run_totals
	real :: rand, total_sum, roll_value, decimal_shift, carry_over, grand_total, c, y, t, mean, sum_squares, std_dev
	integer :: count
	
	count = 50
	sum_squares = 0.0
	
	Call random_seed()
	grand_total = 0.0
	total_sum = 0.0
	decimal_shift = 1.0
	carry_over = 0.0
	roll_count = 1000
	
	! Display the progarm name and introduction
	print *, "Dv8_roller_EnJnDeSIgn2024_random."
	print *, "   Randomness fit for the gods   "
	print *, "        by Ian J Norris          "
	print *, "       Ian.enjn@gmail.com        "
	print *, "Quantum Values - Hard Number Gen."
	
	do j = 1, 50 ! Outer loop to run the entire proess 10 times
		total_sum = 0.0
		decimal_shift = 1.0
		carry_over = 0.0
		c = 0.0 ! A running compensation for low-order bits.
		run_totals(j) = total_sum
		count = count + 1
	
	! Initialize group0
	group0 = (/ "-4  ", "+1  ", "-9  ", "-0.5"/)
	! Initialize group1
	group1 = (/ "+3  ", "-3  ", "-3  ", "-4  "/)
	! Initialize group2
	group2 = (/ "-9  ", "+7  ", "-1  ", "+7  "/)
	! Initialize group3
	group3 = (/ "-1  ", "-2  ", "+6  ", "-8  "/)
	! Initialize group4
	group4 = (/ "+0.5", "+2  ", "+3  ", "+4  "/)
	! Initialize group5
	group5 = (/ "-7  ", "-6  ", "0   ", "+1  "/)
	! Initialize group6
	group6 = (/ "-6  ", "+5  ", "-2  ", "0   "/)
	! Initialize group7
	group7 = (/ "+2  ", "+4  ", "-5  ", "+9  "/)
	! Initialize group8
	group8 = (/ "+5  ", "+6  ", "-5  ", "+8  "/)
	! Initialize group9
	group9 = (/ "+9  ", "-7  ", "-8  ", "+8  "/)
	
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
	
		do i = 1, roll_count ! Inner loop for the rolling logic
		! Randomly select a group and number from the chosen group...
		! Randomly select a group
		call random_number(rand)
		selected_group = int(rand * 10)
		! Randomly select a number from the chosen group
		call random_number(rand)
		selected_number = int(rand * 4)
	
		! Convert the selected string to a real number
		read(groups(selected_group, selected_number), *) roll_value
		
			y = roll_value - c		! So far, so good: c is zero
			t = total_sum + y		! Alas, sum is big, y small, so low-order digits of y are lost.
			c = (t - total_sum) - y	! (t- total_sum) recovers the high-order part of y; subtracting y recovers -(low part of y)
			total_sum = t			! Algebraically, c should always be zero. Beware overly-aggressive optimizing compilers!
									! Next time around, the lost low part will be added to y in a fresh attempt.
									! Print the current roll value and the total sum with more decimal places		
	
		! Check if the roll is exactly 0.5 or -0.5
		if (roll_value == 0.5 .or. roll_value == -0.5) then
		! Add the effect of 0.5 to the carry_over at the current decimal shift
		carry_over = carry_over + (roll_value * 1)
		else
			! Apply the decimal shift to the roll value
			roll_value = (roll_value * decimal_shift)
			! Update the total sum
			total_sum = total_sum + roll_value
			! Reset the carry_over after it has been applied
			carry_over = 0.0
		endif
	
		! Decrease the decimal shift for the next roll only if a 0.5 was rolled
		if (carry_over /= 0.0) then
		decimal_shift = decimal_shift * 0.5
		endif
	
		end do
	
	grand_total = grand_total + total_sum ! Accumulate the total sum into the grand total
	! Print the total sum for this run with the format similar to the original print statement
	print '("Run ", I3, ": ", F32.25, " :Total Sum ", F32.25, " :Grand Total Sum ", F32.25)', j, total_sum, grand_total
	! Print the total sum for this run
		! Calculate the mean of all runs
			mean = sum(run_totals) / count	
					! Calculate the sum of squares of differences from the mean
			! Reset sum_squares to zero before calculation
			sum_squares = 0.0
			do i = 1, count
			sum_squares = sum_squares + (run_totals(i) - mean)**2
			end do
			! Calculate the standard deviation
			std_dev = sqrt(sum_squares / count)
	end do
	
	print '("Standard Deviation Of Runs: ", G35.25)', std_dev
end program Dv8_roller_EnJnDeSIgn2024