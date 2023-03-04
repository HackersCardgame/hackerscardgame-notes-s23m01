10 REM                        -=(   EC-Code   )=-
11 REM                        ^^^^^^^^^^^^^^^^^^^
12 REM
13 REM    -=[   Berechnung des Reziprokwertes der Zahl 471959   ]=-
14 REM              -=[   auf 666 Nachkommastellen   ]=-
15 REM                        ^^^^^^^^^^^^^^^^^^^^
16 REM                      {    á ³_Õ¸ï³>îŸ    }
17 REM                                                          5.2.1996
18 REM  ___________________________________________________________________
19 REM                                                
20 a = 471959: b = 1: c = 0: p = 0: z = 0: f = 0: CLS
30 c = INT(b / a)
40 f = f + 1
50 IF f > 2 THEN PRINT " 0": REM" x 10 hoch -"; z - 1
55 IF z > 666 THEN 160: REM
60 IF c >= 1 THEN 100
70 z = z + 1
80 b = b * 10
90 GOTO 30
100 PRINT c: REM "x 10 hoch -"; z
110 f = 0
120 p = c * a
130 b = b - p
140 IF z >= 666 THEN 160
150 GOTO 30
160 REM PRINT c; b / a; "x 10 hoch -"; z
170 END

