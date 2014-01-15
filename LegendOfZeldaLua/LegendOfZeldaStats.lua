
-- Legend of Zelda, The (U) (PRG0) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 12 January 2014
-- Displays Player Coordinates, HP, and Enemy HP stats on screen.

require 'auxlib';

local numheartslabel = iup.label{size="150x",title="Initializing..."};
local filledheartslabel = iup.label{size="150x",title="Initializing..."};
local linkxlabel = iup.label{size="150x",title="Initializing..."};
local linkylabel = iup.label{size="150x",title="Initializing..."};
local swordwbubcntdownlabel = iup.label{size="150x",title="Initializing..."};


dialogs = dialogs + 1;
	handles[dialogs] =
		iup.dialog{
			title="The Lua of Zelda",
		    iup.vbox{
				iup.hbox{
				    iup.frame{
				  	title="Description",
						iup.vbox{
						  iup.label{size="150x",title="Number of Heart Containers"},
						  iup.label{size="150x",title="Number of Filled Heart Containers"},
						  iup.label{size="150x",title="Link's x position"},
						  iup.label{size="150x",title="Link's y position"},
						  iup.label{size="150x",title="No sword countdown / whitebubble"},
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
							}
				    },
				    iup.frame{
						title="Toggle",
						iup.vbox{
							  iup.toggle{size="150x",title="Max heart containers", value="OFF"},
							  iup.toggle{size="150x",title="Fill heart containers", value="OFF"},
							  iup.label{size="150x",title=""},
							  iup.label{size="150x",title=""},
							  iup.toggle{size="150x",title="Use sword now", value="OFF"},
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
	local lownibble = string.sub(p1hphex, 2) + last;
	local highnibble = string.sub(p1hphex, 1,1) + 1;

	text(10,20,"HP: " .. lownibble .. "/" .. highnibble);

































	-- update "Current" labels
	numheartslabel.title = highnibble;
	filledheartslabel.title = lownibble;
	linkxlabel.title = p1xcoordinate;
	linkylabel.title = p1ycoordinate; --Should be 240 - p1ycoordinate?
	swordwbubcntdownlabel.title = swordwbubcntdown;

	FCEU.frameadvance();
end;
