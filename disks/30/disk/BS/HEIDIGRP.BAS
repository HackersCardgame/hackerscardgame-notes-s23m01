10 REM
20 REM
30 REM
40 REM
50 REM
55 CLS
60 x = 0: y = 7 - x: c = 0: s = .3
65 c = x / 2 * y
70 REM PRINT x / 2, y, x / 2 * y
72 FOR w = 1 TO c * 10
74 PRINT "*";
76 NEXT w
78 PRINT " "
80 x = x + s
90 y = 7 - x
95 IF NOT c < 0 THEN 65
100 REM IF c < x / 2 * y THEN 65
110 REM PRINT x / 2, y, x / 2 * y

