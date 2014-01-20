-- Donkey Kong (U) (PRG1) [!p].nes
-- Written by sleepy - Shawn M. Crawford
-- 19 January 2014
-- Mario can be dragged and dropped anywhere on the screen by left clicking.

while true do
	inpt = input.get();

	-- mouse cursor
	gui.line(inpt['xmouse'] - 2, inpt['ymouse'], inpt['xmouse'] + 2, inpt['ymouse'], "blue");
	gui.line(inpt['xmouse'], inpt['ymouse'] - 2, inpt['xmouse'], inpt['ymouse'] + 2, "blue");

	mario = { x = memory.readbyte(0x0203), y = memory.readbyte(0x0200) };

	-- mario cursor
	gui.line(mario['x'] - 2, mario['y'], mario['x'] + 2, mario['y'], "blue");
	gui.line(mario['x'], mario['y'] - 2, mario['x'], mario['y'] + 2, "blue");

	-- write new position for mario
	if inpt['leftclick'] then
		memory.writebyte(0x0203, inpt['xmouse']);
		memory.writebyte(0x0200, inpt['ymouse']);
	end
	FCEU.frameadvance();
end
