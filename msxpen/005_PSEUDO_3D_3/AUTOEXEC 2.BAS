1 ' Copyright (c) 2023 emef220 
2 ' Released under the MIT license
3 ' https://opensource.org/licenses/mit-license.php
4 '
5 ' -----------------------------------------------------------
6 ' PSEUDO 3D Palette Animation ( MSX2 or later)
7 ' -----------------------------------------------------------
8 '
10 ' SCREEN MODE 5
15 COLOR 15,0,1:SCREEN 5:DEFINT A-Z
20 ' C(0), C(1) : Offset of palettes  A : Tile Width B: Next end point of the LINE command (X-axis)
22 ' E: Index of C(0), C(1) F: Scaling for X-axis..  G: Not used (For scaling Y-axis...)
23  C(0)=2:C(1)=6:B=2:D=0:A=2:E=0:F=8:G=0
100 'LEFT SCREEN (X:0-127)
110 FOR Y= 0 TO 96
115 'G = 32*(SIN(3.1415927*Y/512))
120 B=0: E=E+1:IF(EMOD4)=0 THEN  GOSUB 610
130 FOR X=127TO 0 STEP -1
140 S=127-X:
150 IF S=0 THEN PSET(X,Y+112),C(DAND1)+(EMOD4):D=0
160 IF S=B THEN GOSUB 810
170 IF S=127 THEN GOSUB 810
180 NEXT
190 NEXT Y
200 'RIGHT SCREEN (X:128-255)
205 E = 0
210 FOR Y= 0 TO 96
230 B=0:E=E+1:IF(EMOD4)=0 THEN GOSUB 610
240 FOR X=0 TO 127
245 S=127-X:
250 IF X=0 THEN PSET(X+128,Y+112),C(DAND1)+(EMOD4):D=1
260 IF X=B THEN GOSUB 910
270 IF X=127 THEN GOSUB 910
280 NEXT X
290 NEXT Y
300 GOTO 1500
600 'SUB ROUTINE for swapping color
610 T=C(0):C(0)=C(1):C(1)=T:RETURN
800 'SUB ROUTINE for DRAWING LEFT SCREEN
810 LINE-(X,Y+112),C(DAND1)+(EMOD4):D=D+1:F=(0.25*Y)+4*(SIN(3.1415927*S/512)):B=S+A+F:RETURN
900 'SUB ROUTINE for DRAWING RIGHT SCREEN
910 LINE-(X+127,Y+112),C(DAND1)+(EMOD4):D=D+1:F=(0.25*Y)+4*(SIN(3.1415927*X/512)):B=X+A+F:RETURN
1500 ' Palette Animation
1530 ' Initilize Pallets
1531 COLOR=(10,6,6,3):COLOR=(11,6,6,4):COLOR=(12,4,6,3):COLOR=(13,6,6,4):COLOR=(14,4,6,4)
1910 ' BG
1911 FOR Y=0 TO 111
1912 LINE(0,Y)-(255,Y),13
2000 NEXT Y
2015 BSAVE "PSD3D3.SC5",0,256*212-1,S
2030 'Init variables
2032 A=7:B=7:C=7:D=7:E=0:F=0:G=0:H=0:J=0:K=0:L=0:M=0:N=0:O=0:P=0:S=&H26:T=&H2:U=&H46:V=&H6
2040 'FRAME 1
2041 A=S:B=T:C=S:D=T:E=S:F=T:G=S:H=T
2042 I=U:J=V:K=U:L=V:M=U:N=V:O=U:P=V:GOSUB 2216
2050 'FRAME 2
2051 A=U:B=V:C=S:D=T:E=S:F=T:G=S:H=T
2052 I=S:J=T:K=U:L=V:M=U:N=V:O=U:P=V:GOSUB 2216
2060 'FRAME3
2061 A=U:B=V:C=U:D=V:E=S:F=T:G=S:H=T
2062 I=S:J=T:K=S:L=T:M=U:N=V:O=U:P=V:GOSUB 2216
2070 'FRAME 4
2071 A=U:B=V:C=U:D=V:E=U:F=V:G=S:H=T
2072 I=S:J=T:K=S:L=T:M=S:N=T:O=U:P=V:GOSUB 2216
2080 'FRAME 5
2081 A=U:B=V:C=U:D=V:E=U:F=V:G=U:H=V
2085 I=S:J=T:K=S:L=T:M=S:N=T:O=S:P=T:GOSUB 2216
2090 'FRAME 6
2091 A=S:B=T:C=U:D=V:E=U:F=V:G=U:H=V
2095 I=U:J=V:K=S:L=T:M=S:N=T:O=S:P=T:GOSUB 2216
2100'FRAME 7
2101 A=S:B=T:C=S:D=T:E=U:F=V:G=U:H=V
2102 I=U:J=V:K=U:L=V:M=S:N=T:O=S:P=T:GOSUB 2216
2110'FRAME 8
2111 A=S:B=T:C=S:D=T:E=S:F=T:G=U:H=V
2112 I=U:J=V:K=U:L=V:M=U:N=V:O=S:P=T:GOSUB 2216
2121 GOTO 2041
2210' Pallet Assignment
2211 'COLOR=(2,A,A,A):COLOR=(3,B,B,B):COLOR=(4,C,C,C):COLOR=(5,D,D,D)
2212 'COLOR=(6,E,E,E):COLOR=(7,F,F,F):COLOR=(8,G,G,G):COLOR=(9,H,H,H)
2216 VDP(17)=2 :OUT&H9A,A:OUT&H9A,B:VDP(17)=3 :OUT&H9A,C:OUT&H9A,D:VDP(17)=4:OUT&H9A,E:OUT&H9A,F::VDP(17)=5:OUT&H9A,G:OUT&H9A,H
2218 VDP(17)=6:OUT&H9A,I:OUT&H9A,J:VDP(17)=7:OUT&H9A,K:OUT&H9A,L:VDP(17)=8:OUT&H9A,M:OUT&H9A,N:VDP(17)=9:OUT&H9A,O:OUT&H9A,P
2220 RETURN
3010 I$=INPUT$(1)