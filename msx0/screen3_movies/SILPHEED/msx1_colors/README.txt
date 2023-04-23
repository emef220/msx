Copyright (c) 2023 emef220 
Released under the MIT license
https://opensource.org/licenses/mit-license.php
SCREEN 3 Movie example for MSX BASIC

1. How to run
	RUN "SC3MOV.BAS"

2. Files
2.1 Program
	AUTOEXEC.BAS // Same as SC3MOV.BAS
	SC3MOV.BAS   // Play SC3 moveie
	SC5SC3.BAS   // Generate .SC3 files from .SC5

2.2. Data file
2.2.1 Input Data in SCREEN 3
	Supporsing BLOAD in SCREEN 5
	
	Page 0 &H800   -&H3FFF 7 frames
	P0_800.SC3
	
	Page 0 &H4000 - &H7FFF 8 frames
	P0_4000.SC3
	
	Page 1 &H0    - &H3FFF 8 frames
	P1_0.SC3
	
	Page 1 &H4000 - &H7FFF 8 frames
	P1_4000.SC3

	Page 2 &H0    - &H3FFF 8 frames
	P2_0.SC3

	Page 2 &H4000 - &H7FFF 8 frames
	P2_4000.SC3

	Page 3 &H0    - &H3FFF 8 frames
	P3_3.SC3

	Page 3 &H4000 - &H7FFF 8 frames
	P3_4000.SC3

	Thus Total &H0800 - &HFFFF 63 frames with 8 files.


2.2.2 SCREEN5 source to be converted to SCREEN 3 by SC5SC3.BAS
	Supporsing BLOAD in SCREEN 5
	
	Page 0 &H800   -&H3FFF 7 frames
	P0_800.SC5
	
	Page 0 &H4000 - &H7FFF 8 frames
	P0_4000.SC5
	
	Page 1 &H0    - &H3FFF 8 frames
	P1_0.SC5
	
	Page 1 &H4000 - &H7FFF 8 frames
	P1_4000.SC5

	Page 2 &H0    - &H3FFF 8 frames
	P2_0.SC5

	Page 2 &H4000 - &H7FFF 8 frames
	P2_4000.SC5

	Page 3 &H0    - &H3FFF 8 frames
	P3_3.SC5

	Page 3 &H4000 - &H7FFF 8 frames
	P3_4000.SC5

	Thus Total &H0800 - &HFFFF 63 frames with 8 files.


