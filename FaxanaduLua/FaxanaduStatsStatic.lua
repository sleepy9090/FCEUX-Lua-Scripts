
-- Faxanadu (U) (PRG0) [!].nes
-- Faxanadu (U) (PRG1) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 6 January 2014
-- Displays Player Coordinates, HP, and Sprite HP stats on screen. The
-- HP stats are displayed in the upper left.

local function text(x,y,str)
	--NES Resolution 256x240
	if (x >= 0 and x < 256 and y >= 0 and y < 240) then
		gui.text(x,y,str);
	end;
end;

while (true) do

	-- Player 1 Coordinates
	local p1xcoordinate = memory.readbyte(0x009E);
	local p1ycoordinate = memory.readbyte(0x00A1);
	text(10,35,"P C: " .. p1xcoordinate .. "," .. 240 - p1ycoordinate);

	-- Player HPs
	local p1hp = memory.readbyte(0x0431);
	text(10,45,"P HP: " .. p1hp);

	-- Player MPs:
	local p1mp = memory.readbyte(0x039A);
	text(10,55,"P MP: " .. p1mp);

	-- Sprite 1 HPs
	local e1hp = memory.readbyte(0x034B);
	text(10,65,"S1 HP: " .. e1hp);

	-- Sprite 2 HPs
	local e2hp = memory.readbyte(0x034A);
	text(10,75,"S2 HP: " .. e2hp);

	-- Sprite 3 HPs
	local e3hp = memory.readbyte(0x0349);
	text(10,85,"S3 HP: " .. e3hp);

	FCEU.frameadvance();
end;
