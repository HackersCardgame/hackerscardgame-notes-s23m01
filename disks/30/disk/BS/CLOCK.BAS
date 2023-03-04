h = 0: m = 0: s = 0
INPUT "Bitte ZEIT eingeben (Format:HH,MM,SS)", h, m, s
WHILE d < 30
WHILE h < 24
WHILE m < 60
WHILE s < 60
 FOR t = 1 TO 30000
 NEXT
 CLS
 PRINT "Es IsT :"; h; ":"; m; ":"; s; "Tag:"; d
 s = s + 1
WEND
 m = m + 1
 s = 0
 IF m = 0 THEN h = h + 1
WEND
 h = h + 1
 m = 0
WEND
 d = d + 1
 h = 0
WEND

