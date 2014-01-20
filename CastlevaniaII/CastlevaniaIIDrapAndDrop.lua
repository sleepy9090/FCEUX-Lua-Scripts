-- TODO: Fix X/Y- NOT WORKING CORRECTLY AT THIS POINT


-- Castlevania II - Simon's Quest (U) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 19 January 2014
-- Simon can be dragged and dropped anywhere on the screen by left clicking.

while true do
	inpt = input.get();

	-- mouse cursor
	gui.line(inpt['xmouse'] - 2, inpt['ymouse'], inpt['xmouse'] + 2, inpt['ymouse'], "blue");
	gui.line(inpt['xmouse'], inpt['ymouse'] - 2, inpt['xmouse'], inpt['ymouse'] + 2, "blue");

	simon = { x = 255 - memory.readbyte(0x0053), y = memory.readbyte(0x0056) };

	-- simon cursor
	gui.line(simon['x'] - 2, simon['y'], simon['x'] + 2, simon['y'], "blue");
	gui.line(simon['x'], simon['y'] - 2, simon['x'], simon['y'] + 2, "blue");

	-- write new position for simon
	if inpt['leftclick'] then
		memory.writebyte(0x0053, inpt['xmouse']);
		memory.writebyte(0x0056, 240 - inpt['ymouse']);
	end
	FCEU.frameadvance();
end
