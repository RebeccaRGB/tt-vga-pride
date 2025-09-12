#!/usr/bin/env python

from PIL import Image

image_file = "rgb222_crab.png"
module_name = "cool_crab_rom"
module_file = "../src/cool_crab_rom.v"

img = Image.open(image_file)
img = img.convert("RGBA")
pix = bytearray(img.height * img.width)

for y in range(img.height):
	for x in range(img.width):
		r, g, b, a = img.getpixel((x, y))
		pix[y * img.width + x] = ((a>>7)<<6) | ((r>>6)<<4) | ((g>>6)<<2) | (b>>6)

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
module.append("  reg [6:0] mem[%d:0];" % (img.height * img.width - 1))
module.append("  initial begin")
for i, byte in enumerate(pix):
	module.append("    mem[{0:d}] = 7'b{1:07b};".format(i, byte))
module.append("  end")
module.append("")
module.append("  wire [%d:0] addr = y * %d + x;" % (log2(img.height * img.width) - 1, img.width))
module.append("  assign pixel = (x < %d && y < %d) ? mem[addr] : 0;" % (img.width, img.height))
module.append("")
module.append("endmodule")
module.append("")

with open(module_file, "w") as f:
	f.write("\n".join(module))
