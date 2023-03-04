10 REM -=( Noten berechnung )=-     á ³_Õ¸ï³>îŸ
15 CLS
20 PRINT "Notenberechng"
25 PRINT "Bitte fortlaufend die Noten eingeben, nach der letzten bitte Enter Druecken!"
30 n = 1: x = 0: s = 0: r = 0
40 WHILE n >= 1
50 x = x + 1
60 PRINT x; ". Noten eingeben (Enter fuer Ende)"
70 INPUT n
80 s = s + n
90 WEND
100 x = x - 1: REM Gebastel
110 PRINT "Der Durchschnitt der"; x; "Noten ist ", s / x
120 r = 2 * s / x + .001: REM Gebastel
130 PRINT "Der gerundete Durchschnitt liegt bei "; (CINT(r)) / 2
140 END

