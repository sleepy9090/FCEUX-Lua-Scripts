For use with "Legend of Zelda, The (U) (PRG0) [!].nes" rom with FCEUX
Written by sleepy - Shawn M. Crawford
16 January 2014
Displays game stats in a gui.


Noted offsets:
0x004C 	Countdown until Link can use his sword again after touching a White Bubble
0x0070 	Link's X-position on the screen 
0x0084 	Link's Y-position on the screen 
0x0071 	Enemy #1's X-position
0x0072 	Enemy #2's X-position
0x0073 	Enemy #3's X-position
0x0074 	Enemy #4's X-position
0x0075 	Enemy #5's X-position
0x0076 	Enemy #6's X-position
0x0077 	Enemy #7's X-position
0x0078 	Enemy #8's X-position
0x0085 	Enemy #1's Y-position
0x0086 	Enemy #2's Y-position
0x0087 	Enemy #3's Y-position
0x0088 	Enemy #4's Y-position
0x0089 	Enemy #5's Y-position
0x008A 	Enemy #6's Y-position
0x008B 	Enemy #7's Y-position
0x008C 	Enemy #8's Y-position
0x007F 	Boomerang/Bait X-position 
0x0093 	Boomerang/Bait Y Position 
0x0082 	Link's Arrow X-position 
0x0096 	Link's Arrow Y-position 
0x00E0 	Game Paused? 	$=No, $01=Yes 
0x00EB 	Current map location 	Value equals map x location + 0x10 * map y location 
0x0513 	Whether Link has used the candle on the current screen 	$00=No, $01=Yes 
0x052E 	Red Bubble Sword Disable switch 	$01 if Link's use of his sword has been disabled by a red bubble, $00 otherwise. 
0x0627 	Killed enemy count 	Number of killed enemies in current screen 
0x062D 	Current quest for first save slot 	$00=First, $01=Second
0x062E 	Current quest for second save slot 	$00=First, $01=Second
0x062F 	Current quest for third save slot 	$00=First, $01=Second
0x0630 	Number of deaths for first save slot 	
0x0631 	Number of deaths for second save slot 	
0x0632 	Number of deaths for third save slot 	
0x0656 	Cursor position for selecting Link's B item 	
0x0657 	Current sword 	$00=None, $01=Sword, $02=White Sword, $03=Magical Sword
0x0658 	Number of Bombs 	
0x0659 	Arrow status 	$00=None, $01=Arrow, $02=Silver Arrow
0x065A 	Bow in Inventory 	$00=False, $01=True
0x065B 	Status of candle 	00=None, $01=Blue Candle, $02=Red Candle
0x065C 	Whistle in Inventory 	$00=False, $01=True
0x065D 	Food in Inventory 	$00=False, $01=True
0x065E 	Potion in Inventory 	$00=None/Letter, $01=Life Potion, $02=2nd Potion
0x065F 	Magical Rod in Inventory 	$00=False, $01=True
0x0660 	Raft in Inventory 	$00=False, $01=True
0x0661 	Magic Book in Inventory 	$00=False, $01=True
0x0662 	Ring in Inventory 	$00-None, $01-Blue Ring, $02-Red Ring. Note: Changing this value will not change Link's color.
0x0663 	Step Ladder in Inventory 	$00=False, $01=True
0x0664 	Magical Key in Inventory 	$00=False, $01=True
0x0665 	Power Bracelet in Invenotry 	$00=False, $01=True
0x0666 	Letter in Inventory 	$00=False, $01=True, Link can buy potions from the old woman if $02.
0x0667 	Compass status for Levels 1 through 8 	When value is converted to binary, a $01 represents having the Compass and a $00 represents not having it.
0x0668 	Map status for Levels 1 through 8 	When value is converted to binary, a $01 represents having the Map and a $00 represents not having it.
0x0669 	Level 9 Compass possessed 	$00=False, $01=True
0x066A 	Level 9 Map possessed 	$00=False, $01=True
0x066C 	Clock possessed 	$00=False, $01=True
0x066D 	Number of Rupees
0x066E 	Number of Keys

0x066F 	Heart Containers 
Low Nibble = how many hearts are filled. 
High Nibble = Number of heart containers - 1
Ex: $10 = 2 Heart Containers with none filled
1 + 1 = 2
0

11
1 + 1 = 2
1

81
8 + 1 = 9
1

0x0670 	The heart following the last filled heart 	$00 = empty, $01 to $7F = half full, $80 to $FF = full.
0x0671 	Triforce pieces 	When value is converted to binary, a $01 represents having the piece and a $00 represents not having it.
0x0674 	Boomerang in Inventory 	$00=False, $01=True. Note: 0x0675 overrides this variable.
0x0675 	Magical Boomerang in Inventory 	$00=False, $01=True.
0x0676 	Magic Shield in Inventory 	$00=False, $01=True.
0x067C 	Maximum number of bombs 	Starts out as $08.
0x067D 	Number of rupees to add 	
0x067E 	Number of rupees to subtract 	
0x6804 	Link's tunic color 	$29 = green, $32 = blue, $16 = red
0x6B92 	Link's tunic color. Overwritten with 0x6804 when Link exits a cave or enters or exits a level 

41 green, 16 blue?


