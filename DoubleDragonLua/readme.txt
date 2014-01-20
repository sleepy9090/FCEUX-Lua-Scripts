For use with "Double Dragon (U) [!].nes" rom with FCEUX
Written by sleepy - Shawn M. Crawford
19 January 2014

DoubleDragonStatsDynamic.lua:
Displays Player Coordinates, HP, and Enemy HP stats on screen.
The HP stats follow the characters.

DoubleDragonStatsStatic.lua
Displays Player Coordinates, HP, and Enemy HP stats on screen.
The HP stats are statically set in the upper left corner of the screen.

DoubleDragonDragAndDrop.lua
Billy can be dragged and dropped anywhere on the screen by left clicking.

Noted offsets:

03B4: 1P HP
03B5: E1 HP
03B6: E2 HP

005A: P1 X
0072: P1 Y

005B: E1 X
0073: E1 Y

005C: E2 X
0074: E2 Y

03B0: determines the move that the user does next
0505: last 2 digits on timer
0506: 1st digit on timer
0034: 2nd & 3rd digit of high score
0040: number of hearts, 00 = 1, 06 = 7
0041: last 2 digits on xp
0042: first digit on xp
0043: number of players
0044: 2nd & 3rd digit of score
0045: position 4 and 5 on player score
0047: level position? trigger next level? warp?
0076: remove/restore item?
