;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Linux)
;--------------------------------------------------------
	.module enemy
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_enemy
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
_g_enemy:
	.db #0x00	; 0
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x60	; 96
	.db #0x90	; 144
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0xC0	; 192
	.db #0xC0	; 192
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x90	; 144
	.db #0x60	; 96
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0x8A	; 138
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0xCA	; 202
	.db #0xC5	; 197
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0xCA	; 202
	.db #0xC5	; 197
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x8A	; 138
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x30	; 48	'0'
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x00	; 0
	.db #0x45	; 69	'E'
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0xCF	; 207
	.db #0xCF	; 207
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x45	; 69	'E'
	.db #0x8A	; 138
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.area _INITIALIZER
	.area _CABS (ABS)
