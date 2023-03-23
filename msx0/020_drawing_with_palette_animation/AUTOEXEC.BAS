1 ' Copyright (c) 2023 emef220 
2 ' Released under the MIT license
3 ' https://opensource.org/licenses/mit-license.php
4 '
5 ' --------------------------------------------------------------------------
6 ' 020_drawing_with_palette_animation
7 ' --------------------------------------------------------------------------
8 '
10 CLS:COLOR 15,0,1:SCREEN5:COLOR=NEW
20 _TURBOON:DIMP(16),Q(16)
30 SPRITEOFF
40 IF PAD(4)=0 THEN 40
50 X=PAD(5):Y=PAD(6):IF C=14 THEN C=2
60 IF X>240 AND Y>198 THEN GOTO 2041
70 GOSUB 80:GOTO 40
80 C=C+1:A=X+3:B=Y+3:FOR J=YTOB:FOR I=XTOA:PSET(I,J),C:NEXTI:NEXTJ:RETURN
2020 ' DEFINE FG/BG COLOR
2021 R1=7:G1=7:B1=7:R2=0:G2=0:B2=0
2022 C1=&H07:C=&H0:D1=&H0:D2=&H0
2023 RETURN
2030 'DEFINE PALETTE COLORS
2031 FOR I=2TO7:P(I)=C1:Q(I)=C2:NEXTI:FORI=8TO14:P(I)=D1:Q(I)=D2:NEXTI
2032 RETURN
2040 'PALETTE ANIMATION
2041 GOSUB 2020: GOSUB 2030
2042 GOSUB 2111: GOSUB 2211
2043 IF STICK(0)=7 THEN END
2044 GOTO 2042
2111 S=P(14):T=Q(14):FOR I=14TO3 STEP-1:P(I)=P(I-1):Q(I)=Q(I-1):NEXTI:P(2)=S:Q(2)=T:RETURN
2211 FOR I=2TO14:VDP(17)=I:OUT&H9A,P(I):OUT&H9A,Q(I):NEXTI:RETURN
