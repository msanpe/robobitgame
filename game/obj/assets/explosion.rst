                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module explosion
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_explosion
                             12 ;--------------------------------------------------------
                             13 ; special function registers
                             14 ;--------------------------------------------------------
                             15 ;--------------------------------------------------------
                             16 ; ram data
                             17 ;--------------------------------------------------------
                             18 	.area _DATA
                             19 ;--------------------------------------------------------
                             20 ; ram data
                             21 ;--------------------------------------------------------
                             22 	.area _INITIALIZED
                             23 ;--------------------------------------------------------
                             24 ; absolute external ram data
                             25 ;--------------------------------------------------------
                             26 	.area _DABS (ABS)
                             27 ;--------------------------------------------------------
                             28 ; global & static initialisations
                             29 ;--------------------------------------------------------
                             30 	.area _HOME
                             31 	.area _GSINIT
                             32 	.area _GSFINAL
                             33 	.area _GSINIT
                             34 ;--------------------------------------------------------
                             35 ; Home
                             36 ;--------------------------------------------------------
                             37 	.area _HOME
                             38 	.area _HOME
                             39 ;--------------------------------------------------------
                             40 ; code
                             41 ;--------------------------------------------------------
                             42 	.area _CODE
                             43 	.area _CODE
   1970                      44 _g_explosion:
   1970 00                   45 	.db #0x00	; 0
   1971 44                   46 	.db #0x44	; 68	'D'
   1972 64                   47 	.db #0x64	; 100	'd'
   1973 00                   48 	.db #0x00	; 0
   1974 44                   49 	.db #0x44	; 68	'D'
   1975 CC                   50 	.db #0xCC	; 204
   1976 64                   51 	.db #0x64	; 100	'd'
   1977 82                   52 	.db #0x82	; 130
   1978 44                   53 	.db #0x44	; 68	'D'
   1979 CC                   54 	.db #0xCC	; 204
   197A 30                   55 	.db #0x30	; 48	'0'
   197B 88                   56 	.db #0x88	; 136
   197C 44                   57 	.db #0x44	; 68	'D'
   197D 30                   58 	.db #0x30	; 48	'0'
   197E 98                   59 	.db #0x98	; 152
   197F 88                   60 	.db #0x88	; 136
   1980 44                   61 	.db #0x44	; 68	'D'
   1981 30                   62 	.db #0x30	; 48	'0'
   1982 98                   63 	.db #0x98	; 152
   1983 20                   64 	.db #0x20	; 32
   1984 10                   65 	.db #0x10	; 16
   1985 98                   66 	.db #0x98	; 152
   1986 98                   67 	.db #0x98	; 152
   1987 20                   68 	.db #0x20	; 32
   1988 98                   69 	.db #0x98	; 152
   1989 0F                   70 	.db #0x0F	; 15
   198A 25                   71 	.db #0x25	; 37
   198B 88                   72 	.db #0x88	; 136
   198C CC                   73 	.db #0xCC	; 204
   198D 5B                   74 	.db #0x5B	; 91
   198E 1A                   75 	.db #0x1A	; 26
   198F CC                   76 	.db #0xCC	; 204
   1990 CC                   77 	.db #0xCC	; 204
   1991 25                   78 	.db #0x25	; 37
   1992 30                   79 	.db #0x30	; 48	'0'
   1993 CC                   80 	.db #0xCC	; 204
   1994 98                   81 	.db #0x98	; 152
   1995 8D                   82 	.db #0x8D	; 141
   1996 4E                   83 	.db #0x4E	; 78	'N'
   1997 CC                   84 	.db #0xCC	; 204
   1998 98                   85 	.db #0x98	; 152
   1999 5B                   86 	.db #0x5B	; 91
   199A 1A                   87 	.db #0x1A	; 26
   199B CC                   88 	.db #0xCC	; 204
   199C 98                   89 	.db #0x98	; 152
   199D 0F                   90 	.db #0x0F	; 15
   199E 0F                   91 	.db #0x0F	; 15
   199F 64                   92 	.db #0x64	; 100	'd'
   19A0 98                   93 	.db #0x98	; 152
   19A1 0F                   94 	.db #0x0F	; 15
   19A2 0F                   95 	.db #0x0F	; 15
   19A3 CC                   96 	.db #0xCC	; 204
   19A4 8D                   97 	.db #0x8D	; 141
   19A5 25                   98 	.db #0x25	; 37
   19A6 0F                   99 	.db #0x0F	; 15
   19A7 CC                  100 	.db #0xCC	; 204
   19A8 98                  101 	.db #0x98	; 152
   19A9 0F                  102 	.db #0x0F	; 15
   19AA 1A                  103 	.db #0x1A	; 26
   19AB CC                  104 	.db #0xCC	; 204
   19AC 98                  105 	.db #0x98	; 152
   19AD 1A                  106 	.db #0x1A	; 26
   19AE 0F                  107 	.db #0x0F	; 15
   19AF C9                  108 	.db #0xC9	; 201
   19B0 CC                  109 	.db #0xCC	; 204
   19B1 30                  110 	.db #0x30	; 48	'0'
   19B2 25                  111 	.db #0x25	; 37
   19B3 88                  112 	.db #0x88	; 136
   19B4 44                  113 	.db #0x44	; 68	'D'
   19B5 30                  114 	.db #0x30	; 48	'0'
   19B6 30                  115 	.db #0x30	; 48	'0'
   19B7 88                  116 	.db #0x88	; 136
   19B8 44                  117 	.db #0x44	; 68	'D'
   19B9 30                  118 	.db #0x30	; 48	'0'
   19BA 30                  119 	.db #0x30	; 48	'0'
   19BB 88                  120 	.db #0x88	; 136
   19BC 41                  121 	.db #0x41	; 65	'A'
   19BD CC                  122 	.db #0xCC	; 204
   19BE 30                  123 	.db #0x30	; 48	'0'
   19BF 88                  124 	.db #0x88	; 136
   19C0 00                  125 	.db #0x00	; 0
   19C1 CC                  126 	.db #0xCC	; 204
   19C2 64                  127 	.db #0x64	; 100	'd'
   19C3 88                  128 	.db #0x88	; 136
   19C4 00                  129 	.db #0x00	; 0
   19C5 10                  130 	.db #0x10	; 16
   19C6 CC                  131 	.db #0xCC	; 204
   19C7 88                  132 	.db #0x88	; 136
                            133 	.area _INITIALIZER
                            134 	.area _CABS (ABS)
