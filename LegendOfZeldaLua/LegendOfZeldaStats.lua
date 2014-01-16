
-- Legend of Zelda, The (U) (PRG0) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 12 January 2014
-- Displays game stats.

require 'auxlib';

local numheartslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local filledheartslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local linkxlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local linkylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local swordwbubcntdownlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy1xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy1ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy2xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy2ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy3xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy3ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy4xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy4ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy5xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy5ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy6xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy6ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy7xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy7ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy8xlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local enemy8ylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local boomerangbaitxlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local boomerangbaitylabel =  iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local arrowxlabel =  iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local arrowylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local pausedlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local maplocationlabel =  iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local usedcandlelabel =  iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local sworddisabledlabel =  iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local killedenemycountlabel =  iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
--local currentQuestslot1label =  iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};
--local currentQuestslot2label =  iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};
--local currentQuestslot3label =  iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};
--local numdeathsslot1label =  iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};
--local numdeathsslot2label =  iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};
--local numdeathsslot3label = iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};
local curposbitemlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local currentswordlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local numbombslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local arrowstatuslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local bowininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local candlestatuslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local whistleininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local foodininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local potionininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local magicrodininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local raftininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local magicbookininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local ringininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local stepladderininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local magicalkeyininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local powerbraceletininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local letterininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local compassstatuslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local mapstatuslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local level9compasspossessedlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local level9mappossessedlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local clockpossessedlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local numberofrupeeslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local numberofkeyslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local triforcepieceslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local boomerangininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local mboomerangininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local mshieldininventorylabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local maxnumbombslabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local numrupeestoaddlabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
local numrupeestosublabel = iup.label{size="35x8",title="Initializing...", alignment="ACENTER"};
--local linkstuniccolorlabel = iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};
--local linkstuniccoloraltlabel = iup.label{size="150x8",title="Initializing...", alignment="ACENTER"};



dialogs = dialogs + 1;
	handles[dialogs] =
		iup.dialog{
			title="The Lua of Zelda",
		    iup.vbox{
				iup.hbox{
				    iup.frame{
				  	title="Description",
						iup.vbox{
						  iup.label{size="150x8",title="Number of Heart Containers"},
						  iup.label{size="150x8",title="Number of Filled Heart Containers"},
						  iup.label{size="150x8",title="Link's X position"},
						  iup.label{size="150x8",title="Link's Y position"},
						  iup.label{size="150x8",title="No sword countdown / whitebubble"},
						  iup.label{size="150x8",title="Enemy 1 X position"},
						  iup.label{size="150x8",title="Enemy 1 Y position"},
						  iup.label{size="150x8",title="Enemy 2 X position"},
						  iup.label{size="150x8",title="Enemy 2 Y position"},
						  iup.label{size="150x8",title="Enemy 3 X position"},
						  iup.label{size="150x8",title="Enemy 3 Y position"},
						  iup.label{size="150x8",title="Enemy 4 X position"},
						  iup.label{size="150x8",title="Enemy 4 Y position"},
						  iup.label{size="150x8",title="Enemy 5 X position"},
						  iup.label{size="150x8",title="Enemy 5 Y position"},
						  iup.label{size="150x8",title="Enemy 6 X position"},
						  iup.label{size="150x8",title="Enemy 6 Y position"},
						  iup.label{size="150x8",title="Enemy 7 X position"},
						  iup.label{size="150x8",title="Enemy 7 Y position"},
						  iup.label{size="150x8",title="Enemy 8 X position"},
						  iup.label{size="150x8",title="Enemy 8 Y position"},
						  iup.label{size="150x8",title="Boomerang X position"},
						  iup.label{size="150x8",title="Boomerang Y position"},
						  iup.label{size="150x8",title="Arrow X position"},
						  iup.label{size="150x8",title="Arrow Y position"},
						  iup.label{size="150x8",title="Pause"},
						  iup.label{size="150x8",title="Map location"},
						  iup.label{size="150x8",title="Used candle"},
						  iup.label{size="150x8",title="Sword disabled"},
						  iup.label{size="150x8",title="Killed enemy count"},
						  --iup.label{size="150x8",title="Current quest slot 1"},
						  --iup.label{size="150x8",title="Current quest slot 2"},
						  --iup.label{size="150x8",title="Current quest slot 3"},
						  --iup.label{size="150x8",title="Number of deaths slot 1"},
						  --iup.label{size="150x8",title="Number of deaths slot 2"},
						  --iup.label{size="150x8",title="Number of deaths slot 3"},
						  iup.label{size="150x8",title="Curser position B item"},
						  iup.label{size="150x8",title="Current sword"},
						  iup.label{size="150x8",title="Number of bombs"},
						  iup.label{size="150x8",title="Current arrow"},
						  iup.label{size="150x8",title="Bow in current inventory"},
						  iup.label{size="150x8",title="Candle in current inventory"},
						  iup.label{size="150x8",title="Whistle in current inventory"},
						  iup.label{size="150x8",title="Food in current inventory"},
						  iup.label{size="150x8",title="Potion in current inventory"},
						  iup.label{size="150x8",title="Magic Rod in current inventory"},
						  iup.label{size="150x8",title="Raft in current inventory"},
						  iup.label{size="150x8",title="Magic Book in current inventory"},
						  iup.label{size="150x8",title="Ring in current inventory"},
						  iup.label{size="150x8",title="Step Ladder in current inventory"},
						  iup.label{size="150x8",title="Magical Key in current inventory"},
						  iup.label{size="150x8",title="Power Bracelet in current inventory"},
						  iup.label{size="150x8",title="Letter in current inventory"},
						  --iup.label{size="150x8",title="Current dungeon compass in current inventory"},
						  --iup.label{size="150x8",title="Current dungeon map in current inventory"},
						  --iup.label{size="150x8",title="Level 9 compass in current inventory"},
						  --iup.label{size="150x8",title="Level 9 map in current inventory"},
						  --iup.label{size="150x8",title="Clock status"},
						  --iup.label{size="150x8",title="Number of rupees"},
						  --iup.label{size="150x8",title="Number of keys"},
						  --iup.label{size="150x8",title="Number of triforce pieces"},
						  --iup.label{size="150x8",title="Boomerang in current inventory"},
						  --iup.label{size="150x8",title="Magic boomerang in current inventory"},
						  --iup.label{size="150x8",title="Magic shield in current inventory"},
						  --iup.label{size="150x8",title="Maximum number of bombs"},
						  --iup.label{size="150x8",title="Number of rupees adding"},
						  --iup.label{size="150x8",title="Number of rupees subtracting"},
						  --iup.label{size="150x8",title="Color of Link's tunic"},
						  --iup.label{size="150x8",title="Color of Link's tunic alt"},
						}
				    },
				    iup.frame{
						title="Current",
						iup.vbox{
							numheartslabel,
							filledheartslabel,
							linkxlabel,
							linkylabel,
							swordwbubcntdownlabel,
							enemy1xlabel,
							enemy1ylabel,
							enemy2xlabel,
							enemy2ylabel,
							enemy3xlabel,
							enemy3ylabel,
							enemy4xlabel,
							enemy4ylabel,
							enemy5xlabel,
							enemy5ylabel,
							enemy6xlabel,
							enemy6ylabel,
							enemy7xlabel,
							enemy7ylabel,
							enemy8xlabel,
							enemy8ylabel,
							boomerangbaitxlabel,
							boomerangbaitylabel,
							arrowxlabel,
							arrowylabel,
							pausedlabel,
							maplocationlabel,
							usedcandlelabel,
							sworddisabledlabel,
							killedenemycountlabel,
							--currentQuestslot1label,
							--currentQuestslot2label,
							--currentQuestslot3label,
							--numdeathsslot1label,
							--numdeathsslot2label,
							--numdeathsslot3label,
							curposbitemlabel,
							currentswordlabel,
							numbombslabel,
							arrowstatuslabel,
							bowininventorylabel,
							candlestatuslabel,
							whistleininventorylabel,
							foodininventorylabel,
							potionininventorylabel,
							magicrodininventorylabel,
							raftininventorylabel,
							magicbookininventorylabel,
							ringininventorylabel,
							stepladderininventorylabel,
							magicalkeyininventorylabel,
							powerbraceletininventorylabel,
							letterininventorylabel,
							--compassstatuslabel,
							--mapstatuslabel,
							--level9compasspossessedlabel,
							--level9mappossessedlabel,
							--clockpossessedlabel,
							--numberofrupeeslabel,
							--numberofkeyslabel,
							--triforcepieceslabel,
							--boomerangininventorylabel,
							--mboomerangininventorylabel,
							--mshieldininventorylabel,
							--maxnumbombslabel,
							--numrupeestoaddlabel,
							--numrupeestosublabel,
							--linkstuniccolorlabel,
							--linkstuniccoloraltlabel,
							}
				    },
				    iup.frame{
						title="Toggle",
						iup.vbox{
							  iup.toggle{size="150x8",title="Max heart containers", value="OFF"},
							  iup.toggle{size="150x8",title="Fill heart containers", value="OFF"},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.toggle{size="150x8",title="Use sword now", value="OFF"},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.label{size="150x8",title=""},
							  iup.toggle{size="150x8",title="Pause", value="OFF"},
							  iup.label{size="150x8",title=""},
							  iup.toggle{size="150x8",title="Candle used", value="OFF"},
							  iup.toggle{size="150x8",title="Sword disabled", value="OFF"},
							  iup.toggle{size="150x8",title="Killed enemy count", value="OFF"},
							  --iup.toggle{size="150x8",title="Set current quest to quest 2", value="OFF"},
							  --iup.toggle{size="150x8",title="Set current quest to quest 2", value="OFF"},
							  --iup.toggle{size="150x8",title="Set current quest to quest 2", value="OFF"},
							  --iup.toggle{size="150x8",title="Reset number of deaths to 0", value="OFF"},
							  --iup.toggle{size="150x8",title="Reset number of deaths to 0", value="OFF"},
							  --iup.toggle{size="150x8",title="Reset number of deaths to 0", value="OFF"},
							  iup.label{size="150x8",title=""},
							  iup.toggle{size="150x8",title="Set current sword", value="OFF"}, --drop down or buttons
							  iup.toggle{size="150x8",title="Max out current bombs", value="OFF"},
							  iup.toggle{size="150x8",title="Set current arrow", value="OFF"}, --drop down or buttons
							  iup.toggle{size="150x8",title="Add bow to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Set current candle", value="OFF"}, --drop down or buttons
							  iup.toggle{size="150x8",title="Add whistle to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add food to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add potion to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add magic rod to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add raft to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add magic book to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add ring to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add step ladder to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add magical key to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add power bracelet to inventory", value="OFF"},
							  iup.toggle{size="150x8",title="Add letter to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Add compass to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Add map to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Add level 9 compass to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Add level 9 map to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Toggle clock", value="OFF"},
							  --iup.toggle{size="150x8",title="Max out rupees", value="OFF"},
							  --iup.toggle{size="150x8",title="Max out keys", value="OFF"},
							  --iup.toggle{size="150x8",title="Max out triforce pieces", value="OFF"},
							  --iup.toggle{size="150x8",title="Add boomerang to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Add magical boomerange to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Add magic shield to inventory", value="OFF"},
							  --iup.toggle{size="150x8",title="Max out total bombs", value="OFF"},
							  --iup.toggle{size="150x8",title="Add rupees", value="OFF"}, --drop down or buttons
							  --iup.toggle{size="150x8",title="Subtract rupees", value="OFF"}, --drop down or buttons
							  --iup.toggle{size="150x8",title="Set Links tunic color", value="OFF"}, --drop down or buttons
							  --iup.toggle{size="150x8",title="Set Links tunic color alt", value="OFF"}, --drop down or buttons
						}
				    },
				},
		    }
		};

	handles[dialogs]:show();




local function text(x,y,str)
	if (x >= 0 and x <= 255 and y >= 0 and y <= 240) then
		gui.text(x,y,str);
	end;
end;

while (true) do

	-- Countdown until Link can use his sword again after touching a White Bubble
	local swordwbubcntdown = memory.readbyte(0x004C);


	-- Link X/Y Coordinates
	local p1xcoordinate = memory.readbyte(0x0070);
	local p1ycoordinate = memory.readbyte(0x0084);
	--text(10,10,"P C: " .. p1xcoordinate .. "," .. 240 - p1ycoordinate);


	-- Enemy X-position
	local enemy1x = memory.readbyte(0x0071);
	local enemy2x = memory.readbyte(0x0072);
	local enemy3x = memory.readbyte(0x0073);
	local enemy4x = memory.readbyte(0x0074);
	local enemy5x = memory.readbyte(0x0075);
	local enemy6x = memory.readbyte(0x0076);
	local enemy7x = memory.readbyte(0x0077);
	local enemy8x = memory.readbyte(0x0078);

	-- Enemy Y-position
	local enemy1y = memory.readbyte(0x0085);
	local enemy2y = memory.readbyte(0x0086);
	local enemy3y = memory.readbyte(0x0087);
	local enemy4y = memory.readbyte(0x0088);
	local enemy5y = memory.readbyte(0x0089);
	local enemy6y = memory.readbyte(0x008A);
	local enemy7y = memory.readbyte(0x008B);
	local enemy8y = memory.readbyte(0x008C);


	-- Boomerang/Bait X-position
	local boomerangbaitx = memory.readbyte(0x007F);

	-- Boomerang/Bait Y-position
	local boomerangbaity = memory.readbyte(0x0093);


	-- Link's Arrow X-position
	local arrowx = memory.readbyte(0x0082);

	-- Link's Arrow Y-position
	local arrowy = memory.readbyte(0x0096);


	-- Game Paused? 	$=No, $01=Yes
	local paused = memory.readbyte(0x00E0);


	-- Current map location 	Value equals map x location + 0x10 * map y location
	local maplocation = memory.readbyte(0x00EB);


	-- Whether Link has used the candle on the current screen 	$00=No, $01=Yes
	local usedcandle = memory.readbyte(0x0513);


	-- Red Bubble Sword Disable switch 	$01 if Link's use of his sword has been
	-- disabled by a red bubble, $00 otherwise.
	local sworddisabled = memory.readbyte(0x052E);


	-- Killed enemy count 	Number of killed enemies in current screen
	local killedenemycount = memory.readbyte(0x0627);


	-- Current quest for first save slot 	$00=First, $01=Second
	local currentQuestslot1 = memory.readbyte(0x062D);

	-- Current quest for second save slot 	$00=First, $01=Second
	local currentQuestslot2 = memory.readbyte(0x062E);

	-- Current quest for third save slot 	$00=First, $01=Second
	local currentQuestslot3 = memory.readbyte(0x062F);


	-- Number of deaths for first save slot
	local numdeathsslot1 = memory.readbyte(0x0630);

	-- Number of deaths for second save slot
	local numdeathsslot2 = memory.readbyte(0x0631);

	-- Number of deaths for third save slot
	local numdeathsslot3 = memory.readbyte(0x0632);


	-- Cursor position for selecting Link's B item
	local curposbitem = memory.readbyte(0x0656);


	-- Current sword 	$00=None, $01=Sword, $02=White Sword, $03=Magical Sword
	local currentsword = memory.readbyte(0x0657);


	-- Number of Bombs
	local numbombs = memory.readbyte(0x0658);


	-- Arrow status 	$00=None, $01=Arrow, $02=Silver Arrow
	local arrowstatus = memory.readbyte(0x0659);


	-- Bow in Inventory 	$00=False, $01=True
	local bowininventory = memory.readbyte(0x065A);

	-- Status of candle 	00=None, $01=Blue Candle, $02=Red Candle
	local candlestatus = memory.readbyte(0x065B);

	-- Whistle in Inventory 	$00=False, $01=True
	local whistleininventory = memory.readbyte(0x065C);

	-- Food in Inventory 	$00=False, $01=True
	local foodininventory = memory.readbyte(0x065D);

	-- Potion in Inventory 	$00=None/Letter, $01=Life Potion, $02=2nd Potion
	local potionininventory = memory.readbyte(0x065E);

	-- Magical Rod in Inventory 	$00=False, $01=True
	local magicrodininventory = memory.readbyte(0x065F);

	-- Raft in Inventory 	$00=False, $01=True
	local raftininventory = memory.readbyte(0x0660);

	-- Magic Book in Inventory 	$00=False, $01=True
	local magicbookininventory = memory.readbyte(0x0661);

	-- Ring in Inventory 	$00-None, $01-Blue Ring, $02-Red Ring. Note: Changing this value
	-- will not change Link's color.
	local ringininventory = memory.readbyte(0x0662);


	-- Step Ladder in Inventory 	$00=False, $01=True
	local stepladderininventory = memory.readbyte(0x0663);

	-- Magical Key in Inventory 	$00=False, $01=True
	local magicalkeyininventory = memory.readbyte(0x0664);

	-- Power Bracelet in Inventory 	$00=False, $01=True
	local powerbraceletininventory = memory.readbyte(0x0665);

	-- Letter in Inventory 	$00=False, $01=True, Link can buy potions from the old woman if $02.
	local letterininventory = memory.readbyte(0x0666);


	-- Compass status for Levels 1 through 8 	When value is converted to binary, a $01
	-- represents having the Compass and a $00 represents not having it.
	local compassstatus = memory.readbyte(0x0667);

	-- Map status for Levels 1 through 8 	When value is converted to binary, a $01
	-- represents having the Map and a $00 represents not having it.
	local mapstatus = memory.readbyte(0x0668);


	-- Level 9 Compass possessed 	$00=False, $01=True
	local level9compasspossessed = memory.readbyte(0x0669);

	-- Level 9 Map possessed 	$00=False, $01=True
	local level9mappossessed = memory.readbyte(0x066A);


	-- Clock possessed 	$00=False, $01=True
	local clockpossessed = memory.readbyte(0x066C);


	-- Number of Rupees
	local numberofrupees = memory.readbyte(0x066D);


	-- Number of Keys
	local numberofkeys = memory.readbyte(0x066E);


	-- Player 1 HPs
	local p1hp = memory.readbyte(0x066F);
	local p1hplast = memory.readbyte(0x0670);

	-- 0x0670 	The heart following the last filled heart
	-- $00 = empty, $01 to $7F = half full, $80 to $FF = full.
	local last = 0;
	if (p1hplast == 0) then
		last = 0;
	 elseif (p1hplast >= 1 and p1hplast <= 127) then
		last = .5;
	 elseif (p1hplast >= 128 and p1hplast <= 255) then
		last = 1;
	end;

	-- decimal to hex
	local p1hphex = string.format("%x",p1hp);

	-- 0x066F Heart Containers
	-- Low Nibble = how many hearts are filled.
	-- High Nibble = Number of heart containers - 1
	local lownibble = string.sub(p1hphex, 2);
	local highnibble = string.sub(p1hphex, 1,1);

	local p1lownibble = string.format("%d",lownibble);
	local p1highnibble = string.format("%d",highnibble);

	local heartsfilled = tonumber(p1lownibble) + last;
	local totalnumofheartcontainers = tonumber(p1highnibble) + 1;

	text(10,20,"HP: " .. heartsfilled .. "/" .. totalnumofheartcontainers);


	-- Triforce pieces 	When value is converted to binary, a $01 represents having the piece
	-- and a $00 represents not having it.
	local triforcepieces = memory.readbyte(0x0671);


	-- Boomerang in Inventory 	$00=False, $01=True. Note: 0x0675 overrides this variable.
	local boomerangininventory = memory.readbyte(0x0674);

	-- Magical Boomerang in Inventory 	$00=False, $01=True.
	local mboomerangininventory = memory.readbyte(0x0675);

	-- Magic Shield in Inventory 	$00=False, $01=True.
	local mshieldininventory = memory.readbyte(0x0676);


	-- Maximum number of bombs 	Starts out as $08
	local maxnumbombs = memory.readbyte(0x067C);


	-- Number of rupees to add
	local numrupeestoadd = memory.readbyte(0x067D);

	-- Number of rupees to subtract
	local numrupeestosub = memory.readbyte(0x067E);


	-- NOT SURE ON THE FOLLOWING TWO
	-- Link's tunic color 	$29 = green, $32 = blue, $16 = red
	local linkstuniccolor = memory.readbyte(0x6804);

	-- Link's tunic color. Overwritten with 0x6804 when Link exits a cave or enters or exits a level
	local linkstuniccoloralt = memory.readbyte(0x6B92);


	-- update "Current" labels
	numheartslabel.title = totalnumofheartcontainers;
	filledheartslabel.title = heartsfilled;
	linkxlabel.title = p1xcoordinate;
	linkylabel.title = p1ycoordinate; --Should be 240 - p1ycoordinate?
	swordwbubcntdownlabel.title = swordwbubcntdown;
	enemy1xlabel.title = enemy1x;
	enemy1ylabel.title = enemy1x;
	enemy2xlabel.title = enemy2x;
	enemy2ylabel.title = enemy2y;
	enemy3xlabel.title = enemy3x;
	enemy3ylabel.title = enemy3y;
	enemy4xlabel.title = enemy4x;
	enemy4ylabel.title = enemy4y;
	enemy5xlabel.title = enemy5x;
	enemy5ylabel.title = enemy5y;
	enemy6xlabel.title = enemy6x;
	enemy6ylabel.title = enemy6y;
	enemy7xlabel.title = enemy7x;
	enemy7ylabel.title = enemy7y;
	enemy8xlabel.title = enemy8x;
	enemy8ylabel.title = enemy8y;
	boomerangbaitxlabel.title = boomerangbaitx;
	boomerangbaitylabel.title = boomerangbaity;
	arrowxlabel.title = arrowx;
	arrowylabel.title = arrowy;
	pausedlabel.title = paused;
	maplocationlabel.title = maplocation;
	usedcandlelabel.title = usedcandle;
	sworddisabledlabel.title = sworddisabled;
	killedenemycountlabel.title = killedenemycount;
	--currentQuestslot1label.title = currentQuestslot1;
	--currentQuestslot2label.title = currentQuestslot2;
	--currentQuestslot3label.title = currentQuestslot3;
	--numdeathsslot1label.title = numdeathsslot1;
	--numdeathsslot2label.title = numdeathsslot2;
	--numdeathsslot3label.title = numdeathsslot3;
	curposbitemlabel.title = curposbitem;
	currentswordlabel.title = currentsword;
	numbombslabel.title = numbombs;
	arrowstatuslabel.title = arrowstatus;
	bowininventorylabel.title = bowininventory;
	candlestatuslabel.title = candlestatus;
	whistleininventorylabel.title = whistleininventory;
	foodininventorylabel.title = foodininventory;
	potionininventorylabel.title = potionininventory;
	magicrodininventorylabel.title = magicrodininventory;
	raftininventorylabel.title = raftininventory;
	magicbookininventorylabel.title = magicbookininventory;
	ringininventorylabel.title = ringininventory;
	stepladderininventorylabel.title = stepladderininventory;
	magicalkeyininventorylabel.title = magicalkeyininventory;
	powerbraceletininventorylabel.title = powerbraceletininventory;
	letterininventorylabel.title = letterininventory;
	--compassstatuslabel.title = compassstatus;
	--mapstatuslabel.title = mapstatus;
	--level9compasspossessedlabel.title = level9compasspossessed;
	--level9mappossessedlabel.title = level9mappossessed;
	--clockpossessedlabel.title = clockpossessed;
	--numberofrupeeslabel.title = numberofrupees;
	--numberofkeyslabel.title = numberofkeys;
	--triforcepieceslabel.title = triforcepieces;
	--boomerangininventorylabel.title = boomerangininventory;
	--mboomerangininventorylabel.title = mboomerangininventory;
	--mshieldininventorylabel.title = mshieldininventory;
	--maxnumbombslabel.title = maxnumbombs;
	--numrupeestoaddlabel.title = numrupeestoadd;
	--numrupeestosublabel.title = numrupeestosub;
	--linkstuniccolorlabel.title = linkstuniccolor;
	--linkstuniccoloraltlabel.title = linkstuniccoloralt;

	FCEU.frameadvance();
end;
