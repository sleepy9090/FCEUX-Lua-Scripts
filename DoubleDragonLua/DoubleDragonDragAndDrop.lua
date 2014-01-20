-- Double Dragon (U) [!].nes
-- Written by sleepy - Shawn M. Crawford
-- 19 January 2014
-- Billy can be dragged and dropped anywhere on the screen by left clicking.

while true do
	inpt = input.get();

	-- mouse cursor
	gui.line(inpt['xmouse'] - 2, inpt['ymouse'], inpt['xmouse'] + 2, inpt['ymouse'], "blue");
	gui.line(inpt['xmouse'], inpt['ymouse'] - 2, inpt['xmouse'], inpt['ymouse'] + 2, "blue");

	billy = { x = memory.readbyte(0x005A), y = 240 - memory.readbyte(0x0072) };

	-- billy cursor
	gui.line(billy['x'] - 2, billy['y'], billy['x'] + 2, billy['y'], "blue");
	gui.line(billy['x'], billy['y'] - 2, billy['x'], billy['y'] + 2, "blue");

	-- write new position for billy
	if inpt['leftclick'] then
		memory.writebyte(0x005A, inpt['xmouse']);
		memory.writebyte(0x0072, 240 - inpt['ymouse']);
	end
	FCEU.frameadvance();
end
