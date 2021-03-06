#include "hero.h"
// Data created with Img2CPC - (c) Retroworks - 2007-2015
// Palette uses hardware values.
const u8 g_palette[16] = { 0x54, 0x44, 0x55, 0x5c, 0x4c, 0x4d, 0x56, 0x46, 0x57, 0x40, 0x4e, 0x52, 0x53, 0x4a, 0x43, 0x4b };

// Tile g_hero: 14x22 pixels, 7x22 bytes.
const u8 g_hero[7 * 22] = {
	0x44, 0xcc, 0x00, 0x00, 0x00, 0x00, 0x00,
	0xc8, 0xc0, 0x88, 0x00, 0x00, 0x00, 0x00,
	0xc8, 0xc0, 0x88, 0x00, 0x00, 0x00, 0x00,
	0xcc, 0xcc, 0x88, 0x00, 0x00, 0x00, 0x00,
	0x8d, 0x0f, 0x0a, 0x00, 0x00, 0x00, 0x00,
	0x8d, 0x4e, 0x88, 0x00, 0x00, 0x00, 0x00,
	0x44, 0xc8, 0x88, 0x00, 0x00, 0x00, 0x00,
	0x51, 0xcc, 0xf3, 0x00, 0x00, 0x00, 0x00,
	0xe6, 0xc0, 0xcc, 0xa2, 0x00, 0x00, 0x00,
	0xc8, 0xc0, 0x81, 0x03, 0x00, 0x00, 0x00,
	0xc8, 0xc0, 0x81, 0xcc, 0x02, 0x00, 0x80,
	0xc8, 0x30, 0x21, 0x03, 0x03, 0x42, 0xc0,
	0x44, 0x30, 0x21, 0x42, 0xc0, 0x81, 0x02,
	0x00, 0x60, 0xc8, 0xc0, 0xc4, 0x88, 0x00,
	0x44, 0xc8, 0x88, 0x00, 0x00, 0x00, 0x00,
	0x44, 0xc8, 0xcc, 0x00, 0x00, 0x00, 0x00,
	0x44, 0xc4, 0xc4, 0x00, 0x00, 0x00, 0x00,
	0x44, 0xc4, 0xc4, 0x00, 0x00, 0x00, 0x00,
	0x44, 0xc4, 0xc0, 0x88, 0x00, 0x00, 0x00,
	0xc8, 0xc4, 0xc0, 0xcc, 0x00, 0x00, 0x00,
	0xc8, 0xc4, 0xc0, 0xc4, 0x00, 0x00, 0x00,
	0xcc, 0xcc, 0xcc, 0xcc, 0x00, 0x00, 0x00
};

