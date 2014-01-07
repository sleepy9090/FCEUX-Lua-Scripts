For use with "Faxanadu (U) (PRG0) [!].nes" rom with FCEUX
Written by sleepy - Shawn M. Crawford
6 January 2014
Displays Player Coordinates and sprite HP stats on screen.

FaxanaduStatsDynamic.lua:
The HP stats follow the sprites.

FaxanaduStatsStatic.lua
The HP stats are statically set in the upper left corner of the screen.

Noted offsets:

0431: HP (0-50)
039A: MP (0-50)

034B: S1 HP
034A: S2 HP
0340: S3 HP

009E: P1 X
00A1: P1 Y		(240 - Y)

00C1: S1 X
00C9: S1 Y

00C0: S2 X
00C8: S2 Y

00BF: S3 X
00C7: S3 Y
