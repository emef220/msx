1 ' Copyright (c) 2023 emef220 
2 ' Released under the MIT license
3 ' https://opensource.org/licenses/mit-license.php
4 '
5 ' -----------------------------------------------------------
6 ' 007_sc5file_display_test
7 ' -----------------------------------------------------------
8 '
10 SCREEN 5:COLOR 15,0,1:DEFINT A-Z
20 BLOAD "SILPHEED.SC5",S
30 COLOR = RESTORE
40 IF STICK(0)=7 THEN EXIT
50 GOTO 40

