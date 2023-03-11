10 SCREEN 1,2:DEFINTA-Z:WIDTH32:KEYOFF
20 DEFUSR=&H7E:A=USR(0) 
30 COLOR ,,0:CLS
31 BLOAD "PROGRAM.BIN",S:CLS
50 'BANK0
55 'LOCATE 9,6:PRINT "Ά£¤¥¦§¨©ª«¬­®―" 'from CHR$(162) to CHR$(175)
56 'LOCATE 9,7:PRINT "ΑΒΓΔΕΖΗΘΙΚΛΜΝΞ" 'from CHR$(193) to CHR$(207)
60 'BANK1 
61 LOCATE 9,8:PRINT "!\\#$%&()*+,),"
62 LOCATE 9,9:PRINT "!\\#$%&()*+,),"
63 LOCATE 9,10:PRINT "@ABCDEFGHIJKLM"
64 LOCATE 9,11:PRINT "`abcdefghijklm"
65 LOCATE 9,12:PRINT "€‚ƒ„…†‡‰‹"
66 LOCATE 9,13:PRINT CHR$(160)"΅Ά£¤¥¦§¨©ª«¬­"
67 LOCATE 9,14:PRINT "ΐΑΒΓΔΕΖΗΘΙΚΛΜΝ"
68 LOCATE 9,15:PRINT "ΰαβγδεζηθικλμν"
70 'BANK2 FRAME1: TILE(0,2) - TILE(13,4)
71 LOCATE 9,16:PRINT "@ABCDEFGHIJKLM" 'from CHR$(64) to CHR$(77)
72 LOCATE 9,17:PRINT "`abcdefghijklm" 'from CHR$(96) to CHR$(109)
73 LOCATE 9,18:PRINT "€‚ƒ„…†‡‰‹" 'from CHR$(128) to CHR$(141)
80 'BANK2 FRAME2: TILE(14,2) - TILE(27,4)
81 LOCATE 9,16:PRINT "NOPQRSTUVWXYZ["  'from CHR$(78) to CHR$(91)
82 LOCATE 9,17:PRINT "nopqrstuvwxyz{"  'from CHR$(110) to CHR$(123)
83 LOCATE 9,18:PRINT ""CHR$(144)"‘’“”•–—™›"  'from CHR$(142) to CHR$(155)
90 'BANK2 FRAME3: TILE(0,5) - TILE(13,7)
91 LOCATE 9,16:PRINT CHR$(160)"΅Ά£¤¥¦§¨©ª«¬­" 'from CHR$(160) to CHR$(173)
92 LOCATE 9,17:PRINT "ΐΑΒΓΔΕΖΗΘΙΚΛΜΝ" 'from CHR$(192) to CHR$(205)
93 LOCATE 9,18:PRINT "ΰαβγδεζηθικλμν" 'from CHR$(162) to CHR$(175)
100 'BANK2 FRAME4: TILE(14,5) - TILE(27,7)
101 LOCATE 9,16:PRINT "®―°±²³΄µ¶·ΈΉΊ»" 'from CHR$(174) to CHR$(187)
102 LOCATE 9,17:PRINT "ΞΟΠΡÒΣΤΥΦΧΨΩΪΫ" 'from CHR$(206) to CHR$(219)
103 LOCATE 9,18:PRINT "ξοπρςστυφχψωϊϋ" 'from CHR$(238) to CHR$(251)
130 GOTO 71 'RETURN TO FRAME 1