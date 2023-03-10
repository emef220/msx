1 ' Copyright (c) 2023 emef220 
2 ' Released under the MIT license
3 ' https://opensource.org/licenses/mit-license.php
4 '
5 ' --------------------------------------------------------------------------
6 ' Clock App with Palette animation (Hyper2.sc5)
7 ' --------------------------------------------------------------------------
8 '
15 10 ' --- Slot 0
20 ' color 10
30 DATA 00,1F,1F,18,18,18,18,18,18,18,18,18,18,1F,1F,00
40 DATA 00,F8,F8,18,18,18,18,18,18,18,18,18,18,F8,F8,00
50 ' 
60 ' --- Slot 1
70 ' color 10
80 DATA 00,00,00,00,00,00,00,00,00,00,00,00,00,00,00,00
90 DATA 00,18,18,18,18,18,18,18,18,18,18,18,18,18,18,00
100 ' 
110 ' --- Slot 2
120 ' color 10
130 DATA 00,1F,1F,00,00,00,00,1F,1F,18,18,18,18,1F,1F,00
140 DATA 00,F8,F8,18,18,18,18,F8,F8,00,00,00,00,F8,F8,00
150 ' 
160 ' --- Slot 3
170 ' color 10
180 DATA 00,1F,1F,00,00,00,00,0F,0F,00,00,00,00,1F,1F,00
190 DATA 00,F8,F8,18,18,18,18,F8,F8,18,18,18,18,F8,F8,00
200 ' 
210 ' --- Slot 4
220 ' color 10
230 DATA 00,18,18,18,18,18,18,1F,1F,00,00,00,00,00,00,00
240 DATA 00,18,18,18,18,18,18,F8,F8,18,18,18,18,18,18,00
250 ' 
260 ' --- Slot 5
270 ' color 10
280 DATA 00,1F,1F,18,18,18,18,1F,1F,00,00,00,00,1F,1F,00
290 DATA 00,F8,F8,00,00,00,00,F8,F8,18,18,18,18,F8,F8,00
300 ' 
310 ' --- Slot 6
320 ' color 10
330 DATA 00,1F,1F,18,18,18,18,1F,1F,18,18,18,18,1F,1F,00
340 DATA 00,F8,F8,00,00,00,00,F8,F8,18,18,18,18,F8,F8,00
350 ' 
360 ' --- Slot 7
370 ' color 10
380 DATA 00,1F,1F,00,00,00,00,00,00,00,00,00,00,00,00,00
390 DATA 00,F8,F8,18,18,18,18,18,18,18,18,18,18,18,18,00
400 ' 
410 ' --- Slot 8
420 ' color 10
430 DATA 00,1F,1F,18,18,18,18,1F,1F,18,18,18,18,1F,1F,00
440 DATA 00,F8,F8,18,18,18,18,F8,F8,18,18,18,18,F8,F8,00
450 ' 
460 ' --- Slot 9
470 ' color 10
480 DATA 00,1F,1F,18,18,18,18,1F,1F,00,00,00,00,1F,1F,00
490 DATA 00,F8,F8,18,18,18,18,F8,F8,18,18,18,18,F8,F8,00
500 ' 
510 ' --- Slot 10
520 ' color 10
530 DATA 00,00,00,01,01,01,01,00,00,01,01,01,01,00,00,00
540 DATA 00,00,00,80,80,80,80,00,00,80,80,80,80,00,00,00
550 ' 
560 ' --- Slot 11
570 ' color 14
580 DATA 00,00,00,01,01,01,01,00,00,01,01,01,01,00,00,00
590 DATA 00,00,00,80,80,80,80,00,00,80,80,80,80,00,00,00
600 ' 
610 ' --- Slot 12
620 ' color 10
630 DATA 00,0C,1E,12,12,1E,12,12,00,00,00,00,00,00,00,00
640 DATA 00,88,88,D8,F8,F8,A8,A8,00,00,00,00,00,00,00,00
650 ' color 14
660 DATA 00,00,00,00,00,00,00,00,00,1E,12,12,1E,10,10,00
670 DATA 00,00,00,00,00,00,00,00,00,88,88,D8,F8,A8,A8,00
680 ' 
690 ' --- Slot 13
700 ' color 10
710 DATA 00,00,00,00,00,00,00,00,00,1E,12,12,1E,10,10,00
720 DATA 00,00,00,00,00,00,00,00,00,88,88,D8,F8,A8,A8,00
730 ' color 14
740 DATA 00,0C,1E,12,12,1E,12,12,00,00,00,00,00,00,00,00
750 DATA 00,88,88,D8,F8,F8,A8,A8,00,00,00,00,00,00,00,00
760 ' 
770 ' --- Slot 14
780 ' color 10
790 DATA 00,00,00,00,00,00,00,01,03,07,06,0C,1C,18,10,00
800 DATA 00,08,18,38,70,60,C0,C0,80,00,00,00,00,00,00,00
810 DATA *
820 SCREEN 5,3,0:GOTO 10040' GO TO LOAD BACK GROUND IMAGE
10000 ' -- LOAD SPRITES
10010 S=&H7800'BASE(9)
10020 READ R$: IF R$="*" THEN RETURN ELSE VPOKE S,VAL("&H"+R$):S=S+1:GOTO 10020
10030 ' -- CLOCK APP STARTING POINT
10040 CLS:SCREEN 5,3,0:COLOR 15,0,1:OPEN "GRP:" FOR OUTPUT AS #1
10050 BLOAD "HYPER2.SC5",S
10060 COLOR = RESTORE:GOSUB 10000
10070 ON INTERVAL=60-10*(PEEK(&H2B)\128) GOSUB 10200
10080 INTERVAL ON
10090 GOSUB 10210: GOSUB 20360:GOTO 20400
10100 IF INKEY$="" THEN 10100
10110 END
10200 '
10210 GET DATE D$:GET TIME T$:H0=VAL(MID$(T$,1,1)):H1=VAL(MID$(T$,2,1)):M0=VAL(MID$(T$,4,1)):M1=VAL(MID$(T$,5,1)):S0=VAL(MID$(T$,7,1)):S1=VAL(MID$(T$,8,1)):K=(K+1)AND1:KK=10+(4*K)
10220 'PSET(0,0):PRINT #1,D$" "T$'FOR DEBUG
10221 'PRINT "H0"H0"H1"H1"M0"M0"M1"M1":"S0"S1"S1"K"K'FOR DEBUG
10225 PUT SPRITE 0,(0,160),10,H0:PUT SPRITE 1,(32,160),10,H1:PUT SPRITE 3,(64,160),KK,10:PUT SPRITE 4,(96,160),10,M0:PUT SPRITE 5,(128,160),10,M1:PUT SPRITE 6,(160,160),KK,10:PUT SPRITE 7,(192,160),10,S0:PUT SPRITE 8,(224,160),10,S1
10230 RETURN
20320 'DEFINE PALETTE COLORS
20360 P(0)=&H26:P(1)=&H26:P(2)=&H26:P(3)=&H26:P(4)=&H0:P(5)=&H0:P(6)=&H0:P(7)=&H0
20370 Q(0)=&H3:Q(1)=&H2:Q(2)=&H2:Q(3)=&H2:Q(4)=&H0:Q(5)=&H0:Q(6)=&H0:Q(7)=&H0
20380 RETURN
20400 'FRAME 1
20410 GOSUB 21230
20420 GOSUB 22110
20500 'FRAME 2
20510 GOSUB 21240
20520 GOSUB 22110
20600 'FRAME3
20610 GOSUB 21250
20620 GOSUB 22110
20700 'FRAME 4
20710 GOSUB 21260
20720 GOSUB 22110
20800 'FRAME 5
20810 GOSUB 21230
20820 GOSUB 22110
20900 'FRAME 6
20910 GOSUB 21240
20920 GOSUB 22110
21000'FRAME 7
21010 GOSUB 21250
21020 GOSUB 22110
21100'FRAME 8
21110 GOSUB 21260
21120 GOSUB 22110
21170 GOTO 20410
21220 'SHIFT PALETTES
21230 T=P(0):P(0)=P(4):P(4)=T:T=Q(0):Q(0)=Q(4):Q(4)=T:RETURN
21240 T=P(1):P(1)=P(5):P(5)=T:T=Q(1):Q(1)=Q(5):Q(5)=T:RETURN
21250 T=P(2):P(2)=P(6):P(6)=T:T=Q(2):Q(2)=Q(6):Q(6)=T:RETURN
21260 T=P(3):P(3)=P(7):P(7)=T:T=Q(3):Q(3)=Q(7):Q(7)=T:RETURN
22100' ASSIGN PALETTES 
22110 VDP(17)=2:OUT&H9A,P(0):OUT&H9A,Q(0):VDP(17)=3:OUT&H9A,P(1):OUT&H9A,Q(1):VDP(17)=4 :OUT&H9A,P(2):OUT&H9A,Q(2):VDP(17)=5:OUT&H9A,P(3):OUT&H9A,Q(3)
22120 VDP(17)=6:OUT&H9A,P(4):OUT&H9A,Q(4):VDP(17)=7:OUT&H9A,P(5):OUT&H9A,Q(5):VDP(17)=8:OUT&H9A,P(6):OUT&H9A,Q(6):VDP(17)=9:OUT&H9A,P(7):OUT&H9A,Q(7)
22130 RETURN