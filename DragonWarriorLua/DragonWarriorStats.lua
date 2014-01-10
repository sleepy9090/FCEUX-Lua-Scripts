-- Dragon Warrior (U) (PRG0) [!].nes
-- Dragon Warrior (U) (PRG1) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 9 January 2014
-- Displays Player coordinates and stats on screen.

local function text(x,y,str)
	if (x >= 0 and x <= 255 and y >= 0 and y <= 240) then
		gui.text(x,y,str);
	end;
end;

local function getmapname(mid)

	local mapname = "unknown";

	if (mid == 0x01) then mapname = "World Map";
	elseif (mid == 0x02) then mapname = "Charlock Castle";
	elseif (mid == 0x03) then mapname = "Ruins of Hauksness";
	elseif (mid == 0x04) then mapname = "Tantegel Castle";
	elseif (mid == 0x05) then mapname = "Throne Room";
	elseif (mid == 0x06) then mapname = "Dragonlord's Lair";
	elseif (mid == 0x07) then mapname = "Kol";
	elseif (mid == 0x08) then mapname = "Breconary";
	elseif (mid == 0x09) then mapname = "Garinham";
	elseif (mid == 0x0A) then mapname = "Cantlin";
	elseif (mid == 0x0B) then mapname = "Rimuldar";
	elseif (mid == 0x0C) then mapname = "Sun Shrine";
	elseif (mid == 0x0D) then mapname = "Rain Shrine";
	elseif (mid == 0x0E) then mapname = "Magic Temple";
	elseif (mid == 0x0F) then mapname = "Dragonlord B1";
	elseif (mid == 0x10) then mapname = "Dragonlord B2";
	elseif (mid == 0x11) then mapname = "Dragonlord B3";
	elseif (mid == 0x12) then mapname = "Dragonlord B4";
	elseif (mid == 0x13) then mapname = "Dragonlord B5";
	elseif (mid == 0x14) then mapname = "Dragonlord B6";
	elseif (mid == 0x15) then mapname = "Swamp Cave";
	elseif (mid == 0x16) then mapname = "Mountain Cave B1";
	elseif (mid == 0x17) then mapname = "Mountain Cave B2";
	elseif (mid == 0x18) then mapname = "Garin's Grave B1";
	elseif (mid == 0x19) then mapname = "Garin's Grave B2";
	elseif (mid == 0x1A) then mapname = "Garin's Grave B3";
	elseif (mid == 0x1B) then mapname = "Garin's Grave B4";
	elseif (mid == 0x1C) then mapname = "Erdrick's Cave B1";
	elseif (mid == 0x1D) then mapname = "Erdrick's Cave B2";
	end;

	return mapname;
end;

while (true) do

	-- Player Coordinates
	local p1xcoordinate = memory.readbyte(0x003A);
	local p1ycoordinate = memory.readbyte(0x003B);
	text(80,10,"C X: " .. p1xcoordinate .. ", Y: " .. 240 - p1ycoordinate);

	-- Player HPs
	local php = memory.readbyte(0x00C5);
	local maxphp = memory.readbyte(0x00CA);
	text(10,10,"HP: " .. php .. "/" .. maxphp);

	-- Player MPs
	local pmp = memory.readbyte(0x00C6);
	local maxpmp = memory.readbyte(0x00CB);
	text(10,20,"MP: " .. pmp .. "/" .. maxpmp);

	-- Player MPs
	local pmp = memory.readbyte(0x00C6);
	local maxpmp = memory.readbyte(0x00CB);
	text(10,20,"MP: " .. pmp .. "/" .. maxpmp);

	-- Light Timer
	local lighttimer = memory.readbyte(0x00DA);
	text(180, 10, "Light Timer: " .. lighttimer);

	-- Light Radius
	local lightradius = memory.readbyte(0x00D0);
	text(180, 20, "Light Radius: " .. lightradius);

	--Repel Timer
	local repeltimer = memory.readbyte(0x00DB);
	text(180, 30, "Repel Timer: " .. repeltimer);

	-- Random Number
	local randomnumberinfluence = memory.readbyte(0x0094);
	local randomnumbervalue = memory.readbyte(0x0095);
	text(180, 40, "Random: " .. randomnumbervalue);
    text(180, 50, "Influence: " .. randomnumberinfluence);

	-- Enemy HPs
	local ehp = memory.readbyte(0x00E2);
	text(10,220,"Enemy HP: " .. ehp);

	-- Map ID
	local mid = memory.readbyte(0x0045);
	local mapname = getmapname(mid);
	text(120,220,"Map ID: " .. mid .. " " .. mapname);

	-- Terrain / Enemy Pointer
	local tep = memory.readbyte(0x00E0);
	text(120,210,"Terrain / Enemy: " .. tep);

	FCEU.frameadvance();
end;
