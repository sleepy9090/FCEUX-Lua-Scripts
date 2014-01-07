
-- Renegade (U) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 6 January 2014
-- Displays Player Coordinates, HP, and Enemy HP stats on screen. The
-- HP stats are displayed in the upper left.

local function text(x,y,str)
	if (x >= 0 and x <= 255 and y >= 0 and y <= 240) then
		gui.text(x,y,str);
	end;
end;

while (true) do

	-- Player 1 Coordinates
	local p1xcoordinate = memory.readbyte(0x0046);
	local p1ycoordinate = memory.readbyte(0x0055);
	text(10,10,"P1/P2 C: " .. p1xcoordinate .. "," .. p1ycoordinate);

	-- Player 1 HPs
	local p1hp = memory.readbyte(0x007D);
	text(10,20,"P1/P2 HP: " .. p1hp);

	-- Enemy 1 HPs
	local e1hp = memory.readbyte(0x007E);
	text(10,30,"E1 HP: " .. e1hp);

	-- Enemy 2 HPs
	local e2hp = memory.readbyte(0x007F);
	text(10,40,"E2 HP: " .. e2hp);

	-- Enemy 3 HPs
	local e3hp = memory.readbyte(0x0080);
	text(10,50,"E3 HP: " .. e3hp);

	FCEU.frameadvance();
end;
