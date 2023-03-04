10 REM
20 REM
30 REM
40 REM
45 CLS
50 a = 1: b = 1: c = 1
60 FOR a = 1 TO 10
70  FOR b = 1 TO a
80   PRINT USING "#####.#"; a * b;
90 NEXT b
100 PRINT " "
110 NEXT a

