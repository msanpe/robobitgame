;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.5.5 #9498 (Linux)
;--------------------------------------------------------
	.module menu
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cpct_getScreenPtr
	.globl _cpct_drawStringM0
	.globl _cpct_drawCharM0
	.globl _cpct_drawSolidBox
	.globl _cpct_drawSprite
	.globl _cpct_isKeyPressed
	.globl _cpct_scanKeyboard_f
	.globl _cpct_memset
	.globl _menuFin
	.globl _borrarPantalla
	.globl _menuInstrucciones
	.globl _menuCreditos
	.globl _menuOpciones
	.globl _menuInicio
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
;src/menu/menu.c:7: void menuFin(u16 puntuacion) __z88dk_fastcall {
;	---------------------------------
; Function menuFin
; ---------------------------------
_menuFin::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	-2 (ix),l
	ld	-1 (ix),h
;src/menu/menu.c:10: puntuacion_aux = puntuacion/10000;
	ld	hl,#0x2710
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	inc	sp
	inc	sp
	push	hl
;src/menu/menu.c:13: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/menu/menu.c:15: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 24, 90); // centrado en horizontal y arriba en vertical
	ld	hl,#0x5A18
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:16: cpct_drawStringM0("GAME OVER", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_0
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:18: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 20, 120); // centrado en horizontal y arriba en vertical
	ld	hl,#0x7814
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:19: cpct_drawStringM0("SCORE: ", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_1
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:21: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 45, 120); // centrado en horizontal y arriba en vertical
	ld	hl,#0x782D
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
;src/menu/menu.c:23: cpct_drawCharM0(memptr, 2, 0, (puntuacion_aux%10) + 48);
	push	hl
	ld	hl,#0x000A
	push	hl
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	h,a
	ld	e, c
	ld	d, b
	push	bc
	push	hl
	inc	sp
	ld	hl,#0x0002
	push	hl
	push	de
	call	_cpct_drawCharM0
	pop	af
	inc	sp
	ld	hl,#0x03E8
	ex	(sp),hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	ld	de,#0x000A
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	h,a
	ld	a,c
	add	a, #0x04
	ld	e,a
	ld	a,b
	adc	a, #0x00
	ld	d,a
	push	bc
	push	hl
	inc	sp
	ld	hl,#0x0002
	push	hl
	push	de
	call	_cpct_drawCharM0
	pop	af
	inc	sp
	ld	hl,#0x0064
	ex	(sp),hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	ld	de,#0x000A
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	h,a
	ld	a,c
	add	a, #0x08
	ld	e,a
	ld	a,b
	adc	a, #0x00
	ld	d,a
	push	bc
	push	hl
	inc	sp
	ld	hl,#0x0002
	push	hl
	push	de
	call	_cpct_drawCharM0
	pop	af
	inc	sp
	ld	hl,#0x000A
	ex	(sp),hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	ld	de,#0x000A
	push	de
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	h,a
	ld	a,c
	add	a, #0x0C
	ld	e,a
	ld	a,b
	adc	a, #0x00
	ld	d,a
	push	bc
	push	hl
	inc	sp
	ld	hl,#0x0002
	push	hl
	push	de
	call	_cpct_drawCharM0
	pop	af
	inc	sp
	ld	hl,#0x000A
	ex	(sp),hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	bc
	ld	a,l
	add	a, #0x30
	ld	d,a
	ld	hl,#0x0010
	add	hl,bc
	ld	c,l
	ld	b,h
	push	de
	inc	sp
	ld	hl,#0x0002
	push	hl
	push	bc
	call	_cpct_drawCharM0
	pop	af
	pop	af
	inc	sp
;src/menu/menu.c:34: while(1){}
00102$:
	jr	00102$
___str_0:
	.ascii "GAME OVER"
	.db 0x00
___str_1:
	.ascii "SCORE: "
	.db 0x00
;src/menu/menu.c:37: void borrarPantalla(u8 x, u8 y, u8 ancho, u8 alto){
;	---------------------------------
; Function borrarPantalla
; ---------------------------------
_borrarPantalla::
	push	ix
	ld	ix,#0
	add	ix,sp
;src/menu/menu.c:39: if (ancho <= 40){
	ld	a,#0x28
	sub	a, 6 (ix)
	ld	a,#0x00
	rla
	ld	c,a
	bit	0,c
	jr	NZ,00104$
;src/menu/menu.c:40: memptr = cpct_getScreenPtr(CPCT_VMEM_START, x, y); // posición para borrar 
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:41: cpct_drawSolidBox(memptr, 0, ancho, alto);  //borra 
	ld	h,7 (ix)
	ld	l,6 (ix)
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
	jr	00106$
00104$:
;src/menu/menu.c:43: else if (ancho > 40){
	bit	0,c
	jr	Z,00106$
;src/menu/menu.c:45: memptr = cpct_getScreenPtr(CPCT_VMEM_START, x, y); // posición para borrar la mitad derecha
	ld	h,5 (ix)
	ld	l,4 (ix)
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:46: cpct_drawSolidBox(memptr, 0, 40, alto);  //borra la mitad derecha
	ld	a,7 (ix)
	push	af
	inc	sp
	ld	hl,#0x2800
	push	hl
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
;src/menu/menu.c:47: memptr = cpct_getScreenPtr(CPCT_VMEM_START, x + 40, y); // posición para borrar la mitad izquierda
	ld	a,4 (ix)
	add	a, #0x28
	ld	b,a
	ld	a,5 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:48: cpct_drawSolidBox(memptr, 0, ancho-40, alto);  //borra la mitad izquierda
	ld	a,6 (ix)
	add	a,#0xD8
	ld	d,a
	ld	a,7 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	bc
	call	_cpct_drawSolidBox
	pop	af
	pop	af
	inc	sp
00106$:
	pop	ix
	ret
;src/menu/menu.c:52: void menuInstrucciones(){ // TODO TODO
;	---------------------------------
; Function menuInstrucciones
; ---------------------------------
_menuInstrucciones::
;src/menu/menu.c:54: borrarPantalla(0, 30, 80, 130);//borra el texto de información inicial
	ld	hl,#0x8250
	push	hl
	ld	hl,#0x1E00
	push	hl
	call	_borrarPantalla
	pop	af
;src/menu/menu.c:57: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 16, 85); // centrado en horizontal y abajo en vertical
	ld	hl, #0x5510
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:58: cpct_drawStringM0("INSTRUCTIONS", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_2
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:61: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 4, 115); // dibuja 5 corazones
	ld	hl,#0x7304
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:62: cpct_drawSprite (g_arrows_0, memptr, G_ARROWS_0_W, G_ARROWS_0_H);
	ld	hl,#0x0A05
	push	hl
	push	bc
	ld	hl,#_g_arrows_0
	push	hl
	call	_cpct_drawSprite
;src/menu/menu.c:64: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 14, 115); // dibuja 5 corazones
	ld	hl,#0x730E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:65: cpct_drawSprite (g_arrows_1, memptr, G_ARROWS_0_W, G_ARROWS_0_H);
	ld	hl,#0x0A05
	push	hl
	push	bc
	ld	hl,#_g_arrows_1
	push	hl
	call	_cpct_drawSprite
;src/menu/menu.c:67: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 24, 115); // dibuja 5 corazones
	ld	hl,#0x7318
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:68: cpct_drawSprite (g_arrows_2, memptr, G_ARROWS_0_W, G_ARROWS_0_H);
	ld	hl,#0x0A05
	push	hl
	push	bc
	ld	hl,#_g_arrows_2
	push	hl
	call	_cpct_drawSprite
;src/menu/menu.c:70: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 34, 115); // dibuja 5 corazones
	ld	hl,#0x7322
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:71: cpct_drawSprite (g_arrows_3, memptr, G_ARROWS_0_W, G_ARROWS_0_H);
	ld	hl,#0x0A05
	push	hl
	push	bc
	ld	hl,#_g_arrows_3
	push	hl
	call	_cpct_drawSprite
;src/menu/menu.c:73: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 45, 115); // centrado en horizontal y abajo en vertical
	ld	hl,#0x732D
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:74: cpct_drawStringM0(" TO MOVE", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_3
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:76: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 4, 130); // centrado en horizontal y abajo en vertical
	ld	hl,#0x8204
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:77: cpct_drawStringM0("SPACE BAR TO SHOOT", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_4
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:79: do{
00104$:
;src/menu/menu.c:80: cpct_scanKeyboard_f(); 
	call	_cpct_scanKeyboard_f
;src/menu/menu.c:81: if(cpct_isKeyPressed(Key_M)){
	ld	hl,#0x4004
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00105$
;src/menu/menu.c:82: menuOpciones();
	call	_menuOpciones
00105$:
;src/menu/menu.c:85: } while(!cpct_isKeyPressed(Key_S) && !cpct_isKeyPressed(Key_M));
	ld	hl,#0x1007
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	NZ
	ld	hl,#0x4004
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00104$
	ret
___str_2:
	.ascii "INSTRUCTIONS"
	.db 0x00
___str_3:
	.ascii " TO MOVE"
	.db 0x00
___str_4:
	.ascii "SPACE BAR TO SHOOT"
	.db 0x00
;src/menu/menu.c:88: void menuCreditos(){ // TODO TODO
;	---------------------------------
; Function menuCreditos
; ---------------------------------
_menuCreditos::
;src/menu/menu.c:90: borrarPantalla(0, 30, 80, 130);//borra el texto de información inicial
	ld	hl,#0x8250
	push	hl
	ld	hl,#0x1E00
	push	hl
	call	_borrarPantalla
	pop	af
;src/menu/menu.c:93: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 26, 70); // centrado en horizontal y abajo en vertical
	ld	hl, #0x461A
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:94: cpct_drawStringM0("CREDITS", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_5
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:96: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 10, 100); // centrado en horizontal y abajo en vertical
	ld	hl,#0x640A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:97: cpct_drawStringM0("Cristina Rivera", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_6
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:99: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 14, 115); // centrado en horizontal y abajo en vertical
	ld	hl,#0x730E
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:100: cpct_drawStringM0("Miguel Sancho", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_7
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:102: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 8, 130); // centrado en horizontal y abajo en vertical
	ld	hl,#0x8208
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:103: cpct_drawStringM0("Fernando Verdejo", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_8
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:105: do{
00104$:
;src/menu/menu.c:106: cpct_scanKeyboard_f(); 
	call	_cpct_scanKeyboard_f
;src/menu/menu.c:107: if(cpct_isKeyPressed(Key_M)){
	ld	hl,#0x4004
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00105$
;src/menu/menu.c:108: menuOpciones();
	call	_menuOpciones
00105$:
;src/menu/menu.c:111: } while(!cpct_isKeyPressed(Key_S) && !cpct_isKeyPressed(Key_M));
	ld	hl,#0x1007
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	NZ
	ld	hl,#0x4004
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00104$
	ret
___str_5:
	.ascii "CREDITS"
	.db 0x00
___str_6:
	.ascii "Cristina Rivera"
	.db 0x00
___str_7:
	.ascii "Miguel Sancho"
	.db 0x00
___str_8:
	.ascii "Fernando Verdejo"
	.db 0x00
;src/menu/menu.c:115: void menuOpciones(){ // TODO TODO
;	---------------------------------
; Function menuOpciones
; ---------------------------------
_menuOpciones::
;src/menu/menu.c:117: borrarPantalla(0, 30, 80, 130);//borra el texto de información inicial
	ld	hl,#0x8250
	push	hl
	ld	hl,#0x1E00
	push	hl
	call	_borrarPantalla
	pop	af
;src/menu/menu.c:120: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 32, 100); // centrado en horizontal y abajo en vertical
	ld	hl, #0x6420
	ex	(sp),hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:121: cpct_drawStringM0("MENU", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_9
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:123: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 0, 130); // centrado en horizontal y abajo en vertical
	ld	hl,#0x8200
	push	hl
	ld	h, #0xC0
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:124: cpct_drawStringM0("INSTRUCTIONS PRESS I", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_10
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:126: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 10, 145); // centrado en horizontal y abajo en vertical
	ld	hl,#0x910A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:127: cpct_drawStringM0("CREDITS PRESS C", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_11
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:129: do{
00108$:
;src/menu/menu.c:130: cpct_scanKeyboard_f(); 
	call	_cpct_scanKeyboard_f
;src/menu/menu.c:135: if(cpct_isKeyPressed(Key_I)){
	ld	hl,#0x0804
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00104$
;src/menu/menu.c:136: menuInstrucciones();
	call	_menuInstrucciones
	jr	00109$
00104$:
;src/menu/menu.c:140: else if(cpct_isKeyPressed(Key_C)){
	ld	hl,#0x4007
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00109$
;src/menu/menu.c:141: menuCreditos();
	call	_menuCreditos
00109$:
;src/menu/menu.c:149: } while(!cpct_isKeyPressed(Key_S) && !cpct_isKeyPressed(Key_I) && !cpct_isKeyPressed(Key_C));
	ld	hl,#0x1007
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	NZ
	ld	hl,#0x0804
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	NZ
	ld	hl,#0x4007
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00108$
	ret
___str_9:
	.ascii "MENU"
	.db 0x00
___str_10:
	.ascii "INSTRUCTIONS PRESS I"
	.db 0x00
___str_11:
	.ascii "CREDITS PRESS C"
	.db 0x00
;src/menu/menu.c:152: void menuInicio() {
;	---------------------------------
; Function menuInicio
; ---------------------------------
_menuInicio::
;src/menu/menu.c:155: cpct_clearScreen(0);
	ld	hl,#0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	h, #0xC0
	push	hl
	call	_cpct_memset
;src/menu/menu.c:157: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 26, 15); // centrado en horizontal y arriba en vertical
	ld	hl,#0x0F1A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:158: cpct_drawStringM0("ROBOBIT", memptr, 4, 0);
	ld	hl,#0x0004
	push	hl
	push	bc
	ld	hl,#___str_12
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:160: cpct_drawSprite(g_text_0, cpctm_screenPtr(CPCT_VMEM_START,  0, 30), G_TEXT_0_W, G_TEXT_0_H); // imagen
	ld	hl,#0x6E28
	push	hl
	ld	hl,#0xF0F0
	push	hl
	ld	hl,#_g_text_0
	push	hl
	call	_cpct_drawSprite
;src/menu/menu.c:161: cpct_drawSprite(g_text_1, cpctm_screenPtr(CPCT_VMEM_START, 40, 30), G_TEXT_0_W, G_TEXT_0_H);
	ld	hl,#0x6E28
	push	hl
	ld	hl,#0xF118
	push	hl
	ld	hl,#_g_text_1
	push	hl
	call	_cpct_drawSprite
;src/menu/menu.c:163: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 8, 160); // centrado en horizontal y abajo en vertical
	ld	hl,#0xA008
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:164: cpct_drawStringM0("TO START PRESS S", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_13
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:166: memptr = cpct_getScreenPtr(CPCT_VMEM_START, 10, 175); // centrado en horizontal y abajo en vertical
	ld	hl,#0xAF0A
	push	hl
	ld	hl,#0xC000
	push	hl
	call	_cpct_getScreenPtr
	ld	c,l
	ld	b,h
;src/menu/menu.c:167: cpct_drawStringM0("TO MENU PRESS M", memptr, 2, 0);
	ld	hl,#0x0002
	push	hl
	push	bc
	ld	hl,#___str_14
	push	hl
	call	_cpct_drawStringM0
	ld	hl,#6
	add	hl,sp
	ld	sp,hl
;src/menu/menu.c:170: do{
00107$:
;src/menu/menu.c:171: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/menu/menu.c:175: if(cpct_isKeyPressed(Key_M)){
	ld	hl,#0x4004
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00108$
;src/menu/menu.c:176: cpct_scanKeyboard_f();
	call	_cpct_scanKeyboard_f
;src/menu/menu.c:177: do{
00101$:
;src/menu/menu.c:178: menuOpciones();
	call	_menuOpciones
;src/menu/menu.c:180: } while(!cpct_isKeyPressed(Key_S));
	ld	hl,#0x1007
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00101$
00108$:
;src/menu/menu.c:182: } while(!cpct_isKeyPressed(Key_S) && !cpct_isKeyPressed(Key_M));
	ld	hl,#0x1007
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	ret	NZ
	ld	hl,#0x4004
	call	_cpct_isKeyPressed
	ld	a,l
	or	a, a
	jr	Z,00107$
	ret
___str_12:
	.ascii "ROBOBIT"
	.db 0x00
___str_13:
	.ascii "TO START PRESS S"
	.db 0x00
___str_14:
	.ascii "TO MENU PRESS M"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)