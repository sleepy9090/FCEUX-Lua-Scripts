
-- Faxanadu (U) (PRG0) [!].nes
-- Faxanadu (U) (PRG1) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 6 January 2014
-- Displays Player Coordinates, HP, and Sprite HP stats on screen. The
-- HP stats follow the characters.

local function text(x,y,str)
	if (x >= 0 and x < 256 and y >= 0 and y < 240) then
		gui.text(x,y,str);
	end;
end;

while (true) do

	-- Player 1 Coordinates
	local p1xcoordinate = memory.readbyte(0x009E);
	local p1ycoordinate = memory.readbyte(0x00A1);
	text(10,35,"P1 C: " .. p1xcoordinate .. "," .. 240 - p1ycoordinate);

	-- Player 1 HPs
	local p1hp = memory.readbyte(0x0431);
	text(p1xcoordinate - 16,p1ycoordinate + 20,"P1 HP: " .. p1hp);

	-- Player 1 MP:
	local p1mp = memory.readbyte(0x039A);
	text(10,45,"P1 MP: " .. p1mp);

	-- Sprite 1 Coordinates
	local e1xcoordinate = memory.readbyte(0x00C1);
	local e1ycoordinate = memory.readbyte(0x00C9);

	-- Sprite 1 HPs
	local e1hp = memory.readbyte(0x034B);
	text(e1xcoordinate - 16,e1ycoordinate + 20,"S1 HP: " .. e1hp);

	-- Sprite 2 Coordinates
	local e2xcoordinate = memory.readbyte(0x00C0);
	local e2ycoordinate = memory.readbyte(0x00C8);

	-- Sprite 2 HPs
	local e2hp = memory.readbyte(0x034A);
	text(e2xcoordinate - 16,e2ycoordinate + 20,"S2 HP: " .. e2hp);

	-- Sprite 3 Coordinates
	local e3xcoordinate = memory.readbyte(0x00BF);
	local e3ycoordinate = memory.readbyte(0x00C7);

	-- Sprite 3 HP
	local e3hp = memory.readbyte(0x0349);
	text(e3xcoordinate - 16,e3ycoordinate + 20,"S3 HP: " .. e3hp);

	FCEU.frameadvance();
end;
