
-- Teenage Mutant Ninja Turtles III - The Manhattan Project (U) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 9 January 2014
-- Displays Player Coordinates, HP, and Enemy HP stats on screen.

local function text(x,y,str)
	if (x >= 0 and x <= 255 and y >= 0 and y <= 240) then
		gui.text(x,y,str);
	end;
end;

while (true) do

	-- Player 1 Coordinates
	local p1xcoordinate = memory.readbyte(0x0478);
	local p1ycoordinate = memory.readbyte(0x0496);
	text(10,10,"P1 C: " .. p1xcoordinate .. "," .. 240 - p1ycoordinate);

	-- Player 1 HPs (max 7E)
	local p1hp = memory.readbyte(0x04F1);
	text(10,20,"P1 HP: " .. p1hp);

	-- Player 2 Coordinates
	local p2xcoordinate = memory.readbyte(0x0479);
	local p2ycoordinate = memory.readbyte(0x0497);
	text(180,10,"P2 C: " .. p2xcoordinate .. "," .. 240 - p2ycoordinate);

	-- Player 2 HPs (max 7E)
	local p2hp = memory.readbyte(0x04F2);
	text(180,20,"P2 HP: " .. p2hp);

	-- Enemy 1 HPs
	local e1hp = memory.readbyte(0x0621);
	text(10,30,"E1 HP: " .. e1hp);

	-- Enemy 2 HPs
	local e2hp = memory.readbyte(0x0622);
	text(10,40,"E2 HP: " .. e2hp);

	-- Enemy 3 HPs
	local e3hp = memory.readbyte(0x0623);
	text(10,50,"E3 HP: " .. e3hp);

	-- Enemy 4 HPs
	local e4hp = memory.readbyte(0x0624);
	text(10,60,"E4 HP: " .. e4hp);

	-- Enemy 5 HPs
	local e5hp = memory.readbyte(0x0625);
	text(180,30,"E5 HP: " .. e5hp);

	-- Enemy 6 HPs
	local e6hp = memory.readbyte(0x0626);
	text(180,40,"E6 HP: " .. e6hp);

	-- Enemy 7 HPs
	local e7hp = memory.readbyte(0x0627);
	text(180,50,"E7 HP: " .. e7hp);

	-- Enemy 8 HPs
	local e8hp = memory.readbyte(0x0628);
	text(180,60,"E8 HP: " .. e8hp);

	FCEU.frameadvance();
end;
