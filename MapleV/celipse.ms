{VERSION 1 1 "MS-Windows" "1.0"}{GLOBALS 1 2}{FONT 0 "Arial" "Ari
al" "Helvetica-Bold" 7 10 0 "Helvetica-Bold" 10{COLOR "800080"}}
{FONT 1 "Times New Roman" "Times New Roman" "Times-Bold" 7 11 64 
"Times-Bold" 11{COLOR "000000"}}{FONT 2 "Courier New" "Courier Ne
w" "Courier" 4 10 192 "Courier" 10{COLOR "000000"}}{SCP_R 0 0 103
{SCP_R 1 0 2{INP_R 3 0 "> "{TEXT 0 13 "with(linalg):"}}{OUT_R 6 0
 3{TEXT 2 72 "Warning: new definition for   norm\012Warning: new \+
definition for   trace\012\012"}}}{SCP_R 8 0 5{COM_R 10 0{TEXT 1 
84 "Lectura de archivo y creacion del arreglo en el cual se guard
aran las observaciones."}}{COM_R 13 0{TEXT 1 33 "N\372mero de com
ponentes es igual 3."}}{COM_R 16 0{TEXT 1 0 ""}}{INP_R 19 0 "> "
{TEXT 0 12 "with(stats):"}}{OUT_R 22 0 19{TEXT 2 1 "\012"}}}
{SCP_R 24 0 2{INP_R 26 0 "> "{TEXT 0 29 "NombreArchivo := `datos.
txt`;"}}{OUT_R 29 8192 26{DAG :3n6\`NombreArchivo`n5\`datos.txt`}
}}{SCP_R 31 0 2{INP_R 33 0 "> "{TEXT 0 48 "    line := readline(N
ombreArchivo);# Encabezado"}}{OUT_R 36 8192 33{DAG :3n4\`line`n5\
`c1~`c2~`c3~``}}}{SCP_R 38 0 1{OUT_R 40 0 0{TEXT 2 1 "\012"}}}
{SCP_R 42 0 2{INP_R 44 0 "> "{TEXT 0 36 "    line := readline(Nom
breArchivo);"}}{OUT_R 47 8192 44{DAG :3n4\`line`n5\`0.4~`0.3~`0.3
`}}}{SCP_R 49 0 2{INP_R 51 0 "> "{TEXT 0 17 "    numcaso := 1;"}}
{OUT_R 54 8192 51{DAG :3n4\`numcaso`j2x0001}}}{SCP_R 56 0 2{INP_R
 58 0 "> "{TEXT 0 21 "   while  line <>0 do"}}{OUT_R 61 0 58{TEXT
 2 1 "\012"}}}{SCP_R 63 0 2{INP_R 65 0 "> "{TEXT 0 42 "         t
emp := sscanf(line,`%f %f %f `);"}}{OUT_R 68 0 65{TEXT 2 1 "\012"
}}}{SCP_R 70 0 2{INP_R 72 0 "> "{TEXT 0 63 "         if (temp[1] \+
<>0 and temp[2] <>0 and temp[3] <>0 ) then"}}{OUT_R 75 0 72{TEXT 
2 1 "\012"}}}{SCP_R 77 0 2{INP_R 79 0 "> "{TEXT 0 36 "           \+
  c[1,numcaso]:= temp[1];"}}{OUT_R 82 0 79{TEXT 2 1 "\012"}}}
{SCP_R 84 0 2{INP_R 86 0 "> "{TEXT 0 36 "             c[2,numcaso
]:= temp[2];"}}{OUT_R 89 0 86{TEXT 2 1 "\012"}}}{SCP_R 91 0 2
{INP_R 93 0 "> "{TEXT 0 36 "             c[3,numcaso]:= temp[3];"
}}{OUT_R 96 0 93{TEXT 2 1 "\012"}}}{SCP_R 98 0 2{INP_R 100 0 "> "
{TEXT 0 0 ""}}{OUT_R 103 0 100{TEXT 2 1 "\012"}}}{SCP_R 105 0 2
{INP_R 107 0 "> "{TEXT 0 44 "             observar[numcaso,1] := \+
temp[1];"}}{OUT_R 110 0 107{TEXT 2 1 "\012"}}}{SCP_R 112 0 2
{INP_R 114 0 "> "{TEXT 0 44 "             observar[numcaso,2] := \+
temp[2];"}}{OUT_R 117 0 114{TEXT 2 1 "\012"}}}{SCP_R 119 0 2
{INP_R 121 0 "> "{TEXT 0 44 "             observar[numcaso,3] := \+
temp[3];"}}{OUT_R 124 0 121{TEXT 2 1 "\012"}}}{SCP_R 126 0 2
{INP_R 128 0 "> "{TEXT 0 36 "             numcaso := numcaso + 1;
"}}{OUT_R 131 0 128{TEXT 2 1 "\012"}}}{SCP_R 133 0 2{INP_R 135 0 
"> "{TEXT 0 11 "        fi;"}}{OUT_R 138 0 135{TEXT 2 1 "\012"}}}
{SCP_R 140 0 2{INP_R 142 0 "> "{TEXT 0 45 "             line := r
eadline(NombreArchivo);"}}{OUT_R 145 0 142{TEXT 2 1 "\012"}}}
{SCP_R 147 0 2{INP_R 149 0 "> "{TEXT 0 5 "  od:"}}{OUT_R 152 0 
149{TEXT 2 1 "\012"}}}{SCP_R 154 0 2{INP_R 156 0 "> "{TEXT 0 17 "
n := numcaso - 1;"}}{OUT_R 159 8192 156{DAG :3n3\`n`j2x0006}}}
{SCP_R 161 0 1{OUT_R 163 0 0{TEXT 2 1 "\012"}}}{SCP_R 165 0 2
{INP_R 167 0 "> "{TEXT 0 9 "print(c):"}}{OUT_R 170 8192 167{DAG (
3n4\`TABLE`,2[2,13=3,3j2x0001p9e3j5x4000000000000000i2x0016=3,3j2
x0002p9e3j5x3000000000000000p12=3,3j2x0003p9p19=3,3p9p16pC=3,3p9p
22e3j5x5000000000000000p12=3,3p16p16p2F=3,3p22p16e3j5x10000000000
00000p12=3,3p16p22e3j5x2000000000000000p12=3,3p22p22p19=3,3p9j2x0
004p2F=3,3p16p59p19=3,3p22p59p4A=3,3p9j2x0005e3j5x600000000000000
0p12=3,3p16p69p3F=3,3p22p69p19=3,3p9j2x0006p3F=3,3p16p7Fp4A=3,3p2
2p7Fe3j5x7000000000000000p12}}}{SCP_R 172 0 2{INP_R 174 0 "> "
{TEXT 0 16 "print(observar);"}}{OUT_R 177 8192 174{DAG (3n4\`TABL
E`,2[2,13=3,3j2x0001p9e3j5x4000000000000000i2x0016=3,3j2x0002p9pC
=3,3j2x0003p9e3j5x5000000000000000p12=3,3p9p16e3j5x30000000000000
00p12=3,3p9p1Cp2A=3,3p16p16p1F=3,3p1Cp16e3j5x2000000000000000p12=
3,3p16p1Ce3j5x1000000000000000p12=3,3p1Cp1Cp2A=3,3j2x0004p9p1F=3,
3p58p16p2A=3,3p58p1Cp3F=3,3j2x0005p9e3j5x6000000000000000p12=3,3p
68p16p4A=3,3p68p1Cp2A=3,3j2x0006p9p4A=3,3p7Ep16p3F=3,3p7Ep1Ce3j5x
7000000000000000p12}}}{SCP_R 179 0 2{COM_R 181 0{TEXT 1 0 ""}}
{COM_R 184 0{TEXT 1 0 ""}}}{SCP_R 186 0 1{COM_R 188 0{TEXT 1 0 ""
}}}{SCP_R 190 0 1{COM_R 192 0{TEXT 1 0 ""}}}{SCP_R 194 0 2{INP_R 
196 0 "> "{TEXT 0 20 "tran:=matrix(2,n,0);"}}{OUT_R 199 8192 196
{DAG :3n4\`tran`(3n4\`MATRIX`,2[2,3[2,7j2x0000pDpDpDpDpDpB}}}
{SCP_R 201 0 2{INP_R 203 0 "> "{TEXT 0 5 "i:=1:"}}{OUT_R 206 0 
203{TEXT 2 1 "\012"}}}{SCP_R 208 0 3{COM_R 210 0{TEXT 1 38 "     \+
  Transformaci\363n de Aitchison.   "}}{COM_R 213 0{TEXT 1 79 "  \+
      Se eligi\363 la \372ltima componente como divisor de las ot
ras 2 componentes."}}{COM_R 216 0{TEXT 1 0 ""}}}{SCP_R 218 0 2
{INP_R 220 0 "> "{TEXT 0 16 "numcompo1 := 1: "}}{OUT_R 223 0 220
{TEXT 2 1 "\012"}}}{SCP_R 225 0 2{INP_R 227 0 "> "{TEXT 0 15 "num
compo2 := 2:"}}{OUT_R 230 0 227{TEXT 2 1 "\012"}}}{SCP_R 232 0 2
{INP_R 234 0 "> "{TEXT 0 17 "seleccompo  := 3:"}}{OUT_R 237 0 234
{TEXT 2 1 "\012"}}}{SCP_R 239 0 2{INP_R 241 0 "> "{TEXT 0 13 "for
 i to n do"}}{OUT_R 244 0 241{TEXT 2 1 "\012"}}}{SCP_R 246 0 2
{INP_R 248 0 "> "{TEXT 0 39 "    x1:=c[numcompo1,i]/c[seleccompo,
i]:"}}{OUT_R 251 0 248{TEXT 2 1 "\012"}}}{SCP_R 253 0 2{INP_R 255
 0 "> "{TEXT 0 39 "    x2:=c[numcompo2,i]/c[seleccompo,i]:"}}
{OUT_R 258 0 255{TEXT 2 1 "\012"}}}{SCP_R 260 0 2{INP_R 262 0 "> \+
"{TEXT 0 22 "    tran[1,i]:=ln(x1):"}}{OUT_R 265 0 262{TEXT 2 1 "
\012"}}}{SCP_R 267 0 2{INP_R 269 0 "> "{TEXT 0 22 "    tran[2,i]:
=ln(x2):"}}{OUT_R 272 0 269{TEXT 2 1 "\012"}}}{SCP_R 274 0 2
{INP_R 276 0 "> "{TEXT 0 0 ""}}{OUT_R 279 0 276{TEXT 2 1 "\012"}}
}{SCP_R 281 0 2{INP_R 283 0 "> "{TEXT 0 3 "od:"}}{OUT_R 286 0 283
{TEXT 2 1 "\012"}}}{SCP_R 288 0 2{INP_R 290 0 "> "{TEXT 0 12 "pri
nt(tran);"}}{OUT_R 293 8192 290{DAG (3n4\`MATRIX`,2[2,3[2,7e3j4x0
02876820722i2x0010e3j4x001386294361i2x0009e3j4x005108256240pEe3j4
x009162907319pEe3j4x006931471806pEe3i4x001945910149p15[2,7j2x0000
e3j4x001609437912p15e3i4x004054651081pEe3j4x004054651081pEe3i4x00
1098612289p15e3i4x001252762969p15}}}{SCP_R 295 0 2{COM_R 297 0
{TEXT 1 106 "Luego de realizada la transformacion de Aitchison se
 debe realizar el c\341lculo de los m\351todos estad\355sticos."}
}{COM_R 300 0{TEXT 1 0 ""}}}{SCP_R 302 0 2{INP_R 304 0 "> "{TEXT 
0 13 "with(linalg):"}}{OUT_R 307 0 304{TEXT 2 1 "\012"}}}{SCP_R 
309 0 3{COM_R 311 0{TEXT 1 108 "Define un arreglo, en el cual se \+
guardaran las observaciones de cuatro componentes que fueron tran
sformadas."}}{COM_R 314 0{TEXT 1 0 ""}}{COM_R 317 0{TEXT 1 0 ""}}
}{SCP_R 319 0 2{INP_R 321 0 "> "{TEXT 0 5 "p:=2;"}}{OUT_R 324 
8192 321{DAG :3n3\`p`j2x0002}}}{SCP_R 326 0 2{INP_R 328 0 "> "
{TEXT 0 20 "a:=array(1..p,1..n):"}}{OUT_R 331 0 328{TEXT 2 1 "\01
2"}}}{SCP_R 333 0 2{INP_R 335 0 "> "{TEXT 0 8 "a:=tran:"}}{OUT_R 
338 0 335{TEXT 2 1 "\012"}}}{SCP_R 340 0 2{INP_R 342 0 "> "{TEXT 
0 15 "r:=array(1..p):"}}{OUT_R 345 0 342{TEXT 2 1 "\012"}}}{SCP_R
 347 0 2{INP_R 349 0 "> "{TEXT 0 5 "i:=1;"}}{OUT_R 352 8192 349
{DAG :3n3\`i`j2x0001}}}{SCP_R 354 0 2{COM_R 356 0{TEXT 1 31 "Para
 el caso de dos dimensiones"}}{COM_R 359 0{TEXT 1 57 "Realiza la \+
suma de los vectores almacenados en una matriz"}}}{SCP_R 361 0 1
{COM_R 363 0{TEXT 1 47 "suma de los primeros elementos de los vec
tores."}}}{SCP_R 365 0 2{INP_R 367 0 "> "{TEXT 0 10 "compo1:=0;"}
}{OUT_R 370 8192 367{DAG :3n4\`compo1`j2x0000}}}{SCP_R 372 0 2
{INP_R 374 0 "> "{TEXT 0 40 "for i to n do compo1:=compo1+a[1,i] \+
 od:"}}{OUT_R 377 0 374{TEXT 2 1 "\012"}}}{SCP_R 379 0 2{INP_R 
381 0 "> "{TEXT 0 5 "i:=1;"}}{OUT_R 384 8192 381{DAG :3n3\`i`j2x0
001}}}{SCP_R 386 0 1{COM_R 388 0{TEXT 1 47 "Suma de los segundos \+
elementos de los vectores."}}}{SCP_R 390 0 2{INP_R 392 0 "> "
{TEXT 0 10 "compo2:=0;"}}{OUT_R 395 8192 392{DAG :3n4\`compo2`j2x
0000}}}{SCP_R 397 0 2{INP_R 399 0 "> "{TEXT 0 40 "for i to n do c
ompo2:=compo2+a[2,i]  od:"}}{OUT_R 402 0 399{TEXT 2 1 "\012"}}}
{SCP_R 404 0 2{INP_R 406 0 "> "{TEXT 0 13 "r[1]:=compo1:"}}{OUT_R
 409 0 406{TEXT 2 1 "\012"}}}{SCP_R 411 0 2{INP_R 413 0 "> "{TEXT
 0 13 "r[2]:=compo2:"}}{OUT_R 416 0 413{TEXT 2 1 "\012"}}}{SCP_R 
418 0 2{INP_R 420 0 "> "{TEXT 0 0 ""}}{OUT_R 423 0 420{TEXT 2 1 "
\012"}}}{SCP_R 425 0 2{INP_R 427 0 "> "{TEXT 0 9 "print(r);"}}
{OUT_R 430 8192 427{DAG (3n4\`VECTOR`,2[2,3e3j4x001848329821i2x00
09e3i4x000741937346pC}}}{SCP_R 432 0 2{INP_R 434 0 "> "{TEXT 0 38
 "prom:=matrix(p,1,[1/n*r[1],1/n*r[2]]);"}}{OUT_R 437 8192 434
{DAG :3n4\`prom`(3n4\`MATRIX`,2[2,3[2,2e3j4x003080549702i2x0010[2
,2e3i4x001236562244p12}}}{SCP_R 439 0 2{INP_R 441 0 "> "{TEXT 0 
18 "convert(a,matrix);"}}{OUT_R 444 8192 441{DAG (3n4\`MATRIX`,2[
2,3[2,7e3j4x002876820722i2x0010e3j4x001386294361i2x0009e3j4x00510
8256240pEe3j4x009162907319pEe3j4x006931471806pEe3i4x001945910149p
15[2,7j2x0000e3j4x001609437912p15e3i4x004054651081pEe3j4x00405465
1081pEe3i4x001098612289p15e3i4x001252762969p15}}}{SCP_R 446 0 2
{INP_R 448 0 "> "{TEXT 0 27 "promme:=scalarmul(prom,-1);"}}{OUT_R
 451 8192 448{DAG :3n4\`promme`(3n4\`MATRIX`,2[2,3[2,2e3i4x003080
549702i2x0010[2,2e3j4x001236562244p12}}}{SCP_R 453 0 2{INP_R 455 
0 "> "{TEXT 0 5 "j:=1;"}}{OUT_R 458 8192 455{DAG :3n3\`j`j2x0001}
}}{SCP_R 460 0 2{INP_R 462 0 "> "{TEXT 0 21 "total:=matrix(p,p,0)
;"}}{OUT_R 465 8192 462{DAG :3n4\`total`(3n4\`MATRIX`,2[2,3[2,3j2
x0000pDpB}}}{SCP_R 467 0 2{INP_R 469 0 "> "{TEXT 0 21 "resta:=mat
rix(p,1,0);"}}{OUT_R 472 8192 469{DAG :3n4\`resta`(3n4\`MATRIX`,2
[2,3[2,2j2x0000pB}}}{SCP_R 474 0 2{INP_R 476 0 "> "{TEXT 0 24 "mu
ltipli:=matrix(p,p,0);"}}{OUT_R 479 8192 476{DAG :3n5\`multipli`(
3n4\`MATRIX`,2[2,3[2,3j2x0000pEpC}}}{SCP_R 481 0 2{INP_R 483 0 ">
 "{TEXT 0 13 "for j to n do"}}{OUT_R 486 0 483{TEXT 2 1 "\012"}}}
{SCP_R 488 0 2{INP_R 490 0 "> "{TEXT 0 14 "obs:=col(a,j);"}}
{OUT_R 493 0 490{TEXT 2 1 "\012"}}}{SCP_R 495 0 2{INP_R 497 0 "> \+
"{TEXT 0 24 " resta:=add(obs,promme);"}}{OUT_R 500 0 497{TEXT 2 1
 "\012"}}}{SCP_R 502 0 2{INP_R 504 0 "> "{TEXT 0 17 "transpose(re
sta);"}}{OUT_R 507 0 504{TEXT 2 1 "\012"}}}{SCP_R 509 0 2{INP_R 
511 0 "> "{TEXT 0 43 "multipli:=multiply(resta,transpose(resta));
"}}{OUT_R 514 0 511{TEXT 2 1 "\012"}}}{SCP_R 516 0 2{INP_R 518 0 
"> "{TEXT 0 31 "    total:=add(total,multipli);"}}{OUT_R 521 0 
518{TEXT 2 1 "\012"}}}{SCP_R 523 0 2{INP_R 525 0 "> "{TEXT 0 3 "o
d:"}}{OUT_R 528 0 525{TEXT 2 1 "\012"}}}{SCP_R 530 0 2{INP_R 532 
0 "> "{TEXT 0 13 "print(total);"}}{OUT_R 535 8192 532{DAG (3n4\`M
ATRIX`,2[2,3[2,3e3j4x006802736688i2x0009e3j4x004300378308pE[2,3p1
0e3j4x005603713148pE}}}{SCP_R 537 0 2{INP_R 539 0 "> "{TEXT 0 17 
"s:=matrix(p,p,0);"}}{OUT_R 542 8192 539{DAG :3n3\`s`(3n4\`MATRIX
`,2[2,3[2,3j2x0000pCpA}}}{SCP_R 544 0 2{INP_R 546 0 "> "{TEXT 0 
30 "s:=scalarmul(total,(1/(n-1)));"}}{OUT_R 549 8192 546{DAG :3n3
\`s`(3n4\`MATRIX`,2[2,3[2,3e3j4x001360547338i2x0009e3j4x008600756
616i2x0010[2,3p13e3j4x001120742630p11}}}{SCP_R 551 0 1{COM_R 553 
0{TEXT 1 78 "NOTA : Si el determinante de la matriz es cero , dic
ha matriz no tiene inversa"}}}{SCP_R 555 0 2{INP_R 557 0 "> "
{TEXT 0 7 "det(s);"}}{OUT_R 560 8192 557{DAG e3j4x007850932583i2x
0010}}}{SCP_R 562 0 2{INP_R 564 0 "> "{TEXT 0 20 "invS:=matrix(p,
p,0);"}}{OUT_R 567 8192 564{DAG :3n4\`invS`(3n4\`MATRIX`,2[2,3[2,
3j2x0000pDpB}}}{SCP_R 569 0 2{INP_R 571 0 "> "{TEXT 0 17 "invS:=i
nverse(s);"}}{OUT_R 574 8192 571{DAG :3n4\`invS`(3n4\`MATRIX`,2[2
,3[2,3e3j4x001427528027i2x0009e3i4x001095507639p12[2,3p14e3j4x001
732975444p12}}}{SCP_R 576 0 2{INP_R 578 0 "> "{TEXT 0 12 "with(st
ats):"}}{OUT_R 581 0 578{TEXT 2 1 "\012"}}}{SCP_R 583 0 2{INP_R 
585 0 "> "{TEXT 0 47 "f:=stats[statevalf,icdf,fratio[p,(n-p)]](.9
95);"}}{OUT_R 588 8192 585{DAG :3n3\`f`e3j4x002628427125i2x0008}}
}{SCP_R 590 0 2{INP_R 592 0 "> "{TEXT 0 17 "u:=matrix(p,1,0);"}}
{OUT_R 595 8192 592{DAG :3n3\`u`(3n4\`MATRIX`,2[2,3[2,2j2x0000pA}
}}{SCP_R 597 0 2{INP_R 599 0 "> "{TEXT 0 10 "u[1,1]:=x;"}}{OUT_R 
602 8192 599{DAG :3b3n3\`u`,3j2x0001p5n3\`x`}}}{SCP_R 604 0 2
{INP_R 606 0 "> "{TEXT 0 10 "u[2,1]:=y;"}}{OUT_R 609 8192 606{DAG
 :3b3n3\`u`,3j2x0002j2x0001n3\`y`}}}{SCP_R 611 0 2{INP_R 613 0 ">
 "{TEXT 0 11 "#u[3,1]:=z;"}}{OUT_R 616 0 613{TEXT 2 1 "\012"}}}
{SCP_R 618 0 2{INP_R 620 0 "> "{TEXT 0 25 "nro:=((p*(n-1))/(n-p))
*f;"}}{OUT_R 623 8192 620{DAG :3n3\`nro`e3j4x006571067813i2x0008}
}}{SCP_R 625 0 2{INP_R 627 0 "> "{TEXT 0 24 "resta2:=scalarmul(u,
-1);"}}{OUT_R 630 8192 627{DAG :3n4\`resta2`(3n4\`MATRIX`,2[2,3[2
,2+3n3\`x`i2x0001[2,2+3n3\`y`p10}}}{SCP_R 632 0 2{INP_R 634 0 "> \+
"{TEXT 0 80 "var1:=multiply(multiply(n*transpose(add(prom,resta2)
),invS),(add(prom,resta2)));"}}{OUT_R 637 8192 634{DAG :3n4\`var1
`(3n4\`MATRIX`,2[2,2[2,2+De3j4x001472581244i2x0009j2x0001n3\`x`e3
i4x006902681308p13*3p17j2x0002e3j4x008565168162p13n3\`y`e3j4x0066
21237281p13*5p29p15p17p15e3i4x001314609167i2x0008*3p29p21e3j4x001
039785266p3B}}}{SCP_R 639 0 2{INP_R 641 0 "> "{TEXT 0 14 "nro=var
1[1,1];"}}{OUT_R 644 8192 641{DAG =3e3j4x006571067813i2x0008+De3j
4x001472581244i2x0009j2x0001n3\`x`e3i4x006902681308pE*3p12j2x0002
e3j4x008565168162pEn3\`y`e3j4x006621237281pE*5p24p10p12p10e3i4x00
1314609167p6*3p24p1Ce3j4x001039785266p6}}}{SCP_R 646 0 1{COM_R 
648 0{TEXT 1 35 "Calculo de la ecuacion de la elipse"}}}{SCP_R 
650 0 2{INP_R 652 0 "> "{TEXT 0 19 "equ:=var1[1,1]-nro;"}}{OUT_R 
655 8192 652{DAG :3n3\`equ`+De3i4x006423809689i2x0008j2x0001n3\`x
`e3i4x006902681308i2x0009*3pDj2x0002e3j4x008565168162p14n3\`y`e3j
4x006621237281p14*5p20pBpDpBe3i4x001314609167p9*3p20p18e3j4x00103
9785266p9}}}{SCP_R 657 0 3{COM_R 659 0{TEXT 1 52 "Obteniendo coef
icientes de la ecuaci\363n de la elipse."}}{COM_R 662 0{TEXT 1 54
 "Teniendo la ecuaci\363n general de la elipse de la forma "}}
{COM_R 665 0{TEXT 1 30 "     a*x^2+b*y^2+d*x+e*y+f = 0"}}}{SCP_R 
667 0 2{INP_R 669 0 "> "{TEXT 0 18 "a:=coeff(equ,x,2);"}}{OUT_R 
672 8192 669{DAG :3n3\`a`e3j4x008565168162i2x0009}}}{SCP_R 674 0 
2{INP_R 676 0 "> "{TEXT 0 18 "b:=coeff(equ,y,2);"}}{OUT_R 679 
8192 676{DAG :3n3\`b`e3j4x001039785266i2x0008}}}{SCP_R 681 0 2
{INP_R 683 0 "> "{TEXT 0 30 "c:=coeff(coeff(equ, x,1),y,1);"}}
{OUT_R 686 8192 683{DAG :3n3\`c`e3i4x001314609167i2x0008}}}{SCP_R
 688 0 2{INP_R 690 0 "> "{TEXT 0 27 "d:=tcoeff(coeff(equ, x,1));"
}}{OUT_R 693 8192 690{DAG :3n3\`d`e3i4x006902681308i2x0009}}}
{SCP_R 695 0 2{INP_R 697 0 "> "{TEXT 0 26 "e:=tcoeff(coeff(equ,y,
1));"}}{OUT_R 700 8192 697{DAG :3n3\`e`e3j4x006621237281i2x0009}}
}{SCP_R 702 0 2{INP_R 704 0 "> "{TEXT 0 15 "f:=tcoeff(equ);"}}
{OUT_R 707 8192 704{DAG :3n3\`f`e3i4x006423809689i2x0008}}}{SCP_R
 709 0 1{INP_R 711 0 "> "{TEXT 0 0 ""}}}}{END}
