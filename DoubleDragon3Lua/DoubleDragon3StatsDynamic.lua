
-- Double Dragon III - The Sacred Stones (U) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 6 January 2014
-- Displays Player Coordinates, HP, and Enemy HP stats on screen. The
-- HP stats follow the characters.

local function text(x,y,str)
	if (x >= 0 and x <= 255 and y >= 0 and y <= 240) then
		gui.text(x,y,str);
	end;
end;

while (true) do

	-- Player 1 Coordinates
	local p1xcoordinate = memory.readbyte(0x00B7);
	local p1ycoordinate = memory.readbyte(0x00CB);
	text(10,10,"P1 C: " .. p1xcoordinate .. "," .. p1ycoordinate);

	-- Player 1 HPs
	local p1hp = memory.readbyte(0x045D);
	text(p1xcoordinate - 30,195 - p1ycoordinate,"P1 HP: " .. p1hp);

	-- Player 2 Coordinates
	local p2xcoordinate = memory.readbyte(0x00B8);
	local p2ycoordinate = memory.readbyte(0x00CC);
	text(10,20,"P2 C: " .. p2xcoordinate .. "," .. p2ycoordinate);

	-- Player 2 HPs
	local p2hp = memory.readbyte(0x045E);
	text(p2xcoordinate - 30,195 - p2ycoordinate,"P2 HP: " .. p2hp);

	-- Enemy 1 Coordinates
	local e1xcoordinate = memory.readbyte(0x00B9);
	local e1ycoordinate = memory.readbyte(0x00CD);

	-- Enemy 1 HPs
	local e1hp = memory.readbyte(0x045F);
	text(e1xcoordinate - 30,195 - e1ycoordinate,"E1 HP: " .. e1hp);

	-- Enemy 2 Coordinates
	local e2xcoordinate = memory.readbyte(0x00BA);
	local e2ycoordinate = memory.readbyte(0x00CE);

	-- Enemy 2 HPs
	local e2hp = memory.readbyte(0x0460);
	text(e2xcoordinate - 30,195 - e2ycoordinate,"E2 HP: " .. e2hp);

	FCEU.frameadvance();
end;
