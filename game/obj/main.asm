;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _G_song
	.globl _main
	.globl _inicializarJuego
	.globl _inicializarCPC
	.globl _menuInicio
	.globl _menuFin
	.globl _borrarPantallaAbajo
	.globl _barraPuntuacionInicial
	.globl _moverCuchillo
	.globl _checkKnifeCollision
	.globl _comprobarTeclado
	.globl _lanzarCuchillo
	.globl _redibujarCuchillo
	.globl _borrarCuchillo
	.globl _dibujarCuchillo
	.globl _moverAbajo
	.globl _moverArriba
	.globl _moverDerecha
	.globl _moverIzquierda
	.globl _avanzarMapa
	.globl _moverEnemigoAbajo
	.globl _moverEnemigoArriba
	.globl _moverEnemigo
	.globl _checkEnemyCollision
	.globl _redibujarEnemigo
	.globl _borrarEnemigo
	.globl _dibujarEnemigo
	.globl _checkCollision
	.globl _getTilePtr
	.globl _redibujarProta
	.globl _borrarProta
	.globl _dibujarProta
	.globl _dibujarMapa
	.globl _cpct_etm_setTileset2x4
	.globl _cpct_etm_drawTileBox2x4
	.globl _cpct_akp_musicPlay
	.globl _cpct_akp_musicInit
	.globl _cpct_getScreenPtr
	.globl _cpct_setPALColour
	.globl _cpct_setPalette
	.globl _cpct_waitVSYNC
	.globl _cpct_setVideoMode
	.globl _cpct_drawStringM0
	.globl _cpct_drawSpriteMaskedAlignedTable
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_isAnyKeyPressed
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_if
	.globl _cpct_scanKeyboard_f
	.globl _cpct_memset
	.globl _cpct_disableFirmware
	.globl _num_mapa
	.globl _mapa
	.globl _cu
	.globl _prota
	.globl _enemy
	.globl _EEje
	.globl _EMirar
	.globl _mapas
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_EMirar::
	.ds 1
_EEje::
	.ds 1
_enemy::
	.ds 9
_prota::
	.ds 8
_cu::
	.ds 10
_mapa::
	.ds 2
_num_mapa::
	.ds 1
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
;src/main.c:113: cpctm_createTransparentMaskTable(g_tablatrans, 0x3E00, M0, 0); // es el color 8 - 4D - FF00FF
;	---------------------------------
; Function dummy_cpct_transparentMaskTable0M0_container
; ---------------------------------
_dummy_cpct_transparentMaskTable0M0_container::
	.area _g_tablatrans_ (ABS) 
	.org 0x3E00 
	 _g_tablatrans::
	.db 0xFF, 0xAA, 0x55, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0xAA, 0xAA, 0x00, 0x00, 0xAA, 0xAA, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x55, 0x00, 0x55, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.db 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 
	.area _CSEG (REL, CON) 
;src/main.c:116: void dibujarMapa() {
;	---------------------------------
; Function dibujarMapa
; ---------------------------------
_dibujarMapa::
;src/main.c:117: cpct_etm_drawTilemap2x4 (g_map1_W, g_map1_H, ORIGEN_MAPA, mapa);
	ld	hl,(_mapa)
	push	hl
	ld	hl,#0xC000
	push	hl
	ld	hl,#0x282C
	push	hl
	ld	l, #0x00
	push	hl
	xor	a, a
	push	af
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	ret
_mapas:
	.dw _g_map1
	.dw _g_map2
	.dw _g_map3
;src/main.c:122: void dibujarProta() {
;	---------------------------------
; Function dibujarProta
; ---------------------------------
_dibujarProta::
;src/main.c:123: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, prota.x, prota.y);
	ld	hl, #_prota + 1
	ld	d,(hl)
	ld	hl, #_prota + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:124: cpct_drawSpriteMaskedAlignedTable (prota.sprite, pvmem, G_HERO_W, G_HERO_H, g_tablatrans);
	ld	bc, (#_prota + 4)
	ld	hl,#_g_tablatrans
	push	hl
	ld	hl,#0x1607
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/main.c:127: void borrarProta() {
;	---------------------------------
; Function borrarProta
; ---------------------------------
_borrarProta::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/main.c:129: u8 w = 4 + (prota.px & 1);
	ld	hl, #_prota + 2
	ld	c,(hl)
	ld	a,c
	and	a, #0x01
	ld	b,a
	inc	b
	inc	b
	inc	b
	inc	b
;src/main.c:132: u8 h = 6 + (prota.py & 2 ? 1 : 0);
	ld	hl, #_prota + 3
	ld	e,(hl)
	bit	1, e
	jr	Z,00103$
	ld	a,#0x01
	jr	00104$
00103$:
	ld	a,#0x00
00104$:
	add	a, #0x06
	ld	-1 (ix),a
;src/main.c:134: cpct_etm_drawTileBox2x4 (prota.px / 2, (prota.py - ORIGEN_MAPA_Y)/4, w, h, g_map1_W, ORIGEN_MAPA, mapa);
	ld	iy,(_mapa)
	ld	d,#0x00
	ld	h,e
	ld	l,d
	bit	7, d
	jr	Z,00105$
	inc	de
	inc	de
	inc	de
	ld	h,e
	ld	l,d
00105$:
	ld	e, h
	ld	d, l
	sra	d
	rr	e
	sra	d
	rr	e
	ld	d,c
	srl	d
	push	iy
	ld	hl,#0xC000
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cpct_etm_drawTileBox2x4
	inc	sp
	pop	ix
	ret
;src/main.c:139: void redibujarProta() {
;	---------------------------------
; Function redibujarProta
; ---------------------------------
_redibujarProta::
;src/main.c:140: borrarProta();
	call	_borrarProta
;src/main.c:141: prota.px = prota.x;
	ld	bc,#_prota + 2
	ld	a, (#_prota + 0)
	ld	(bc),a
;src/main.c:142: prota.py = prota.y;
	ld	bc,#_prota + 3
	ld	a, (#_prota + 1)
	ld	(bc),a
;src/main.c:143: dibujarProta();
	jp  _dibujarProta
;src/main.c:146: u8* getTilePtr(u8 x, u8 y) {
;	---------------------------------
; Function getTilePtr
; ---------------------------------
_getTilePtr::
;src/main.c:147: return mapa + (y/4)*g_map1_W + x/2;
	ld	hl, #3+0
	add	hl, sp
	ld	c, (hl)
	srl	c
	srl	c
	ld	b,#0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de,(_mapa)
	add	hl,de
	ld	iy,#2
	add	iy,sp
	ld	c,0 (iy)
	srl	c
	ld	e,c
	ld	d,#0x00
	add	hl,de
	ret
;src/main.c:150: u8 checkCollision(int direction) { // check optimization
;	---------------------------------
; Function checkCollision
; ---------------------------------
_checkCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-8
	add	hl,sp
	ld	sp,hl
;src/main.c:153: switch (direction) {
	bit	7, 5 (ix)
	jp	NZ,00105$
	ld	a,#0x03
	cp	a, 4 (ix)
	ld	a,#0x00
	sbc	a, 5 (ix)
	jp	PO, 00128$
	xor	a, #0x80
00128$:
	jp	M,00105$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00129$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00129$:
	jp	00101$
	jp	00102$
	jp	00103$
	jp	00104$
;src/main.c:154: case 0:
00101$:
;src/main.c:155: headTile  = getTilePtr(prota.x + G_HERO_W - 3, prota.y);
	ld	hl, #(_prota + 0x0001) + 0
	ld	b,(hl)
	ld	a, (#_prota + 0)
	add	a, #0x04
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/main.c:156: feetTile  = getTilePtr(prota.x + G_HERO_W - 3, prota.y + ALTO_PROTA - 2);
	ld	a, (#(_prota + 0x0001) + 0)
	add	a, #0x14
	ld	b,a
	ld	a, (#_prota + 0)
	add	a, #0x04
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ld	c,l
	ld	b,h
;src/main.c:157: waistTile = getTilePtr(prota.x + G_HERO_W - 3, prota.y + ALTO_PROTA/2);
	ld	a, (#(_prota + 0x0001) + 0)
	add	a, #0x0B
	ld	d,a
	ld	a, (#_prota + 0)
	add	a, #0x04
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ex	de,hl
	pop	bc
;src/main.c:158: break;
	jp	00105$
;src/main.c:159: case 1:
00102$:
;src/main.c:160: headTile  = getTilePtr(prota.x - 1, prota.y);
	ld	hl, #(_prota + 0x0001) + 0
	ld	b,(hl)
	ld	hl, #_prota + 0
	ld	d,(hl)
	dec	d
	ld	c, d
	push	bc
	call	_getTilePtr
	pop	af
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/main.c:161: feetTile  = getTilePtr(prota.x - 1, prota.y + ALTO_PROTA - 2);
	ld	a, (#(_prota + 0x0001) + 0)
	add	a, #0x14
	ld	b,a
	ld	hl, #_prota + 0
	ld	d,(hl)
	dec	d
	ld	c, d
	push	bc
	call	_getTilePtr
	pop	af
	ld	c,l
	ld	b,h
;src/main.c:162: waistTile = getTilePtr(prota.x - 1, prota.y + ALTO_PROTA/2);
	ld	a, (#(_prota + 0x0001) + 0)
	add	a, #0x0B
	ld	d,a
	ld	a, (#_prota + 0)
	add	a,#0xFF
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ex	de,hl
	pop	bc
;src/main.c:163: break;
	jr	00105$
;src/main.c:164: case 2:
00103$:
;src/main.c:165: headTile   = getTilePtr(prota.x, prota.y - 2);
	ld	hl, #(_prota + 0x0001) + 0
	ld	b,(hl)
	dec	b
	dec	b
	ld	hl, #_prota + 0
	ld	c, (hl)
	push	bc
	call	_getTilePtr
	pop	af
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/main.c:166: feetTile   = getTilePtr(prota.x + G_HERO_W - 4, prota.y - 2);
	ld	a, (#(_prota + 0x0001) + 0)
	ld	b,a
	dec	b
	dec	b
	ld	a, (#_prota + 0)
	add	a, #0x03
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ld	c,l
	ld	b,h
;src/main.c:167: *waistTile = 0;
	xor	a, a
	ld	(de),a
;src/main.c:168: break;
	jr	00105$
;src/main.c:169: case 3:
00104$:
;src/main.c:170: headTile  = getTilePtr(prota.x, prota.y + ALTO_PROTA  );
	ld	a, (#(_prota + 0x0001) + 0)
	add	a, #0x16
	ld	b,a
	ld	hl, #_prota + 0
	ld	c, (hl)
	push	bc
	call	_getTilePtr
	pop	af
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/main.c:171: feetTile  = getTilePtr(prota.x + G_HERO_W - 4, prota.y + ALTO_PROTA );
	ld	a, (#(_prota + 0x0001) + 0)
	add	a, #0x16
	ld	b,a
	ld	a, (#_prota + 0)
	add	a, #0x03
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ld	c,l
	ld	b,h
;src/main.c:172: *waistTile = 0;
	xor	a, a
	ld	(de),a
;src/main.c:174: }
00105$:
;src/main.c:176: if (*headTile > 2 || *feetTile > 2 || *waistTile > 2)
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	ld	l,(hl)
	ld	a,#0x02
	sub	a, l
	jr	C,00106$
	ld	a,(bc)
	ld	c,a
	ld	a,#0x02
	sub	a, c
	jr	C,00106$
	ld	a,(de)
	ld	c,a
	ld	a,#0x02
	sub	a, c
	jr	NC,00107$
00106$:
;src/main.c:177: return 1;
	ld	l,#0x01
	jr	00110$
00107$:
;src/main.c:179: return 0;
	ld	l,#0x00
00110$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:183: void dibujarEnemigo() {
;	---------------------------------
; Function dibujarEnemigo
; ---------------------------------
_dibujarEnemigo::
;src/main.c:184: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, enemy.x, enemy.y);
	ld	hl, #_enemy + 1
	ld	d,(hl)
	ld	hl, #_enemy + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
;src/main.c:185: cpct_drawSpriteMaskedAlignedTable (enemy.sprite, pvmem, G_ENEMY_W, G_ENEMY_H, g_tablatrans);
	ld	bc, (#_enemy + 4)
	ld	hl,#_g_tablatrans
	push	hl
	ld	hl,#0x1604
	push	hl
	push	de
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	ret
;src/main.c:188: void borrarEnemigo() {
;	---------------------------------
; Function borrarEnemigo
; ---------------------------------
_borrarEnemigo::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/main.c:190: u8 w = 4 + (enemy.px & 1);
	ld	hl, #_enemy + 2
	ld	c,(hl)
	ld	a,c
	and	a, #0x01
	ld	b,a
	inc	b
	inc	b
	inc	b
	inc	b
;src/main.c:193: u8 h = 7 + (enemy.py & 2 ? 1 : 0);
	ld	hl, #_enemy + 3
	ld	e,(hl)
	bit	1, e
	jr	Z,00103$
	ld	a,#0x01
	jr	00104$
00103$:
	ld	a,#0x00
00104$:
	add	a, #0x07
	ld	-1 (ix),a
;src/main.c:195: cpct_etm_drawTileBox2x4 (enemy.px / 2, (enemy.py - ORIGEN_MAPA_Y)/4, w, h, g_map1_W, ORIGEN_MAPA, mapa);
	ld	iy,(_mapa)
	ld	d,#0x00
	ld	h,e
	ld	l,d
	bit	7, d
	jr	Z,00105$
	inc	de
	inc	de
	inc	de
	ld	h,e
	ld	l,d
00105$:
	ld	e, h
	ld	d, l
	sra	d
	rr	e
	sra	d
	rr	e
	ld	d,c
	srl	d
	push	iy
	ld	hl,#0xC000
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cpct_etm_drawTileBox2x4
;src/main.c:197: enemy.mover = NO;
	ld	hl,#(_enemy + 0x0006)
	ld	(hl),#0x00
	inc	sp
	pop	ix
	ret
;src/main.c:202: void redibujarEnemigo() {
;	---------------------------------
; Function redibujarEnemigo
; ---------------------------------
_redibujarEnemigo::
;src/main.c:203: borrarEnemigo();
	call	_borrarEnemigo
;src/main.c:204: enemy.px = enemy.x;
	ld	bc,#_enemy + 2
	ld	a, (#_enemy + 0)
	ld	(bc),a
;src/main.c:205: enemy.py = enemy.y;
	ld	bc,#_enemy + 3
	ld	a, (#_enemy + 1)
	ld	(bc),a
;src/main.c:206: dibujarEnemigo();
	jp  _dibujarEnemigo
;src/main.c:209: u8 checkEnemyCollision(int direction){
;	---------------------------------
; Function checkEnemyCollision
; ---------------------------------
_checkEnemyCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/main.c:211: u8 colisiona = 1;
	ld	-1 (ix),#0x01
;src/main.c:213: switch (direction) {
	bit	7, 5 (ix)
	jp	NZ,00135$
	ld	a,#0x03
	cp	a, 4 (ix)
	ld	a,#0x00
	sbc	a, 5 (ix)
	jp	PO, 00194$
	xor	a, #0x80
00194$:
	jp	M,00135$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00195$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00195$:
	jp	00135$
	jp	00135$
	jp	00103$
	jp	00119$
;src/main.c:214: case 0:
;src/main.c:216: break;
	jp	00135$
;src/main.c:217: case 1:
;src/main.c:219: break;
	jp	00135$
;src/main.c:220: case 2:
00103$:
;src/main.c:221: if( *getTilePtr(enemy.x, enemy.y - 2) <= 2
	ld	a, (#(_enemy + 0x0001) + 0)
	ld	d,a
	dec	d
	dec	d
	ld	hl, #_enemy + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	call	_getTilePtr
	pop	af
	ld	c,(hl)
;src/main.c:235: enemy.mira = M_abajo;
;src/main.c:221: if( *getTilePtr(enemy.x, enemy.y - 2) <= 2
	ld	a,#0x02
	sub	a, c
	jp	C,00115$
;src/main.c:222: && *getTilePtr(enemy.x + G_ENEMY_W / 2, enemy.y - 2) <= 2
	ld	hl, #(_enemy + 0x0001) + 0
	ld	b,(hl)
	dec	b
	dec	b
	ld	hl, #_enemy + 0
	ld	d,(hl)
	inc	d
	inc	d
	ld	c, d
	push	bc
	call	_getTilePtr
	pop	af
	ld	c,(hl)
	ld	a,#0x02
	sub	a, c
	jp	C,00115$
;src/main.c:223: && *getTilePtr(enemy.x + G_ENEMY_W, enemy.y - 2) <= 2)
	ld	hl, #(_enemy + 0x0001) + 0
	ld	b,(hl)
	dec	b
	dec	b
	ld	a, (#_enemy + 0)
	add	a, #0x04
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ld	c,(hl)
	ld	a,#0x02
	sub	a, c
	jr	C,00115$
;src/main.c:225: if((prota.x + G_HERO_W -4) < enemy.x || prota.x  > (enemy.x + G_ENEMY_W)){
	ld	hl, #_prota + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	hl, #_enemy + 0
	ld	l,(hl)
	ld	h,#0x00
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00196$
	xor	a, #0x80
00196$:
	jp	M,00110$
	ld	de,#0x0004
	add	hl,de
	ld	a,l
	sub	a, c
	ld	a,h
	sbc	a, b
	jp	PO, 00197$
	xor	a, #0x80
00197$:
	jp	P,00111$
00110$:
;src/main.c:227: colisiona = 0;
	ld	-1 (ix),#0x00
	jr	00119$
00111$:
;src/main.c:230: if(enemy.y>prota.y){
	ld	hl, #(_enemy + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #(_prota + 0x0001) + 0
	ld	e,(hl)
	ld	a,e
	sub	a, c
	jr	NC,00108$
;src/main.c:231: if(enemy.y - (prota.y + G_HERO_H -2) >= 2){
	ld	b,#0x00
	ld	d,#0x00
	ld	hl,#0x0014
	add	hl,de
	ld	a,c
	sub	a, l
	ld	c,a
	ld	a,b
	sbc	a, h
	ld	b,a
	ld	a,c
	sub	a, #0x02
	ld	a,b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00105$
;src/main.c:232: colisiona = 0;
	ld	-1 (ix),#0x00
	jr	00119$
00105$:
;src/main.c:235: enemy.mira = M_abajo;
	ld	hl,#(_enemy + 0x0007)
	ld	(hl),#0x03
	jr	00119$
00108$:
;src/main.c:238: colisiona = 0;
	ld	-1 (ix),#0x00
	jr	00119$
00115$:
;src/main.c:244: enemy.mira = M_abajo;
	ld	hl,#(_enemy + 0x0007)
	ld	(hl),#0x03
;src/main.c:247: case 3:
00119$:
;src/main.c:250: if( *getTilePtr(enemy.x, enemy.y + G_ENEMY_H + 2) <= 2
	ld	a, (#(_enemy + 0x0001) + 0)
	add	a, #0x18
	ld	b,a
	ld	hl, #_enemy + 0
	ld	c, (hl)
	push	bc
	call	_getTilePtr
	pop	af
	ld	c,(hl)
;src/main.c:263: enemy.mira = M_arriba;
;src/main.c:250: if( *getTilePtr(enemy.x, enemy.y + G_ENEMY_H + 2) <= 2
	ld	a,#0x02
	sub	a, c
	jp	C,00131$
;src/main.c:251: && *getTilePtr(enemy.x + G_ENEMY_W / 2, enemy.y + G_ENEMY_H + 2) <= 2
	ld	a, (#(_enemy + 0x0001) + 0)
	add	a, #0x18
	ld	b,a
	ld	hl, #_enemy + 0
	ld	d,(hl)
	inc	d
	inc	d
	ld	c, d
	push	bc
	call	_getTilePtr
	pop	af
	ld	c,(hl)
	ld	a,#0x02
	sub	a, c
	jp	C,00131$
;src/main.c:252: && *getTilePtr(enemy.x + G_ENEMY_W, enemy.y + G_ENEMY_H + 2) <= 2)			  
	ld	a, (#(_enemy + 0x0001) + 0)
	add	a, #0x18
	ld	b,a
	ld	a, (#_enemy + 0)
	add	a, #0x04
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	ld	c,(hl)
	ld	a,#0x02
	sub	a, c
	jr	C,00131$
;src/main.c:254: if( (prota.x + G_HERO_W -4) < enemy.x || prota.x  > (enemy.x + G_ENEMY_W) ){
	ld	hl, #_prota + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	hl, #_enemy + 0
	ld	l,(hl)
	ld	h,#0x00
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00198$
	xor	a, #0x80
00198$:
	jp	M,00126$
	ld	de,#0x0004
	add	hl,de
	ld	a,l
	sub	a, c
	ld	a,h
	sbc	a, b
	jp	PO, 00199$
	xor	a, #0x80
00199$:
	jp	P,00127$
00126$:
;src/main.c:255: colisiona = 0;
	ld	-1 (ix),#0x00
	jr	00135$
00127$:
;src/main.c:258: if(prota.y > enemy.y){ //si el prota esta abajo
	ld	hl, #(_prota + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #(_enemy + 0x0001) + 0
	ld	e,(hl)
	ld	a,e
	sub	a, c
	jr	NC,00124$
;src/main.c:259: if( prota.y - (enemy.y + G_ENEMY_H) > 2){ // si hay espacio entre el enemigo y el prota
	ld	b,#0x00
	ld	d,#0x00
	ld	hl,#0x0016
	add	hl,de
	ld	a,c
	sub	a, l
	ld	c,a
	ld	a,b
	sbc	a, h
	ld	b,a
	ld	a,#0x02
	cp	a, c
	ld	a,#0x00
	sbc	a, b
	jp	PO, 00200$
	xor	a, #0x80
00200$:
	jp	P,00121$
;src/main.c:260: colisiona = 0;
	ld	-1 (ix),#0x00
	jr	00135$
00121$:
;src/main.c:263: enemy.mira = M_arriba;
	ld	hl,#(_enemy + 0x0007)
	ld	(hl),#0x02
	jr	00135$
00124$:
;src/main.c:266: colisiona = 0;
	ld	-1 (ix),#0x00
	jr	00135$
00131$:
;src/main.c:270: enemy.mira = M_arriba;
	ld	hl,#(_enemy + 0x0007)
	ld	(hl),#0x02
;src/main.c:273: }
00135$:
;src/main.c:274: return colisiona;
	ld	l,-1 (ix)
	inc	sp
	pop	ix
	ret
;src/main.c:277: void moverEnemigo(){
;	---------------------------------
; Function moverEnemigo
; ---------------------------------
_moverEnemigo::
;src/main.c:278: if(!enemy.muerto){
	ld	a, (#_enemy + 8)
	or	a, a
	ret	NZ
;src/main.c:279: if(!checkEnemyCollision(enemy.mira)){
	ld	hl,#_enemy + 7
	ld	c,(hl)
	ld	b,#0x00
	push	hl
	push	bc
	call	_checkEnemyCollision
	pop	af
	ld	a,l
	pop	hl
	or	a, a
	ret	NZ
;src/main.c:281: switch (enemy.mira) {
	ld	e,(hl)
	ld	a,#0x03
	sub	a, e
	ret	C
	ld	d,#0x00
	ld	hl,#00124$
	add	hl,de
	add	hl,de
;src/main.c:282: case 0:
;src/main.c:284: break;
;src/main.c:285: case 1:
;src/main.c:287: break;
;src/main.c:288: case 2:
	jp	(hl)
00124$:
	jr	00110$
	jr	00110$
	jr	00103$
	jr	00104$
	jr	00110$
	jr	00110$
00103$:
;src/main.c:289: moverEnemigoArriba();
;src/main.c:290: break;
	jp  _moverEnemigoArriba
;src/main.c:291: case 3:
00104$:
;src/main.c:292: moverEnemigoAbajo();
	call	_moverEnemigoAbajo
;src/main.c:294: }
00110$:
	ret
;src/main.c:299: void moverEnemigoArriba(){
;	---------------------------------
; Function moverEnemigoArriba
; ---------------------------------
_moverEnemigoArriba::
;src/main.c:300: enemy.y--;
	ld	hl,#_enemy + 1
	ld	c,(hl)
	dec	c
	ld	(hl),c
;src/main.c:301: enemy.y--;
	dec	c
	ld	(hl),c
;src/main.c:302: enemy.mover = SI;
	ld	hl,#(_enemy + 0x0006)
	ld	(hl),#0x01
	ret
;src/main.c:305: void moverEnemigoAbajo(){
;	---------------------------------
; Function moverEnemigoAbajo
; ---------------------------------
_moverEnemigoAbajo::
;src/main.c:306: enemy.y++;
	ld	bc,#_enemy + 1
	ld	a,(bc)
	inc	a
	ld	(bc),a
;src/main.c:307: enemy.y++;
	inc	a
	ld	(bc),a
;src/main.c:308: enemy.mover = SI;
	ld	hl,#(_enemy + 0x0006)
	ld	(hl),#0x01
	ret
;src/main.c:311: void avanzarMapa() {
;	---------------------------------
; Function avanzarMapa
; ---------------------------------
_avanzarMapa::
;src/main.c:312: if(num_mapa < NUM_MAPAS -1) {
	ld	a,(#_num_mapa + 0)
	sub	a, #0x02
	jp	NC,_menuFin
;src/main.c:313: mapa = mapas[++num_mapa];
	ld	hl, #_num_mapa+0
	inc	(hl)
	ld	iy,#_num_mapa
	ld	l,0 (iy)
	ld	h,#0x00
	add	hl, hl
	ld	de,#_mapas
	add	hl,de
	ld	a,(hl)
	ld	iy,#_mapa
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	(#_mapa + 1),a
;src/main.c:314: prota.x = prota.px = 2;
	ld	hl,#(_prota + 0x0002)
	ld	(hl),#0x02
	ld	hl,#_prota
	ld	(hl),#0x02
;src/main.c:315: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
;src/main.c:316: dibujarMapa();
;src/main.c:320: menuFin();
	ld	(hl), #0x01
	jp	_dibujarMapa
;src/main.c:324: void moverIzquierda() {
;	---------------------------------
; Function moverIzquierda
; ---------------------------------
_moverIzquierda::
;src/main.c:325: prota.mira = M_izquierda;
	ld	bc,#_prota+0
	ld	hl,#(_prota + 0x0007)
	ld	(hl),#0x01
;src/main.c:326: if (!checkCollision(M_izquierda)) {
	push	bc
	ld	hl,#0x0001
	push	hl
	call	_checkCollision
	pop	af
	pop	bc
	ld	a,l
	or	a, a
	ret	NZ
;src/main.c:327: prota.x--;
	ld	a,(bc)
	add	a,#0xFF
	ld	(bc),a
;src/main.c:328: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/main.c:329: prota.sprite = g_hero_left;
	ld	hl,#_g_hero_left
	ld	((_prota + 0x0004)), hl
	ret
;src/main.c:333: void moverDerecha() {
;	---------------------------------
; Function moverDerecha
; ---------------------------------
_moverDerecha::
;src/main.c:334: prota.mira = M_derecha;
	ld	hl,#(_prota + 0x0007)
	ld	(hl),#0x00
;src/main.c:335: if (!checkCollision(M_derecha) && ( prota.x + G_HERO_W < 80)) {
	ld	hl,#0x0000
	push	hl
	call	_checkCollision
	pop	af
	ld	b,l
	ld	hl, #_prota + 0
	ld	c,(hl)
	ld	e,c
	ld	d,#0x00
	ld	hl,#0x0007
	add	hl,de
	ld	de, #0x8050
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	ld	a,#0x00
	rla
	ld	e,a
	ld	a,b
	or	a,a
	jr	NZ,00104$
	or	a,e
	jr	Z,00104$
;src/main.c:336: prota.x++;
	inc	c
	ld	hl,#_prota
	ld	(hl),c
;src/main.c:337: prota.mover = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/main.c:338: prota.sprite = g_hero;
	ld	hl,#_g_hero
	ld	((_prota + 0x0004)), hl
	ret
00104$:
;src/main.c:340: }else if( prota.x + G_HERO_W >= 80){
	ld	a,e
	or	a, a
	ret	NZ
;src/main.c:341: avanzarMapa();	
	jp  _avanzarMapa
;src/main.c:345: void moverArriba() {
;	---------------------------------
; Function moverArriba
; ---------------------------------
_moverArriba::
;src/main.c:346: prota.mira = M_arriba;
	ld	hl,#(_prota + 0x0007)
	ld	(hl),#0x02
;src/main.c:347: if (!checkCollision(M_arriba) && (prota.y >= 0)) { // TODO: COMPROBAR
	ld	hl,#0x0002
	push	hl
	call	_checkCollision
	pop	af
	ld	a,l
	or	a, a
	ret	NZ
;src/main.c:348: prota.y--;
	ld	hl,#_prota + 1
	ld	c,(hl)
	dec	c
	ld	(hl),c
;src/main.c:349: prota.y--;
	dec	c
	ld	(hl),c
;src/main.c:350: prota.mover  = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/main.c:351: prota.sprite = g_hero_up;
	ld	hl,#_g_hero_up
	ld	((_prota + 0x0004)), hl
	ret
;src/main.c:355: void moverAbajo() {
;	---------------------------------
; Function moverAbajo
; ---------------------------------
_moverAbajo::
;src/main.c:356: prota.mira = M_abajo;
	ld	hl,#(_prota + 0x0007)
	ld	(hl),#0x03
;src/main.c:357: if (!checkCollision(M_abajo) && (prota.y + G_HERO_H < ALTO_MAPA)) { // TODO: COMPROBAR
	ld	hl,#0x0003
	push	hl
	call	_checkCollision
	pop	af
	ld	a,l
	or	a, a
	ret	NZ
	ld	bc,#_prota + 1
	ld	a,(bc)
	ld	e,a
	ld	l,e
	ld	h,#0x00
	push	de
	ld	de,#0x0016
	add	hl, de
	pop	de
	ld	a,l
	sub	a, #0xB0
	ld	a,h
	rla
	ccf
	rra
	sbc	a, #0x80
	ret	NC
;src/main.c:358: prota.y++;
	ld	a,e
	inc	a
	ld	(bc),a
;src/main.c:359: prota.y++;
	inc	a
	ld	(bc),a
;src/main.c:360: prota.mover  = SI;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x01
;src/main.c:361: prota.sprite = g_hero_down;
	ld	hl,#_g_hero_down
	ld	((_prota + 0x0004)), hl
	ret
;src/main.c:365: void dibujarCuchillo() {
;	---------------------------------
; Function dibujarCuchillo
; ---------------------------------
_dibujarCuchillo::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;src/main.c:366: u8* pvmem = cpct_getScreenPtr(CPCT_VMEM_START, cu.x, cu.y);
	ld	hl, #_cu + 1
	ld	d,(hl)
	ld	hl, #_cu + 0
	ld	b,(hl)
	push	de
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	b,l
	ld	e,h
;src/main.c:367: if(cu.eje == E_X){
	ld	hl, #_cu + 8
	ld	c,(hl)
;src/main.c:368: cpct_drawSpriteMaskedAlignedTable (cu.sprite, pvmem, G_KNIFEX_0_W, G_KNIFEX_0_H, g_tablatrans);
	ld	-2 (ix),b
	ld	-1 (ix),e
;src/main.c:367: if(cu.eje == E_X){
	ld	a,c
	or	a, a
	jr	NZ,00104$
;src/main.c:368: cpct_drawSpriteMaskedAlignedTable (cu.sprite, pvmem, G_KNIFEX_0_W, G_KNIFEX_0_H, g_tablatrans);
	ld	de,#_g_tablatrans+0
	ld	bc, (#(_cu + 0x0004) + 0)
	push	de
	ld	hl,#0x0404
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
	jr	00106$
00104$:
;src/main.c:371: else if(cu.eje == E_Y){
	dec	c
	jr	NZ,00106$
;src/main.c:372: cpct_drawSpriteMaskedAlignedTable (cu.sprite, pvmem, G_KNIFEY_0_W, G_KNIFEY_0_H, g_tablatrans);
	ld	de,#_g_tablatrans+0
	ld	bc, (#(_cu + 0x0004) + 0)
	push	de
	ld	hl,#0x0802
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	push	bc
	call	_cpct_drawSpriteMaskedAlignedTable
00106$:
	ld	sp, ix
	pop	ix
	ret
;src/main.c:376: void borrarCuchillo() {
;	---------------------------------
; Function borrarCuchillo
; ---------------------------------
_borrarCuchillo::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;src/main.c:378: u8 w = 2 + (cu.px & 1);
	ld	hl, #_cu + 2
	ld	c,(hl)
	ld	a,c
	and	a, #0x01
	ld	b,a
	inc	b
	inc	b
;src/main.c:379: u8 h = 2 + (cu.py & 3 ? 1 : 0);
	ld	hl, #_cu + 3
	ld	e,(hl)
	ld	a,e
	and	a, #0x03
	jr	Z,00105$
	ld	a,#0x01
	jr	00106$
00105$:
	ld	a,#0x00
00106$:
	add	a, #0x02
	ld	-1 (ix),a
;src/main.c:380: cpct_etm_drawTileBox2x4 (cu.px / 2, (cu.py - ORIGEN_MAPA_Y)/4, w, h, g_map1_W, ORIGEN_MAPA, mapa);
	ld	iy,(_mapa)
	ld	d,#0x00
	ld	h,e
	ld	l,d
	bit	7, d
	jr	Z,00107$
	inc	de
	inc	de
	inc	de
	ld	h,e
	ld	l,d
00107$:
	ld	e, h
	ld	d, l
	sra	d
	rr	e
	sra	d
	rr	e
	ld	d,c
	srl	d
	push	iy
	ld	hl,#0xC000
	push	hl
	ld	a,#0x28
	push	af
	inc	sp
	ld	a,-1 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_cpct_etm_drawTileBox2x4
;src/main.c:381: if(!cu.mover){
	ld	a, (#_cu + 9)
	or	a, a
	jr	NZ,00103$
;src/main.c:382: cu.lanzado = NO;
	ld	hl,#(_cu + 0x0006)
	ld	(hl),#0x00
00103$:
	inc	sp
	pop	ix
	ret
;src/main.c:386: void redibujarCuchillo( ) {
;	---------------------------------
; Function redibujarCuchillo
; ---------------------------------
_redibujarCuchillo::
;src/main.c:387: borrarCuchillo();
	call	_borrarCuchillo
;src/main.c:388: cu.px = cu.x;
	ld	bc,#_cu + 2
	ld	a, (#_cu + 0)
	ld	(bc),a
;src/main.c:389: cu.py = cu.y;
	ld	bc,#_cu + 3
	ld	a, (#_cu + 1)
	ld	(bc),a
;src/main.c:390: dibujarCuchillo();
	jp  _dibujarCuchillo
;src/main.c:394: void lanzarCuchillo(){
;	---------------------------------
; Function lanzarCuchillo
; ---------------------------------
_lanzarCuchillo::
;src/main.c:396: if(!cu.lanzado){
	ld	a, (#(_cu + 0x0006) + 0)
	or	a, a
	ret	NZ
;src/main.c:398: if(prota.mira == M_derecha){
	ld	hl, #_prota + 7
	ld	e,(hl)
;src/main.c:399: if( *getTilePtr(prota.x + G_HERO_W + G_KNIFEX_0_W + 1, prota.y + G_HERO_H /2) <= 2){
	ld	bc,#_prota + 1
;src/main.c:401: cu.direccion = M_derecha;
;src/main.c:403: cu.y=prota.y + G_HERO_H /2;
;src/main.c:404: cu.sprite=g_knifeX_0;
;src/main.c:405: cu.eje = E_X;
;src/main.c:398: if(prota.mira == M_derecha){
	ld	a,e
	or	a, a
	jr	NZ,00118$
;src/main.c:399: if( *getTilePtr(prota.x + G_HERO_W + G_KNIFEX_0_W + 1, prota.y + G_HERO_H /2) <= 2){
	ld	a,(bc)
	add	a, #0x0B
	ld	e,a
	ld	a, (#_prota + 0)
	add	a, #0x0C
	ld	l,a
	push	bc
	ld	a,e
	push	af
	inc	sp
	ld	a,l
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	pop	bc
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	ret	C
;src/main.c:400: cu.lanzado = SI;
	ld	hl,#(_cu + 0x0006)
	ld	(hl),#0x01
;src/main.c:401: cu.direccion = M_derecha;
	ld	hl,#(_cu + 0x0007)
	ld	(hl),#0x00
;src/main.c:402: cu.x=prota.x + G_HERO_W;
	ld	a, (#_prota + 0)
	add	a, #0x07
	ld	(#_cu),a
;src/main.c:403: cu.y=prota.y + G_HERO_H /2;
	ld	a,(bc)
	add	a, #0x0B
	ld	(#(_cu + 0x0001)),a
;src/main.c:404: cu.sprite=g_knifeX_0;
	ld	hl,#_g_knifeX_0
	ld	((_cu + 0x0004)), hl
;src/main.c:405: cu.eje = E_X;
	ld	hl,#(_cu + 0x0008)
	ld	(hl),#0x00
;src/main.c:406: dibujarCuchillo();
	jp  _dibujarCuchillo
00118$:
;src/main.c:409: else if(prota.mira == M_izquierda){
	ld	a,e
	dec	a
	jr	NZ,00115$
;src/main.c:410: if( *getTilePtr(prota.x - G_KNIFEX_0_W - 1 - G_KNIFEX_0_W - 1, prota.y + G_HERO_H /2) <= 2){
	ld	a,(bc)
	add	a, #0x0B
	ld	e,a
	ld	a, (#_prota + 0)
	add	a,#0xF6
	ld	l,a
	push	bc
	ld	a,e
	push	af
	inc	sp
	ld	a,l
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	pop	bc
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	ret	C
;src/main.c:411: cu.lanzado = SI;
	ld	hl,#(_cu + 0x0006)
	ld	(hl),#0x01
;src/main.c:412: cu.direccion = M_izquierda;
	ld	hl,#(_cu + 0x0007)
	ld	(hl),#0x01
;src/main.c:413: cu.x = prota.x - G_KNIFEX_0_W;
	ld	a, (#_prota + 0)
	add	a,#0xFC
	ld	(#_cu),a
;src/main.c:414: cu.y = prota.y + G_HERO_H /2;
	ld	a,(bc)
	add	a, #0x0B
	ld	(#(_cu + 0x0001)),a
;src/main.c:415: cu.sprite = g_knifeX_1;
	ld	hl,#_g_knifeX_1
	ld	((_cu + 0x0004)), hl
;src/main.c:416: cu.eje = E_X;
	ld	hl,#(_cu + 0x0008)
	ld	(hl),#0x00
;src/main.c:417: dibujarCuchillo();
	jp  _dibujarCuchillo
00115$:
;src/main.c:420: else if(prota.mira == M_abajo){
	ld	a,e
	sub	a, #0x03
	jr	NZ,00112$
;src/main.c:422: if( *getTilePtr(prota.x + G_HERO_W / 2, prota.y + G_HERO_H + G_KNIFEY_0_H + 1) <= 2){
	ld	a,(bc)
	add	a, #0x1F
	ld	e,a
	ld	a, (#_prota + 0)
	ld	d,a
	inc	d
	inc	d
	inc	d
	push	bc
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_getTilePtr
	pop	af
	pop	bc
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	ret	C
;src/main.c:423: cu.lanzado = SI;
	ld	hl,#(_cu + 0x0006)
	ld	(hl),#0x01
;src/main.c:424: cu.direccion = M_abajo;
	ld	hl,#(_cu + 0x0007)
	ld	(hl),#0x03
;src/main.c:425: cu.x = prota.x + G_HERO_W / 2;
	ld	a, (#_prota + 0)
	add	a, #0x03
	ld	(#_cu),a
;src/main.c:426: cu.y = prota.y + G_HERO_H;
	ld	a,(bc)
	add	a, #0x16
	ld	(#(_cu + 0x0001)),a
;src/main.c:427: cu.sprite = g_knifeY_0;
	ld	hl,#_g_knifeY_0
	ld	((_cu + 0x0004)), hl
;src/main.c:428: cu.eje = E_Y;
	ld	hl,#(_cu + 0x0008)
	ld	(hl),#0x01
;src/main.c:429: dibujarCuchillo();
	jp  _dibujarCuchillo
00112$:
;src/main.c:432: else if(prota.mira == M_arriba){
	ld	a,e
	sub	a, #0x02
	ret	NZ
;src/main.c:433: if( *getTilePtr(prota.x + G_HERO_W / 2, prota.y - G_KNIFEY_0_H - 1) <= 2){
	ld	a,(bc)
	add	a,#0xF7
	ld	d,a
	ld	a, (#_prota + 0)
	add	a, #0x03
	push	bc
	push	de
	inc	sp
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	pop	bc
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	ret	C
;src/main.c:434: cu.lanzado = SI;
	ld	hl,#(_cu + 0x0006)
	ld	(hl),#0x01
;src/main.c:435: cu.direccion = M_arriba;
	ld	hl,#(_cu + 0x0007)
	ld	(hl),#0x02
;src/main.c:436: cu.x = prota.x + G_HERO_W / 2;
	ld	a, (#_prota + 0)
	add	a, #0x03
	ld	(#_cu),a
;src/main.c:437: cu.y = prota.y;
	ld	a,(bc)
	ld	(#(_cu + 0x0001)),a
;src/main.c:438: cu.sprite = g_knifeY_1;
	ld	hl,#_g_knifeY_1
	ld	((_cu + 0x0004)), hl
;src/main.c:439: cu.eje = E_Y;
	ld	hl,#(_cu + 0x0008)
	ld	(hl),#0x01
;src/main.c:440: dibujarCuchillo();
	jp  _dibujarCuchillo
;src/main.c:446: void comprobarTeclado() {
;	---------------------------------
; Function comprobarTeclado
; ---------------------------------
_comprobarTeclado::
;src/main.c:447: cpct_scanKeyboard_if();
	call	_cpct_scanKeyboard_if
;src/main.c:449: if (cpct_isAnyKeyPressed()) {
	call	_cpct_isAnyKeyPressed
	ld	a,l
	or	a, a
	ret	Z
;src/main.c:450: if (cpct_isKeyPressed(Key_CursorLeft))
	ld	hl,#0x0101
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
;src/main.c:451: moverIzquierda();
	jp	NZ,_moverIzquierda
;src/main.c:452: else if (cpct_isKeyPressed(Key_CursorRight))
	ld	hl,#0x0200
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
;src/main.c:453: moverDerecha();
	jp	NZ,_moverDerecha
;src/main.c:454: else if (cpct_isKeyPressed(Key_CursorUp))
	ld	hl,#0x0100
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
;src/main.c:455: moverArriba();
	jp	NZ,_moverArriba
;src/main.c:456: else if (cpct_isKeyPressed(Key_CursorDown))
	ld	hl,#0x0400
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
;src/main.c:457: moverAbajo();
	jp	NZ,_moverAbajo
;src/main.c:458: else if (cpct_isKeyPressed(Key_Space))
	ld	hl,#0x8005
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	Z
;src/main.c:459: lanzarCuchillo();
	jp  _lanzarCuchillo
;src/main.c:463: u8 checkKnifeCollision(int direction){
;	---------------------------------
; Function checkKnifeCollision
; ---------------------------------
_checkKnifeCollision::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/main.c:465: u8 colisiona = 1;
	ld	c,#0x01
;src/main.c:467: switch (direction) {
	bit	7, 5 (ix)
	jp	NZ,00125$
	ld	a,#0x03
	cp	a, 4 (ix)
	ld	a,#0x00
	sbc	a, 5 (ix)
	jp	PO, 00163$
	xor	a, #0x80
00163$:
	jp	M,00125$
	ld	e,4 (ix)
	ld	d,#0x00
	ld	hl,#00164$
	add	hl,de
	add	hl,de
	add	hl,de
	jp	(hl)
00164$:
	jp	00125$
	jp	00125$
	jp	00103$
	jp	00114$
;src/main.c:468: case 0:
;src/main.c:470: break;
	jp	00125$
;src/main.c:471: case 1:
;src/main.c:473: break;
	jp	00125$
;src/main.c:474: case 2:
00103$:
;src/main.c:476: if((enemy.x + G_ENEMY_W) < cu.x || enemy.x  > (cu.x + G_KNIFEX_0_W)){
	ld	hl,#_enemy+0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0004
	add	hl,bc
	ex	de,hl
	ld	hl,#_cu+0
	ld	l,(hl)
	ld	h,#0x00
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00165$
	xor	a, #0x80
00165$:
	jp	M,00114$
	ld	de,#0x0004
	add	hl,de
	ld	a,l
	sub	a, c
	ld	a,h
	sbc	a, b
	jp	PO, 00166$
	xor	a, #0x80
00166$:
	jp	M,00114$
;src/main.c:479: if(cu.y>enemy.y){
	ld	hl, #(_cu + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_enemy + 1
	ld	e,(hl)
	ld	a,e
	sub	a, c
	jr	NC,00114$
;src/main.c:480: if(cu.y - (enemy.y + G_ENEMY_H) >= 2){
	ld	b,#0x00
	ld	d,#0x00
	ld	hl,#0x0016
	add	hl,de
	ld	a,c
	sub	a, l
	ld	c,a
	ld	a,b
	sbc	a, h
	ld	b,a
	ld	a,c
	sub	a, #0x02
	ld	a,b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00114$
;src/main.c:485: enemy.muerto = SI;
	ld	hl,#(_enemy + 0x0008)
	ld	(hl),#0x01
;src/main.c:492: case 3:
00114$:
;src/main.c:494: if((enemy.x + G_ENEMY_W) < cu.x || enemy.x  > (cu.x + G_KNIFEX_0_W)){
	ld	hl, #_enemy + 0
	ld	c,(hl)
	ld	b,#0x00
	ld	hl,#0x0004
	add	hl,bc
	ex	de,hl
	ld	hl, #_cu + 0
	ld	l,(hl)
	ld	h,#0x00
	ld	a,e
	sub	a, l
	ld	a,d
	sbc	a, h
	jp	PO, 00167$
	xor	a, #0x80
00167$:
	jp	M,00121$
	ld	de,#0x0004
	add	hl,de
	ld	a,l
	sub	a, c
	ld	a,h
	sbc	a, b
	jp	PO, 00168$
	xor	a, #0x80
00168$:
	jp	P,00122$
00121$:
;src/main.c:495: colisiona = 0;
	ld	c,#0x00
	jr	00125$
00122$:
;src/main.c:497: if(cu.y<enemy.y){
	ld	hl, #(_cu + 0x0001) + 0
	ld	c,(hl)
	ld	hl, #_enemy + 1
	ld	l,(hl)
	ld	a,c
	sub	a, l
	jr	NC,00119$
;src/main.c:498: if(enemy.y - (cu.y + G_KNIFEX_0_H - 2) >= 2){
	ld	h,#0x00
	ld	b,#0x00
	inc	bc
	inc	bc
	cp	a, a
	sbc	hl, bc
	ld	de, #0x8002
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jr	C,00116$
;src/main.c:499: colisiona = 0;
	ld	c,#0x00
	jr	00125$
00116$:
;src/main.c:501: colisiona = 1;
	ld	c,#0x01
;src/main.c:502: enemy.muerto = SI;
	ld	hl,#(_enemy + 0x0008)
	ld	(hl),#0x01
	jr	00125$
00119$:
;src/main.c:505: colisiona = 0;	
	ld	c,#0x00
;src/main.c:508: }
00125$:
;src/main.c:509: return colisiona;
	ld	l,c
	pop	ix
	ret
;src/main.c:512: void moverCuchillo(){
;	---------------------------------
; Function moverCuchillo
; ---------------------------------
_moverCuchillo::
;src/main.c:514: if(cu.lanzado){
	ld	bc,#_cu+0
	ld	a, (#_cu + 6)
	or	a, a
	ret	Z
;src/main.c:515: cu.mover = 1;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x01
;src/main.c:516: if(cu.direccion == M_derecha){
	ld	hl, #_cu + 7
	ld	l,(hl)
;src/main.c:518: if( *getTilePtr(cu.x + G_KNIFEX_0_W + 1, cu.y) <= 2){
	ld	e, c
	ld	d, b
	inc	de
;src/main.c:516: if(cu.direccion == M_derecha){
	ld	a,l
	or	a, a
	jr	NZ,00128$
;src/main.c:518: if( *getTilePtr(cu.x + G_KNIFEX_0_W + 1, cu.y) <= 2){
	ld	a,(de)
	ld	e,a
	ld	a,(bc)
	add	a, #0x05
	ld	l,a
	push	bc
	ld	a,e
	push	af
	inc	sp
	ld	a,l
	push	af
	inc	sp
	call	_getTilePtr
	pop	af
	pop	bc
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00102$
;src/main.c:519: cu.x++;
	ld	a,(bc)
	inc	a
	ld	(bc),a
;src/main.c:520: cu.mover = SI;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x01
	ret
00102$:
;src/main.c:524: cu.mover=NO;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x00
	ret
00128$:
;src/main.c:527: else if(cu.direccion == M_izquierda){
	ld	a,l
	dec	a
	jr	NZ,00125$
;src/main.c:528: if(*getTilePtr(cu.x - 1, cu.y) <= 2){
	ld	a,(de)
	ld	e,a
	ld	a,(bc)
	ld	d,a
	dec	d
	push	bc
	ld	a,e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_getTilePtr
	pop	af
	pop	bc
	ld	e,(hl)
	ld	a,#0x02
	sub	a, e
	jr	C,00105$
;src/main.c:529: cu.x--;
	ld	a,(bc)
	add	a,#0xFF
	ld	(bc),a
;src/main.c:530: cu.mover = SI;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x01
	ret
00105$:
;src/main.c:533: cu.mover=NO;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x00
	ret
00125$:
;src/main.c:536: else if(cu.direccion == M_arriba){
	ld	a,l
	sub	a, #0x02
	jr	NZ,00122$
;src/main.c:537: if(*getTilePtr(cu.x, cu.y - 2) <= 2){
	ld	a,(de)
	add	a,#0xFE
	push	af
	ld	a,(bc)
	ld	b,a
	pop	af
	push	de
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_getTilePtr
	pop	af
	pop	de
	ld	c,(hl)
	ld	a,#0x02
	sub	a, c
	jr	C,00111$
;src/main.c:538: if(!checkKnifeCollision(M_arriba)){
	push	de
	ld	hl,#0x0002
	push	hl
	call	_checkKnifeCollision
	pop	af
	pop	de
	ld	a,l
	or	a, a
	jr	NZ,00108$
;src/main.c:539: cu.y--;
	ld	a,(de)
	add	a,#0xFF
	ld	(de),a
;src/main.c:540: cu.y--;
	add	a,#0xFF
	ld	(de),a
;src/main.c:541: cu.mover = SI;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x01
	ret
00108$:
;src/main.c:544: cu.mover=NO;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x00
	ret
00111$:
;src/main.c:547: cu.mover=NO;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x00
	ret
00122$:
;src/main.c:552: else if(cu.direccion == M_abajo){
	ld	a,l
	sub	a, #0x03
	ret	NZ
;src/main.c:553: if(*getTilePtr(cu.x, cu.y + G_KNIFEY_0_H + 2) <= 2){
	ld	a,(de)
	add	a, #0x0A
	push	af
	ld	a,(bc)
	ld	b,a
	pop	af
	push	de
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_getTilePtr
	pop	af
	pop	de
	ld	c,(hl)
	ld	a,#0x02
	sub	a, c
	jr	C,00117$
;src/main.c:554: if(!checkKnifeCollision(M_abajo)){
	push	de
	ld	hl,#0x0003
	push	hl
	call	_checkKnifeCollision
	pop	af
	pop	de
	ld	a,l
	or	a, a
	jr	NZ,00114$
;src/main.c:555: cu.y++;
	ld	a,(de)
	inc	a
	ld	(de),a
;src/main.c:556: cu.y++;
	inc	a
	ld	(de),a
;src/main.c:557: cu.mover = SI;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x01
	ret
00114$:
;src/main.c:560: cu.mover=NO;					
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x00
	ret
00117$:
;src/main.c:563: cu.mover=NO;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x00
	ret
;src/main.c:568: void barraPuntuacionInicial(){
;	---------------------------------
; Function barraPuntuacionInicial
; ---------------------------------
_barraPuntuacionInicial::
;src/main.c:573: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 0, 178); // 
	ld	hl,#0xB200
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:574: cpct_drawStringM0("SCORE", memptr, 1, 0);
	ld	hl,#0x0001
	push	hl
	push	bc
	ld	hl,#___str_0
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:575: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 0, 190); // puntuación inicial
	ld	hl,#0xBE00
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:576: cpct_drawStringM0("00000", memptr, 15, 0);
	ld	hl,#0x000F
	push	hl
	push	bc
	ld	hl,#___str_1
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:579: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 26, 190);
	ld	hl,#0xBE1A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:580: cpct_drawStringM0("ROBOBIT", memptr, 3, 0);
	ld	hl,#0x0003
	push	hl
	push	bc
	ld	hl,#___str_2
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:582: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 60, 178); // 
	ld	hl,#0xB23C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:583: cpct_drawStringM0("LIVES", memptr, 1, 0);
	ld	hl,#0x0001
	push	hl
	push	bc
	ld	hl,#___str_3
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:585: for(i=0; i<5; i++){
	ld	bc,#0x0000
00102$:
;src/main.c:586: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 60 + i*4, 190); // dibuja 5 corazones
	ld	a,c
	add	a, a
	add	a, a
	add	a, #0x3C
	ld	d,a
	push	bc
	ld	a,#0xBE
	push	af
	inc	sp
	push	de
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ex	de,hl
	ld	hl,#0x0603
	push	hl
	push	de
	ld	hl,#_g_heart
	push	hl
	call	_cpct_drawSprite
	pop	bc
;src/main.c:585: for(i=0; i<5; i++){
	inc	bc
	ld	a,c
	sub	a, #0x05
	ld	a,b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00102$
	ret
___str_0:
	.ascii "SCORE"
	.db 0x00
___str_1:
	.ascii "00000"
	.db 0x00
___str_2:
	.ascii "ROBOBIT"
	.db 0x00
___str_3:
	.ascii "LIVES"
	.db 0x00
;src/main.c:591: void borrarPantallaAbajo(){
;	---------------------------------
; Function borrarPantallaAbajo
; ---------------------------------
_borrarPantallaAbajo::
;src/main.c:593: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 26, 180); // posición para borrar 
	ld	hl,#0xB41A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:595: cpct_drawSolidBox(memptr, 0, 30, 7);  //borra el texto "PULSA I"
	ld	hl,#0x071E
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	ret
;src/main.c:598: void menuFin(){
;	---------------------------------
; Function menuFin
; ---------------------------------
_menuFin::
;src/main.c:601: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:603: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 12, 90); // centrado en horizontal y arriba en vertical
	ld	hl,#0x5A0C
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:604: cpct_drawStringM0("FIN DE PARTIDA", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_4
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:608: do{
00101$:
;src/main.c:609: cpct_scanKeyboard_f();   		
	call	_cpct_scanKeyboard_f
;src/main.c:610: } while(!cpct_isKeyPressed(Key_I));   		
	ld	hl,#0x0804
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00101$
	ret
___str_4:
	.ascii "FIN DE PARTIDA"
	.db 0x00
;src/main.c:613: void menuInicio(){
;	---------------------------------
; Function menuInicio
; ---------------------------------
_menuInicio::
;src/main.c:617: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/main.c:619: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 32, 15); // centrado en horizontal y arriba en vertical
	ld	hl,#0x0F20
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:620: cpct_drawStringM0("MENU", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_5
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:622: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 26, 160); // centrado en horizontal y abajo en vertical
	ld	hl,#0xA01A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/main.c:623: cpct_drawStringM0("PULSA I", memptr, 1, 0);
	ld	hl,#0x0001
	push	hl
	push	bc
	ld	hl,#___str_6
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/main.c:626: do{
00101$:
;src/main.c:627: cpct_scanKeyboard_f();   		
	call	_cpct_scanKeyboard_f
;src/main.c:628: } while(!cpct_isKeyPressed(Key_I));   		
	ld	hl,#0x0804
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00101$
	ret
___str_5:
	.ascii "MENU"
	.db 0x00
___str_6:
	.ascii "PULSA I"
	.db 0x00
;src/main.c:631: void inicializarCPC() {
;	---------------------------------
; Function inicializarCPC
; ---------------------------------
_inicializarCPC::
;src/main.c:632: cpct_disableFirmware();
	call	_cpct_disableFirmware
;src/main.c:633: cpct_setVideoMode(0);
	ld	l,#0x00
	call	_cpct_setVideoMode
;src/main.c:634: cpct_setBorder(HW_BLACK);
	ld	hl,#0x1410
	push	hl
	call	_cpct_setPALColour
;src/main.c:635: cpct_setPalette(g_palette, 16);
	ld	hl,#0x0010
	push	hl
	ld	hl,#_g_palette
	push	hl
	call	_cpct_setPalette
;src/main.c:636: cpct_akp_musicInit(G_song);
	ld	hl,#_G_song
	push	hl
	call	_cpct_akp_musicInit
	pop	af
	ret
;src/main.c:639: void inicializarJuego() {
;	---------------------------------
; Function inicializarJuego
; ---------------------------------
_inicializarJuego::
;src/main.c:641: num_mapa = 0;
	ld	hl,#_num_mapa + 0
	ld	(hl), #0x00
;src/main.c:642: mapa = mapas[num_mapa];
	ld	hl, #_mapas + 0
	ld	a,(hl)
	ld	iy,#_mapa
	ld	0 (iy),a
	inc	hl
	ld	a,(hl)
	ld	(#_mapa + 1),a
;src/main.c:643: cpct_etm_setTileset2x4(g_tileset);
	ld	hl,#_g_tileset
	call	_cpct_etm_setTileset2x4
;src/main.c:644: dibujarMapa();
	call	_dibujarMapa
;src/main.c:645: borrarPantallaAbajo();
	call	_borrarPantallaAbajo
;src/main.c:646: barraPuntuacionInicial();
	call	_barraPuntuacionInicial
;src/main.c:649: prota.x = prota.px = 4;
	ld	hl,#(_prota + 0x0002)
	ld	(hl),#0x04
	ld	hl,#_prota
	ld	(hl),#0x04
;src/main.c:650: prota.y = prota.py = 80;
	ld	hl,#(_prota + 0x0003)
	ld	(hl),#0x50
	ld	hl,#(_prota + 0x0001)
	ld	(hl),#0x50
;src/main.c:651: prota.mover  = NO;
	ld	hl,#(_prota + 0x0006)
	ld	(hl),#0x00
;src/main.c:652: prota.mira=M_derecha;
	ld	hl,#(_prota + 0x0007)
	ld	(hl),#0x00
;src/main.c:653: prota.sprite = g_hero;
	ld	hl,#_g_hero
	ld	((_prota + 0x0004)), hl
;src/main.c:655: enemy.x = enemy.px = 71;
	ld	hl,#(_enemy + 0x0002)
	ld	(hl),#0x47
	ld	hl,#_enemy
	ld	(hl),#0x47
;src/main.c:656: enemy.y = enemy.py = 84;
	ld	hl,#(_enemy + 0x0003)
	ld	(hl),#0x54
	ld	hl,#(_enemy + 0x0001)
	ld	(hl),#0x54
;src/main.c:657: enemy.mover  = NO;
	ld	hl,#(_enemy + 0x0006)
	ld	(hl),#0x00
;src/main.c:658: enemy.mira=M_abajo;
	ld	hl,#(_enemy + 0x0007)
	ld	(hl),#0x03
;src/main.c:659: enemy.sprite = g_enemy;
	ld	hl,#_g_enemy
	ld	((_enemy + 0x0004)), hl
;src/main.c:660: enemy.muerto = NO;
	ld	hl,#(_enemy + 0x0008)
	ld	(hl),#0x00
;src/main.c:662: cu.x = cu.px = 0;
	ld	hl,#(_cu + 0x0002)
	ld	(hl),#0x00
	ld	hl,#_cu
	ld	(hl),#0x00
;src/main.c:663: cu.y = cu.py = 0;
	ld	hl,#(_cu + 0x0003)
	ld	(hl),#0x00
	ld	hl,#(_cu + 0x0001)
	ld	(hl),#0x00
;src/main.c:664: cu.lanzado = NO;
	ld	hl,#(_cu + 0x0006)
	ld	(hl),#0x00
;src/main.c:665: cu.mover = NO;
	ld	hl,#(_cu + 0x0009)
	ld	(hl),#0x00
;src/main.c:669: dibujarProta();
	call	_dibujarProta
;src/main.c:670: dibujarEnemigo();
	jp  _dibujarEnemigo
;src/main.c:673: void main(void) {
;	---------------------------------
; Function main
; ---------------------------------
_main::
;src/main.c:675: inicializarCPC();
	call	_inicializarCPC
;src/main.c:676: menuInicio();
	call	_menuInicio
;src/main.c:678: inicializarJuego();
	call	_inicializarJuego
;src/main.c:679: cpct_akp_musicPlay();
	call	_cpct_akp_musicPlay
;src/main.c:681: while (1) {
00115$:
;src/main.c:683: comprobarTeclado();
	call	_comprobarTeclado
;src/main.c:684: moverCuchillo();
	call	_moverCuchillo
;src/main.c:685: moverEnemigo();
	call	_moverEnemigo
;src/main.c:687: cpct_waitVSYNC();
	call	_cpct_waitVSYNC
;src/main.c:689: if (prota.mover) {
	ld	bc,#_prota+6
	ld	a,(bc)
	or	a, a
	jr	Z,00102$
;src/main.c:690: redibujarProta();
	push	bc
	call	_redibujarProta
	pop	bc
;src/main.c:691: prota.mover = NO;
	xor	a, a
	ld	(bc),a
00102$:
;src/main.c:693: if(cu.lanzado && cu.mover){
	ld	hl,#_cu + 6
	ld	c,(hl)
	ld	de,#_cu + 9
	ld	a,c
	or	a, a
	jr	Z,00107$
	ld	a,(de)
	or	a, a
	jr	Z,00107$
;src/main.c:694: redibujarCuchillo();
	call	_redibujarCuchillo
	jr	00108$
00107$:
;src/main.c:695: }else if (cu.lanzado && !cu.mover){
	ld	a,c
	or	a, a
	jr	Z,00108$
	ld	a,(de)
	or	a, a
	jr	NZ,00108$
;src/main.c:696: borrarCuchillo();
	call	_borrarCuchillo
00108$:
;src/main.c:699: if(enemy.mover){
	ld	a, (#_enemy + 6)
	or	a, a
	jr	Z,00111$
;src/main.c:700: redibujarEnemigo();
	call	_redibujarEnemigo
00111$:
;src/main.c:702: if (enemy.muerto){
	ld	a, (#_enemy + 8)
	or	a, a
	jr	Z,00115$
;src/main.c:703: borrarEnemigo();
	call	_borrarEnemigo
	jr	00115$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x3F00
_G_song:
	.db #0x41	; 65	'A'
	.db #0x54	; 84	'T'
	.db #0x31	; 49	'1'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x42	; 66	'B'
	.db #0x0F	; 15
	.db #0x02	; 2
	.db #0x06	; 6
	.db #0x1D	; 29
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x40	; 64
	.db #0x19	; 25
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0D	; 13
	.db #0x12	; 18
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x7C	; 124
	.db #0x18	; 24
	.db #0x78	; 120	'x'
	.db #0x0C	; 12
	.db #0x34	; 52	'4'
	.db #0x30	; 48	'0'
	.db #0x2C	; 44
	.db #0x28	; 40
	.db #0x24	; 36
	.db #0x20	; 32
	.db #0x1C	; 28
	.db #0x0D	; 13
	.db #0x25	; 37
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x39	; 57	'9'
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x57	; 87	'W'
	.db #0x40	; 64
	.db #0x3B	; 59
	.db #0x40	; 64
	.db #0x57	; 87	'W'
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x2F	; 47
	.db #0x40	; 64
	.db #0x19	; 25
	.db #0x00	; 0
	.db #0x76	; 118	'v'
	.db #0xE1	; 225
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x51	; 81	'Q'
	.db #0x04	; 4
	.db #0x37	; 55	'7'
	.db #0x04	; 4
	.db #0x4F	; 79	'O'
	.db #0x04	; 4
	.db #0x37	; 55	'7'
	.db #0x02	; 2
	.db #0x4B	; 75	'K'
	.db #0x02	; 2
	.db #0x37	; 55	'7'
	.db #0x04	; 4
	.db #0x4F	; 79	'O'
	.db #0x04	; 4
	.db #0x37	; 55	'7'
	.db #0x04	; 4
	.db #0x4F	; 79	'O'
	.db #0x04	; 4
	.db #0x37	; 55	'7'
	.db #0x02	; 2
	.db #0x4B	; 75	'K'
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x80	; 128
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x00	; 0
	.db #0x00	; 0
