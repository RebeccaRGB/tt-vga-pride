#!/usr/bin/env python

from PIL import Image

image_file = "rgb222_crab_50.png"
module_name = "cool_crab_rom_b"
module_file = "../src/cool_crab_rom_b.v"

img = Image.open(image_file)
img = img.convert("RGBA")
idx = bytearray(img.height * img.width)
pal = []

for y in range(img.height):
	for x in range(img.width):
		r, g, b, a = img.getpixel((x, y))
		rgba = ((a>>7)<<6) | ((r>>6)<<4) | ((g>>6)<<2) | (b>>6)
		if rgba in pal:
			i = pal.index(rgba)
		else:
			i = len(pal)
			pal.append(rgba)
		idx[y * img.width + x] = i

def log2(a):
	b = 0
	while (1 << b) < a:
		b += 1
	return b

module = []
module.append("module %s (" % module_name)
module.append("  input wire [%d:0] x," % (log2(img.width) - 1))
module.append("  input wire [%d:0] y," % (log2(img.height) - 1))
module.append("  output wire [6:0] pixel")
module.append(");")
module.append("")
module.append("  reg [%d:0] mem[%d:0];" % (log2(len(pal)) - 1, img.height * img.width - 1))
module.append("  initial begin")
fmtstr = "    mem[{0:d}] = %d'b{1:0%db};" % (log2(len(pal)), log2(len(pal)))
for i, byte in enumerate(idx):
	module.append(fmtstr.format(i, byte))
module.append("  end")
module.append("")
module.append("  reg [6:0] pal[%d:0];" % (len(pal) - 1))
module.append("  initial begin")
fmtstr = "    pal[{0:d}] = 7'b{1:07b};"
for i, byte in enumerate(pal):
	module.append(fmtstr.format(i, byte))
module.append("  end")
module.append("")
module.append("  wire [%d:0] addr = y * %d + x;" % (log2(img.height * img.width) - 1, img.width))
module.append("  assign pixel = (x < %d && y < %d) ? pal[mem[addr]] : 0;" % (img.width, img.height))
module.append("")
module.append("endmodule")
module.append("")

with open(module_file, "w") as f:
	f.write("\n".join(module))
