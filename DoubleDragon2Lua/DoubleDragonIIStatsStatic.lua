-- Double Dragon II - The Revenge (U) (PRG1) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 5 January 2014
-- Displays Player Coordinates, HP, and Enemy HP stats on screen. The
-- HP stats are statically set in the upper left corner of the screen.

local function text(x,y,str)
	if (x > 0 and x < 255 and y > 0 and y < 240) then
		gui.text(x,y,str);
	end;
end;

while (true) do

	-- Player 1 Coordinates
	local p1xcoordinate = memory.readbyte(0x0077);
	local p1ycoordinate = memory.readbyte(0x0092);
	text(10,10,"P1 C: " .. p1xcoordinate .. "," .. p1ycoordinate);

	-- Player 2 Coordinates
	local p2xcoordinate = memory.readbyte(0x0078);
	local p2ycoordinate = memory.readbyte(0x0093);
	text(10,20,"P2 C: " .. p2xcoordinate .. "," .. p2ycoordinate);

	-- Player 1 HPs
	local p1hp = memory.readbyte(0x041E);
	text(10,30,"P1 HP: " .. p1hp);

	-- Player 2 HPs
	local p2hp = memory.readbyte(0x041F);
	text(10,40,"P2 HP: " .. p2hp);

	-- Enemy 1 HPs
	local e1hp = memory.readbyte(0x0420);
	text(10,50,"E1 HP: " .. e1hp);

	-- Enemy 2 HPs
	local e2hp = memory.readbyte(0x0421);
	text(10,60,"E2 HP: " .. e2hp);

	FCEU.frameadvance();
end;
