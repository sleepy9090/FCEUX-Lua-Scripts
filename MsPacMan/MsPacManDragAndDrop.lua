-- Ms. Pac-Man (U) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 19 January 2014
-- Ms. Pac-Man can be dragged and dropped anywhere on the screen by left clicking.

while true do
	inpt = input.get();

	-- mouse cursor
	gui.line(inpt['xmouse'] - 2, inpt['ymouse'], inpt['xmouse'] + 2, inpt['ymouse'], "blue");
	gui.line(inpt['xmouse'], inpt['ymouse'] - 2, inpt['xmouse'], inpt['ymouse'] + 2, "blue");

	mspacman = { x = memory.readbyte(0x0060), y = memory.readbyte(0x0062) };

	-- Ms. Pac-Man cursor
	gui.line(mspacman['x'] - 2, mspacman['y'], mspacman['x'] + 2, mspacman['y'], "blue");
	gui.line(mspacman['x'], mspacman['y'] - 2, mspacman['x'], mspacman['y'] + 2, "blue");

	-- write new position for Ms. Pac-Man
	if inpt['leftclick'] then
		memory.writebyte(0x0060, inpt['xmouse']);
		memory.writebyte(0x0062, inpt['ymouse']);
	end
	FCEU.frameadvance();
end
