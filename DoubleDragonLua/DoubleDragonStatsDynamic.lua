
-- Double Dragon (U) [!].nes
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
	local p1xcoordinate = memory.readbyte(0x005A);
	local p1ycoordinate = memory.readbyte(0x0072);
	text(10,10,"P1 C: " .. p1xcoordinate .. "," .. p1ycoordinate);

	-- Player 1 HPs
	local p1hp = memory.readbyte(0x03B4);
	text(p1xcoordinate - 30,195 - p1ycoordinate,"P1 HP: " .. p1hp);

	-- Enemy 1 Coordinates
	local e1xcoordinate = memory.readbyte(0x005B);
	local e1ycoordinate = memory.readbyte(0x0073);

	-- Enemy 2 Coordinates
	local e2xcoordinate = memory.readbyte(0x005C);
	local e2ycoordinate = memory.readbyte(0x0074);

	-- Enemy 1 HPs
	local e1hp = memory.readbyte(0x03B5);
	text(e1xcoordinate - 30,195 - e1ycoordinate,"E1 HP: " .. e1hp);
	--text(10,30,"E1 HP: " .. e1hp);

	-- Enemy 2 HPs
	local e2hp = memory.readbyte(0x03B6);
	text(e2xcoordinate - 30,195 - e2ycoordinate,"E2 HP: " .. e2hp);
	--text(10,40,"E2 HP: " .. e2hp);


	FCEU.frameadvance();
end;
