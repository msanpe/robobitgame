                              1 ;--------------------------------------------------------
                              2 ; File Created by SDCC : free open source ANSI-C Compiler
                              3 ; Version 3.5.5 #9498 (Linux)
                              4 ;--------------------------------------------------------
                              5 	.module arrows
                              6 	.optsdcc -mz80
                              7 	
                              8 ;--------------------------------------------------------
                              9 ; Public variables in this module
                             10 ;--------------------------------------------------------
                             11 	.globl _g_arrows_3
                             12 	.globl _g_arrows_2
                             13 	.globl _g_arrows_1
                             14 	.globl _g_arrows_0
                             15 ;--------------------------------------------------------
                             16 ; special function registers
                             17 ;--------------------------------------------------------
                             18 ;--------------------------------------------------------
                             19 ; ram data
                             20 ;--------------------------------------------------------
                             21 	.area _DATA
                             22 ;--------------------------------------------------------
                             23 ; ram data
                             24 ;--------------------------------------------------------
                             25 	.area _INITIALIZED
                             26 ;--------------------------------------------------------
                             27 ; absolute external ram data
                             28 ;--------------------------------------------------------
                             29 	.area _DABS (ABS)
                             30 ;--------------------------------------------------------
                             31 ; global & static initialisations
                             32 ;--------------------------------------------------------
                             33 	.area _HOME
                             34 	.area _GSINIT
                             35 	.area _GSFINAL
                             36 	.area _GSINIT
                             37 ;--------------------------------------------------------
                             38 ; Home
                             39 ;--------------------------------------------------------
                             40 	.area _HOME
                             41 	.area _HOME
                             42 ;--------------------------------------------------------
                             43 ; code
                             44 ;--------------------------------------------------------
                             45 	.area _CODE
                             46 	.area _CODE
   18A8                      47 _g_arrows_0:
   18A8 00                   48 	.db #0x00	; 0
   18A9 00                   49 	.db #0x00	; 0
   18AA 01                   50 	.db #0x01	; 1
   18AB 00                   51 	.db #0x00	; 0
   18AC 00                   52 	.db #0x00	; 0
   18AD 00                   53 	.db #0x00	; 0
   18AE 00                   54 	.db #0x00	; 0
   18AF 01                   55 	.db #0x01	; 1
   18B0 02                   56 	.db #0x02	; 2
   18B1 00                   57 	.db #0x00	; 0
   18B2 00                   58 	.db #0x00	; 0
   18B3 00                   59 	.db #0x00	; 0
   18B4 01                   60 	.db #0x01	; 1
   18B5 03                   61 	.db #0x03	; 3
   18B6 00                   62 	.db #0x00	; 0
   18B7 03                   63 	.db #0x03	; 3
   18B8 03                   64 	.db #0x03	; 3
   18B9 03                   65 	.db #0x03	; 3
   18BA 03                   66 	.db #0x03	; 3
   18BB 02                   67 	.db #0x02	; 2
   18BC 03                   68 	.db #0x03	; 3
   18BD 03                   69 	.db #0x03	; 3
   18BE 03                   70 	.db #0x03	; 3
   18BF 03                   71 	.db #0x03	; 3
   18C0 03                   72 	.db #0x03	; 3
   18C1 03                   73 	.db #0x03	; 3
   18C2 03                   74 	.db #0x03	; 3
   18C3 03                   75 	.db #0x03	; 3
   18C4 03                   76 	.db #0x03	; 3
   18C5 03                   77 	.db #0x03	; 3
   18C6 03                   78 	.db #0x03	; 3
   18C7 03                   79 	.db #0x03	; 3
   18C8 03                   80 	.db #0x03	; 3
   18C9 03                   81 	.db #0x03	; 3
   18CA 02                   82 	.db #0x02	; 2
   18CB 00                   83 	.db #0x00	; 0
   18CC 00                   84 	.db #0x00	; 0
   18CD 01                   85 	.db #0x01	; 1
   18CE 03                   86 	.db #0x03	; 3
   18CF 00                   87 	.db #0x00	; 0
   18D0 00                   88 	.db #0x00	; 0
   18D1 00                   89 	.db #0x00	; 0
   18D2 01                   90 	.db #0x01	; 1
   18D3 02                   91 	.db #0x02	; 2
   18D4 00                   92 	.db #0x00	; 0
   18D5 00                   93 	.db #0x00	; 0
   18D6 00                   94 	.db #0x00	; 0
   18D7 01                   95 	.db #0x01	; 1
   18D8 00                   96 	.db #0x00	; 0
   18D9 00                   97 	.db #0x00	; 0
   18DA                      98 _g_arrows_1:
   18DA 00                   99 	.db #0x00	; 0
   18DB 00                  100 	.db #0x00	; 0
   18DC 02                  101 	.db #0x02	; 2
   18DD 00                  102 	.db #0x00	; 0
   18DE 00                  103 	.db #0x00	; 0
   18DF 00                  104 	.db #0x00	; 0
   18E0 01                  105 	.db #0x01	; 1
   18E1 02                  106 	.db #0x02	; 2
   18E2 00                  107 	.db #0x00	; 0
   18E3 00                  108 	.db #0x00	; 0
   18E4 00                  109 	.db #0x00	; 0
   18E5 03                  110 	.db #0x03	; 3
   18E6 02                  111 	.db #0x02	; 2
   18E7 00                  112 	.db #0x00	; 0
   18E8 00                  113 	.db #0x00	; 0
   18E9 01                  114 	.db #0x01	; 1
   18EA 03                  115 	.db #0x03	; 3
   18EB 03                  116 	.db #0x03	; 3
   18EC 03                  117 	.db #0x03	; 3
   18ED 03                  118 	.db #0x03	; 3
   18EE 03                  119 	.db #0x03	; 3
   18EF 03                  120 	.db #0x03	; 3
   18F0 03                  121 	.db #0x03	; 3
   18F1 03                  122 	.db #0x03	; 3
   18F2 03                  123 	.db #0x03	; 3
   18F3 03                  124 	.db #0x03	; 3
   18F4 03                  125 	.db #0x03	; 3
   18F5 03                  126 	.db #0x03	; 3
   18F6 03                  127 	.db #0x03	; 3
   18F7 03                  128 	.db #0x03	; 3
   18F8 01                  129 	.db #0x01	; 1
   18F9 03                  130 	.db #0x03	; 3
   18FA 03                  131 	.db #0x03	; 3
   18FB 03                  132 	.db #0x03	; 3
   18FC 03                  133 	.db #0x03	; 3
   18FD 00                  134 	.db #0x00	; 0
   18FE 03                  135 	.db #0x03	; 3
   18FF 02                  136 	.db #0x02	; 2
   1900 00                  137 	.db #0x00	; 0
   1901 00                  138 	.db #0x00	; 0
   1902 00                  139 	.db #0x00	; 0
   1903 01                  140 	.db #0x01	; 1
   1904 02                  141 	.db #0x02	; 2
   1905 00                  142 	.db #0x00	; 0
   1906 00                  143 	.db #0x00	; 0
   1907 00                  144 	.db #0x00	; 0
   1908 00                  145 	.db #0x00	; 0
   1909 02                  146 	.db #0x02	; 2
   190A 00                  147 	.db #0x00	; 0
   190B 00                  148 	.db #0x00	; 0
   190C                     149 _g_arrows_2:
   190C 00                  150 	.db #0x00	; 0
   190D 00                  151 	.db #0x00	; 0
   190E 03                  152 	.db #0x03	; 3
   190F 00                  153 	.db #0x00	; 0
   1910 00                  154 	.db #0x00	; 0
   1911 00                  155 	.db #0x00	; 0
   1912 01                  156 	.db #0x01	; 1
   1913 03                  157 	.db #0x03	; 3
   1914 02                  158 	.db #0x02	; 2
   1915 00                  159 	.db #0x00	; 0
   1916 00                  160 	.db #0x00	; 0
   1917 03                  161 	.db #0x03	; 3
   1918 03                  162 	.db #0x03	; 3
   1919 03                  163 	.db #0x03	; 3
   191A 00                  164 	.db #0x00	; 0
   191B 01                  165 	.db #0x01	; 1
   191C 03                  166 	.db #0x03	; 3
   191D 03                  167 	.db #0x03	; 3
   191E 03                  168 	.db #0x03	; 3
   191F 02                  169 	.db #0x02	; 2
   1920 03                  170 	.db #0x03	; 3
   1921 03                  171 	.db #0x03	; 3
   1922 03                  172 	.db #0x03	; 3
   1923 03                  173 	.db #0x03	; 3
   1924 03                  174 	.db #0x03	; 3
   1925 00                  175 	.db #0x00	; 0
   1926 01                  176 	.db #0x01	; 1
   1927 03                  177 	.db #0x03	; 3
   1928 02                  178 	.db #0x02	; 2
   1929 00                  179 	.db #0x00	; 0
   192A 00                  180 	.db #0x00	; 0
   192B 01                  181 	.db #0x01	; 1
   192C 03                  182 	.db #0x03	; 3
   192D 02                  183 	.db #0x02	; 2
   192E 00                  184 	.db #0x00	; 0
   192F 00                  185 	.db #0x00	; 0
   1930 01                  186 	.db #0x01	; 1
   1931 03                  187 	.db #0x03	; 3
   1932 02                  188 	.db #0x02	; 2
   1933 00                  189 	.db #0x00	; 0
   1934 00                  190 	.db #0x00	; 0
   1935 01                  191 	.db #0x01	; 1
   1936 03                  192 	.db #0x03	; 3
   1937 02                  193 	.db #0x02	; 2
   1938 00                  194 	.db #0x00	; 0
   1939 00                  195 	.db #0x00	; 0
   193A 01                  196 	.db #0x01	; 1
   193B 03                  197 	.db #0x03	; 3
   193C 02                  198 	.db #0x02	; 2
   193D 00                  199 	.db #0x00	; 0
   193E                     200 _g_arrows_3:
   193E 00                  201 	.db #0x00	; 0
   193F 01                  202 	.db #0x01	; 1
   1940 03                  203 	.db #0x03	; 3
   1941 02                  204 	.db #0x02	; 2
   1942 00                  205 	.db #0x00	; 0
   1943 00                  206 	.db #0x00	; 0
   1944 01                  207 	.db #0x01	; 1
   1945 03                  208 	.db #0x03	; 3
   1946 02                  209 	.db #0x02	; 2
   1947 00                  210 	.db #0x00	; 0
   1948 00                  211 	.db #0x00	; 0
   1949 01                  212 	.db #0x01	; 1
   194A 03                  213 	.db #0x03	; 3
   194B 02                  214 	.db #0x02	; 2
   194C 00                  215 	.db #0x00	; 0
   194D 00                  216 	.db #0x00	; 0
   194E 01                  217 	.db #0x01	; 1
   194F 03                  218 	.db #0x03	; 3
   1950 02                  219 	.db #0x02	; 2
   1951 00                  220 	.db #0x00	; 0
   1952 00                  221 	.db #0x00	; 0
   1953 01                  222 	.db #0x01	; 1
   1954 03                  223 	.db #0x03	; 3
   1955 02                  224 	.db #0x02	; 2
   1956 00                  225 	.db #0x00	; 0
   1957 03                  226 	.db #0x03	; 3
   1958 03                  227 	.db #0x03	; 3
   1959 03                  228 	.db #0x03	; 3
   195A 03                  229 	.db #0x03	; 3
   195B 03                  230 	.db #0x03	; 3
   195C 01                  231 	.db #0x01	; 1
   195D 03                  232 	.db #0x03	; 3
   195E 03                  233 	.db #0x03	; 3
   195F 03                  234 	.db #0x03	; 3
   1960 02                  235 	.db #0x02	; 2
   1961 00                  236 	.db #0x00	; 0
   1962 03                  237 	.db #0x03	; 3
   1963 03                  238 	.db #0x03	; 3
   1964 03                  239 	.db #0x03	; 3
   1965 00                  240 	.db #0x00	; 0
   1966 00                  241 	.db #0x00	; 0
   1967 01                  242 	.db #0x01	; 1
   1968 03                  243 	.db #0x03	; 3
   1969 02                  244 	.db #0x02	; 2
   196A 00                  245 	.db #0x00	; 0
   196B 00                  246 	.db #0x00	; 0
   196C 00                  247 	.db #0x00	; 0
   196D 03                  248 	.db #0x03	; 3
   196E 00                  249 	.db #0x00	; 0
   196F 00                  250 	.db #0x00	; 0
                            251 	.area _INITIALIZER
                            252 	.area _CABS (ABS)
