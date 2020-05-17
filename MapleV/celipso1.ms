{VERSION 1 1 "MS-Windows" "1.0"}{GLOBALS 1 2}{FONT 0 "Arial" "Ari
al" "Helvetica-Bold" 7 12 0 "Helvetica-Bold" 12{COLOR "800080"}}
{FONT 1 "Times New Roman" "Times New Roman" "Times-Bold" 7 14 64 
"Times-Bold" 14{COLOR "000000"}}{FONT 2 "Courier New" "Courier Ne
w" "Courier" 4 11 192 "Courier" 11{COLOR "000000"}}{SCP_R 0 0 136
{SCP_R 1 0 2{INP_R 3 0 "> "{TEXT 0 13 "with(linalg):"}}{OUT_R 6 0
 3{TEXT 2 72 "Warning: new definition for   norm\012Warning: new \+
definition for   trace\012\012"}}}{SCP_R 8 0 2{INP_R 10 0 "> "
{TEXT 0 12 "with(stats):"}}{OUT_R 13 0 10{TEXT 2 1 "\012"}}}
{SCP_R 15 0 1{COM_R 17 0{TEXT 1 128 "      \241\241\241\241\241 A
tencion :   El archivo leido no debe tener identificadores !!!!  \+
          y el n\372mero de componentes es igual a 4."}}}{SCP_R 
19 0 2{INP_R 21 0 "> "{TEXT 0 29 "NombreArchivo := `casos.txt`;"}
}{OUT_R 24 8192 21{DAG :3n6\`NombreArchivo`n5\`casos.txt`}}}
{SCP_R 26 0 2{INP_R 28 0 "> "{TEXT 0 54 "    line := readline(Nom
breArchivo);#saltar encabezado"}}{OUT_R 31 0 28{TEXT 2 48 "Error,
 cannot open file casos.txt for readline\012\012"}}}{SCP_R 33 0 2
{INP_R 35 0 "> "{TEXT 0 36 "    line := readline(NombreArchivo);"
}}{OUT_R 38 0 35{TEXT 2 48 "Error, cannot open file casos.txt for
 readline\012\012"}}}{SCP_R 40 0 2{INP_R 42 0 "> "{TEXT 0 17 "   \+
 numcaso := 1;"}}{OUT_R 45 8192 42{DAG :3n4\`numcaso`j2x0001}}}
{SCP_R 47 0 2{INP_R 49 0 "> "{TEXT 0 21 "   while  line <>0 do"}}
{OUT_R 52 0 49{TEXT 2 1 "\012"}}}{SCP_R 54 0 2{INP_R 56 0 "> "
{TEXT 0 44 "         temp := sscanf(line,`%f %f %f %f`);"}}{OUT_R
 59 0 56{TEXT 2 1 "\012"}}}{SCP_R 61 0 2{INP_R 63 0 "> "{TEXT 0 
74 "         if (temp[1]<>0 and temp[2]<>0 and temp[3]<>0 and tem
p[4]<>0) then"}}{OUT_R 66 0 63{TEXT 2 1 "\012"}}}{SCP_R 68 0 2
{INP_R 70 0 "> "{TEXT 0 36 "             c[1,numcaso]:= temp[1];"
}}{OUT_R 73 0 70{TEXT 2 1 "\012"}}}{SCP_R 75 0 2{INP_R 77 0 "> "
{TEXT 0 36 "             c[2,numcaso]:= temp[2];"}}{OUT_R 80 0 77
{TEXT 2 1 "\012"}}}{SCP_R 82 0 2{INP_R 84 0 "> "{TEXT 0 36 "     \+
        c[3,numcaso]:= temp[3];"}}{OUT_R 87 0 84{TEXT 2 1 "\012"}
}}{SCP_R 89 0 2{INP_R 91 0 "> "{TEXT 0 36 "             c[4,numca
so]:= temp[4];"}}{OUT_R 94 0 91{TEXT 2 1 "\012"}}}{SCP_R 96 0 2
{INP_R 98 0 "> "{TEXT 0 44 "             observar[numcaso,1] := t
emp[1];"}}{OUT_R 101 0 98{TEXT 2 1 "\012"}}}{SCP_R 103 0 2{INP_R 
105 0 "> "{TEXT 0 44 "             observar[numcaso,2] := temp[2]
;"}}{OUT_R 108 0 105{TEXT 2 1 "\012"}}}{SCP_R 110 0 2{INP_R 112 0
 "> "{TEXT 0 44 "             observar[numcaso,3] := temp[3];"}}
{OUT_R 115 0 112{TEXT 2 1 "\012"}}}{SCP_R 117 0 2{INP_R 119 0 "> \+
"{TEXT 0 44 "             observar[numcaso,4] := temp[4];"}}
{OUT_R 122 0 119{TEXT 2 1 "\012"}}}{SCP_R 124 0 2{INP_R 126 0 "> \+
"{TEXT 0 36 "             numcaso := numcaso + 1;"}}{OUT_R 129 0 
126{TEXT 2 1 "\012"}}}{SCP_R 131 0 2{INP_R 133 0 "> "{TEXT 0 13 "
          fi;"}}{OUT_R 136 0 133{TEXT 2 1 "\012"}}}{SCP_R 138 0 2
{INP_R 140 0 "> "{TEXT 0 45 "             line := readline(Nombre
Archivo);"}}{OUT_R 143 0 140{TEXT 2 1 "\012"}}}{SCP_R 145 0 2
{INP_R 147 0 "> "{TEXT 0 5 "  od:"}}{OUT_R 150 0 147{TEXT 2 48 "E
rror, cannot open file casos.txt for readline\012\012"}}}{SCP_R 
152 0 2{INP_R 154 0 "> "{TEXT 0 17 "n := numcaso - 1;"}}{OUT_R 
157 8192 154{DAG :3n3\`n`j2x0000}}}{SCP_R 159 0 1{OUT_R 161 0 0
{TEXT 2 1 "\012"}}}{SCP_R 163 0 2{INP_R 165 0 "> "{TEXT 0 9 "prin
t(c):"}}{OUT_R 168 8192 165{DAG n3\`c`}}}{SCP_R 170 0 3{COM_R 172
 0{TEXT 1 11 "           "}}{COM_R 175 0{TEXT 1 20 "             \+
       "}}{COM_R 178 0{TEXT 1 100 "                              \+
       A continuaci\363n est\341n las observaciones leidas desde \+
el archivo."}}}{SCP_R 180 0 1{COM_R 182 0{TEXT 1 0 ""}}}{SCP_R 
184 0 2{INP_R 186 0 "> "{TEXT 0 16 "print(observar);"}}{OUT_R 189
 8192 186{DAG n5\`observar`}}}{SCP_R 191 0 3{COM_R 193 0{TEXT 1 0
 ""}}{COM_R 196 0{TEXT 1 0 ""}}{COM_R 199 0{TEXT 1 0 ""}}}{SCP_R 
201 0 2{COM_R 203 0{TEXT 1 64 "                                  \+
  Transformaci\363n de Aitchison."}}{COM_R 206 0{TEXT 1 66 "     \+
                                    Se elige la componente 4."}}}
{SCP_R 208 0 1{COM_R 210 0{TEXT 1 0 ""}}}{SCP_R 212 0 2{INP_R 214
 0 "> "{TEXT 0 20 "tran:=matrix(3,n,0):"}}{OUT_R 217 0 214{TEXT 2
 82 "Error, (in matrix) \0121st and 2nd arguments (dimensions) mu
st be positive integers\012\012"}}}{SCP_R 219 0 2{INP_R 221 0 "> \+
"{TEXT 0 16 "seleccompo := 4;"}}{OUT_R 224 8192 221{DAG :3n5\`sel
eccompo`j2x0004}}}{SCP_R 226 0 2{INP_R 228 0 "> "{TEXT 0 5 "i:=1:
"}}{OUT_R 231 0 228{TEXT 2 1 "\012"}}}{SCP_R 233 0 2{INP_R 235 0 
"> "{TEXT 0 13 "for i to n do"}}{OUT_R 238 0 235{TEXT 2 1 "\012"}
}}{SCP_R 240 0 2{INP_R 242 0 "> "{TEXT 0 31 "    x1:=c[1,i]/c[sel
eccompo,i]:"}}{OUT_R 245 0 242{TEXT 2 1 "\012"}}}{SCP_R 247 0 2
{INP_R 249 0 "> "{TEXT 0 31 "    x2:=c[2,i]/c[seleccompo,i]:"}}
{OUT_R 252 0 249{TEXT 2 1 "\012"}}}{SCP_R 254 0 2{INP_R 256 0 "> \+
"{TEXT 0 32 "     x3:=c[3,i]/c[seleccompo,i]:"}}{OUT_R 259 0 256
{TEXT 2 1 "\012"}}}{SCP_R 261 0 2{INP_R 263 0 "> "{TEXT 0 22 "   \+
 tran[1,i]:=ln(x1):"}}{OUT_R 266 0 263{TEXT 2 1 "\012"}}}{SCP_R 
268 0 2{INP_R 270 0 "> "{TEXT 0 22 "    tran[2,i]:=ln(x2):"}}
{OUT_R 273 0 270{TEXT 2 1 "\012"}}}{SCP_R 275 0 2{INP_R 277 0 "> \+
"{TEXT 0 23 "    tran[3,i ]:=ln(x3):"}}{OUT_R 280 0 277{TEXT 2 1 
"\012"}}}{SCP_R 282 0 2{INP_R 284 0 "> "{TEXT 0 3 "od:"}}{OUT_R 
287 0 284{TEXT 2 1 "\012"}}}{SCP_R 289 0 2{INP_R 291 0 "> "{TEXT 
0 12 "print(tran):"}}{OUT_R 294 8192 291{DAG n4\`tran`}}}{SCP_R 
296 0 2{COM_R 298 0{TEXT 1 106 "Luego de realizada la transformac
ion de Aitchison se debe realizar el c\341lculo de los m\351todos
 estad\355sticos."}}{COM_R 301 0{TEXT 1 0 ""}}}{SCP_R 303 0 2
{INP_R 305 0 "> "{TEXT 0 13 "with(linalg):"}}{OUT_R 308 0 305
{TEXT 2 1 "\012"}}}{SCP_R 310 0 3{COM_R 312 0{TEXT 1 108 "Define \+
un arreglo, en el cual se guardaran las observaciones de cuatro c
omponentes que fueron transformadas."}}{COM_R 315 0{TEXT 1 0 ""}}
{COM_R 318 0{TEXT 1 0 ""}}}{SCP_R 320 0 2{INP_R 322 0 "> "{TEXT 0
 5 "p:=3;"}}{OUT_R 325 8192 322{DAG :3n3\`p`j2x0003}}}{SCP_R 327 
0 2{INP_R 329 0 "> "{TEXT 0 20 "a:=array(1..p,1..n):"}}{OUT_R 332
 0 329{TEXT 2 50 "Error, lower>upper bound in array/table creatio
n\012\012"}}}{SCP_R 334 0 2{INP_R 336 0 "> "{TEXT 0 8 "a:=tran:"}
}{OUT_R 339 0 336{TEXT 2 1 "\012"}}}{SCP_R 341 0 2{INP_R 343 0 ">
 "{TEXT 0 15 "r:=array(1..p):"}}{OUT_R 346 0 343{TEXT 2 1 "\012"}
}}{SCP_R 348 0 2{INP_R 350 0 "> "{TEXT 0 5 "i:=1;"}}{OUT_R 353 
8192 350{DAG :3n3\`i`j2x0001}}}{SCP_R 355 0 2{COM_R 357 0{TEXT 1 
32 "Para el caso de tres dimensiones"}}{COM_R 360 0{TEXT 1 57 "Re
aliza la suma de los vectores almacenados en una matriz"}}}{SCP_R
 362 0 1{COM_R 364 0{TEXT 1 47 "suma de los primeros elementos de
 los vectores."}}}{SCP_R 366 0 2{INP_R 368 0 "> "{TEXT 0 10 "comp
o1:=0;"}}{OUT_R 371 8192 368{DAG :3n4\`compo1`j2x0000}}}{SCP_R 
373 0 2{INP_R 375 0 "> "{TEXT 0 40 "for i to n do compo1:=compo1+
a[1,i]  od:"}}{OUT_R 378 0 375{TEXT 2 1 "\012"}}}{SCP_R 380 0 2
{INP_R 382 0 "> "{TEXT 0 5 "i:=1;"}}{OUT_R 385 8192 382{DAG :3n3\
`i`j2x0001}}}{SCP_R 387 0 1{COM_R 389 0{TEXT 1 47 "Suma de los se
gundos elementos de los vectores."}}}{SCP_R 391 0 2{INP_R 393 0 "
> "{TEXT 0 10 "compo2:=0;"}}{OUT_R 396 8192 393{DAG :3n4\`compo2`
j2x0000}}}{SCP_R 398 0 2{INP_R 400 0 "> "{TEXT 0 40 "for i to n d
o compo2:=compo2+a[2,i]  od:"}}{OUT_R 403 0 400{TEXT 2 1 "\012"}}
}{SCP_R 405 0 1{COM_R 407 0{TEXT 1 47 "Suma de los terceros eleme
ntos de los vectores."}}}{SCP_R 409 0 2{INP_R 411 0 "> "{TEXT 0 
10 "compo3:=0;"}}{OUT_R 414 8192 411{DAG :3n4\`compo3`j2x0000}}}
{SCP_R 416 0 2{INP_R 418 0 "> "{TEXT 0 40 "for i to n do compo3:=
compo3+a[3,i]  od:"}}{OUT_R 421 0 418{TEXT 2 1 "\012"}}}{SCP_R 
423 0 1{COM_R 425 0{TEXT 1 64 "en el resultado seran tres element
os ya que son tres dimensiones"}}}{SCP_R 427 0 2{INP_R 429 0 "> "
{TEXT 0 13 "r[1]:=compo1:"}}{OUT_R 432 0 429{TEXT 2 1 "\012"}}}
{SCP_R 434 0 2{INP_R 436 0 "> "{TEXT 0 13 "r[2]:=compo2:"}}{OUT_R
 439 0 436{TEXT 2 1 "\012"}}}{SCP_R 441 0 2{INP_R 443 0 "> "{TEXT
 0 13 "r[3]:=compo3:"}}{OUT_R 446 0 443{TEXT 2 1 "\012"}}}{SCP_R 
448 0 2{INP_R 450 0 "> "{TEXT 0 9 "print(r);"}}{OUT_R 453 8192 
450{DAG (3n4\`VECTOR`,2[2,4j2x0000p7p7}}}{SCP_R 455 0 3{COM_R 457
 0{TEXT 1 0 ""}}{COM_R 460 0{TEXT 1 41 "                  Obtenci
\363n del promedio."}}{COM_R 463 0{TEXT 1 0 ""}}}{SCP_R 465 0 2
{INP_R 467 0 "> "{TEXT 0 47 "prom:=matrix(p,1,[1/n*r[1],1/n*r[2],
1/n*r[3]]);"}}{OUT_R 470 0 467{TEXT 2 25 "Error, division by zero
\012\012"}}}{SCP_R 472 0 2{INP_R 474 0 "> "{TEXT 0 18 "convert(a,
matrix):"}}{OUT_R 477 0 474{TEXT 2 52 "Error, (in convert/matrix)
 expecting array or list\012\012"}}}{SCP_R 479 0 2{INP_R 481 0 ">
 "{TEXT 0 27 "promme:=scalarmul(prom,-1);"}}{OUT_R 484 0 481{TEXT
 2 57 "Error, (in scalarmul) wrong number or type of arguments\01
2\012"}}}{SCP_R 486 0 2{INP_R 488 0 "> "{TEXT 0 5 "j:=1;"}}{OUT_R
 491 8192 488{DAG :3n3\`j`j2x0001}}}{SCP_R 493 0 2{INP_R 495 0 ">
 "{TEXT 0 21 "total:=matrix(p,p,0);"}}{OUT_R 498 8192 495{DAG :3n
4\`total`(3n4\`MATRIX`,2[2,4[2,4j2x0000pDpDpBpB}}}{SCP_R 500 0 2
{INP_R 502 0 "> "{TEXT 0 21 "resta:=matrix(p,1,0);"}}{OUT_R 505 
8192 502{DAG :3n4\`resta`(3n4\`MATRIX`,2[2,4[2,2j2x0000pBpB}}}
{SCP_R 507 0 2{INP_R 509 0 "> "{TEXT 0 24 "multipli:=matrix(p,p,0
);"}}{OUT_R 512 8192 509{DAG :3n5\`multipli`(3n4\`MATRIX`,2[2,4[2
,4j2x0000pEpEpCpC}}}{SCP_R 514 0 2{INP_R 516 0 "> "{TEXT 0 13 "fo
r j to n do"}}{OUT_R 519 0 516{TEXT 2 1 "\012"}}}{SCP_R 521 0 2
{INP_R 523 0 "> "{TEXT 0 14 "obs:=col(a,j);"}}{OUT_R 526 0 523
{TEXT 2 1 "\012"}}}{SCP_R 528 0 2{INP_R 530 0 "> "{TEXT 0 24 " re
sta:=add(obs,promme);"}}{OUT_R 533 0 530{TEXT 2 1 "\012"}}}{SCP_R
 535 0 2{INP_R 537 0 "> "{TEXT 0 17 "transpose(resta);"}}{OUT_R 
540 0 537{TEXT 2 1 "\012"}}}{SCP_R 542 0 2{INP_R 544 0 "> "{TEXT 
0 43 "multipli:=multiply(resta,transpose(resta));"}}{OUT_R 547 0 
544{TEXT 2 1 "\012"}}}{SCP_R 549 0 2{INP_R 551 0 "> "{TEXT 0 31 "
    total:=add(total,multipli);"}}{OUT_R 554 0 551{TEXT 2 1 "\012
"}}}{SCP_R 556 0 2{INP_R 558 0 "> "{TEXT 0 3 "od:"}}{OUT_R 561 0 
558{TEXT 2 1 "\012"}}}{SCP_R 563 0 2{INP_R 565 0 "> "{TEXT 0 13 "
print(total);"}}{OUT_R 568 8192 565{DAG (3n4\`MATRIX`,2[2,4[2,4j2
x0000p9p9p7p7}}}{SCP_R 570 0 2{INP_R 572 0 "> "{TEXT 0 17 "s:=mat
rix(p,p,0);"}}{OUT_R 575 8192 572{DAG :3n3\`s`(3n4\`MATRIX`,2[2,4
[2,4j2x0000pCpCpApA}}}{SCP_R 577 0 2{INP_R 579 0 "> "{TEXT 0 30 "
s:=scalarmul(total,(1/(n-1)));"}}{OUT_R 582 8192 579{DAG :3n3\`s`
(3n4\`MATRIX`,2[2,4[2,4j2x0000pCpCpApA}}}{SCP_R 584 0 1{COM_R 586
 0{TEXT 1 78 "NOTA : Si el determinante de la matriz es cero , di
cha matriz no tiene inversa"}}}{SCP_R 588 0 2{INP_R 590 0 "> "
{TEXT 0 7 "det(s);"}}{OUT_R 593 8192 590{DAG j2x0000}}}{SCP_R 595
 0 2{INP_R 597 0 "> "{TEXT 0 20 "invS:=matrix(p,p,0);"}}{OUT_R 
600 8192 597{DAG :3n4\`invS`(3n4\`MATRIX`,2[2,4[2,4j2x0000pDpDpBp
B}}}{SCP_R 602 0 2{INP_R 604 0 "> "{TEXT 0 17 "invS:=inverse(s);"
}}{OUT_R 607 0 604{TEXT 2 37 "Error, (in inverse) singular matrix
\012\012"}}}{SCP_R 609 0 2{INP_R 611 0 "> "{TEXT 0 12 "with(stats
):"}}{OUT_R 614 0 611{TEXT 2 1 "\012"}}}{SCP_R 616 0 2{INP_R 618 
0 "> "{TEXT 0 47 "f:=stats[statevalf,icdf,fratio[p,(n-p)]](.995);
"}}{OUT_R 621 0 618{TEXT 2 130 "Error, (in stats/abort) [[stats[s
tatevalf,icdf,fratio[3,-3]], \012degrees of freedom must be a pos
itive integers, received, 3, -3]]\012\012"}}}{SCP_R 623 0 2{INP_R
 625 0 "> "{TEXT 0 17 "u:=matrix(p,1,0);"}}{OUT_R 628 8192 625
{DAG :3n3\`u`(3n4\`MATRIX`,2[2,4[2,2j2x0000pApA}}}{SCP_R 630 0 2
{INP_R 632 0 "> "{TEXT 0 10 "u[1,1]:=x;"}}{OUT_R 635 8192 632{DAG
 :3b3n3\`u`,3j2x0001p5n3\`x`}}}{SCP_R 637 0 2{INP_R 639 0 "> "
{TEXT 0 10 "u[2,1]:=y;"}}{OUT_R 642 8192 639{DAG :3b3n3\`u`,3j2x0
002j2x0001n3\`y`}}}{SCP_R 644 0 2{INP_R 646 0 "> "{TEXT 0 10 "u[3
,1]:=z;"}}{OUT_R 649 8192 646{DAG :3b3n3\`u`,3j2x0003j2x0001n3\`z
`}}}{SCP_R 651 0 2{INP_R 653 0 "> "{TEXT 0 25 "nro:=((p*(n-1))/(n
-p))*f;"}}{OUT_R 656 8192 653{DAG :3n3\`nro`n3\`f`}}}{SCP_R 658 0
 2{INP_R 660 0 "> "{TEXT 0 24 "resta2:=scalarmul(u,-1);"}}{OUT_R 
663 8192 660{DAG :3n4\`resta2`(3n4\`MATRIX`,2[2,4[2,2+3n3\`x`i2x0
001[2,2+3n3\`y`p10[2,2+3n3\`z`p10}}}{SCP_R 665 0 2{INP_R 667 0 ">
 "{TEXT 0 80 "var1:=multiply(multiply(n*transpose(add(prom,resta2
)),invS),(add(prom,resta2)));"}}{OUT_R 670 0 667{TEXT 2 47 "Error
, (in add) expecting matrices or vectors\012\012"}}}{SCP_R 672 0 
2{INP_R 674 0 "> "{TEXT 0 14 "nro=var1[1,1];"}}{OUT_R 677 8192 
674{DAG =3n3\`f`b3n4\`var1`,3j2x0001p8}}}{SCP_R 679 0 1{COM_R 681
 0{TEXT 1 38 "Calculo de la ecuacion de la elipsoide"}}}{SCP_R 
683 0 2{INP_R 685 0 "> "{TEXT 0 19 "equ:=var1[1,1]-nro;"}}{OUT_R 
688 8192 685{DAG :3n3\`equ`+5b3n4\`var1`,3j2x0001p9p9n3\`f`i2x000
1}}}{SCP_R 690 0 3{COM_R 692 0{TEXT 1 53 "Obteniendo coeficientes
 de la ecuaci\363n del elipsoide."}}{COM_R 695 0{TEXT 1 54 "Tenie
ndo la ecuaci\363n general de la elipse de la forma "}}{COM_R 698
 0{TEXT 1 56 "     a*x^2+b*y^2+c*z^2+d*x*y+e*x*z+f*z*y+g*x+h*y+i*
z+j=0"}}}{SCP_R 700 0 2{INP_R 702 0 "> "{TEXT 0 18 "a:=coeff(equ,
x,2);"}}{OUT_R 705 8192 702{DAG :3n3\`a`j2x0000}}}{SCP_R 707 0 2
{INP_R 709 0 "> "{TEXT 0 18 "b:=coeff(equ,y,2);"}}{OUT_R 712 8192
 709{DAG :3n3\`b`j2x0000}}}{SCP_R 714 0 2{INP_R 716 0 "> "{TEXT 0
 18 "c:=coeff(equ,z,2);"}}{OUT_R 719 8192 716{DAG :3n3\`c`j2x0000
}}}{SCP_R 721 0 2{INP_R 723 0 "> "{TEXT 0 30 "d:=coeff(coeff(equ,
 x,1),y,1);"}}{OUT_R 726 8192 723{DAG :3n3\`d`j2x0000}}}{SCP_R 
728 0 2{INP_R 730 0 "> "{TEXT 0 30 "e:=coeff(coeff(equ, x,1),z,1)
;"}}{OUT_R 733 8192 730{DAG :3n3\`e`j2x0000}}}{SCP_R 735 0 2
{INP_R 737 0 "> "{TEXT 0 27 "f:=coeff(coeff(equ,y,1),z);"}}{OUT_R
 740 8192 737{DAG :3n3\`f`j2x0000}}}{SCP_R 742 0 2{INP_R 744 0 ">
 "{TEXT 0 27 "g:=tcoeff(coeff(equ, x,1));"}}{OUT_R 747 8192 744
{DAG :3n3\`g`j2x0000}}}{SCP_R 749 0 2{INP_R 751 0 "> "{TEXT 0 26 
"h:=tcoeff(coeff(equ,y,1));"}}{OUT_R 754 8192 751{DAG :3n3\`h`j2x
0000}}}{SCP_R 756 0 2{INP_R 758 0 "> "{TEXT 0 26 "i:=tcoeff(coeff
(equ,z,1));"}}{OUT_R 761 8192 758{DAG :3n3\`i`j2x0000}}}{SCP_R 
763 0 2{INP_R 765 0 "> "{TEXT 0 15 "j:=tcoeff(equ);"}}{OUT_R 768 
8192 765{DAG :3n3\`j`j2x0001}}}{SCP_R 770 0 1{COM_R 772 0{TEXT 1 
35 "Calculo del grafico de la elipsoide"}}}{SCP_R 774 0 2{INP_R 
776 0 "> "{TEXT 0 12 "with(plots):"}}{OUT_R 779 0 776{TEXT 2 1 "\
012"}}}{SCP_R 781 0 1{COM_R 783 0{TEXT 1 41 "Resolucion de la ecu
acion de la elipsoide"}}}{SCP_R 785 0 2{INP_R 787 0 "> "{TEXT 0 
25 "zetas:=solve(equ=0,z);   "}}{OUT_R 790 8192 787{DAG :3n4\`zet
as`,1}}}{SCP_R 792 0 1{COM_R 794 0{TEXT 1 42 "Ecuacion de mitad s
uperior de la elipsoide"}}}{SCP_R 796 0 2{INP_R 798 0 "> "{TEXT 0
 9 "zetas[1];"}}{OUT_R 801 0 798{TEXT 2 42 "Error, improper op or
 subscript selector\012\012"}}}{SCP_R 803 0 1{COM_R 805 0{TEXT 1 
46 "Ecuacion de la mitad inferior de la elipsoide."}}}{SCP_R 807 
0 2{INP_R 809 0 "> "{TEXT 0 9 "zetas[2];"}}{OUT_R 812 0 809{TEXT 
2 42 "Error, improper op or subscript selector\012\012"}}}{SCP_R 
814 0 2{COM_R 816 0{TEXT 1 78 "Buscando los extremos de las x y l
os extremos de las y,para graficar elipsoide"}}{COM_R 819 0{TEXT 
1 0 ""}}}{SCP_R 821 0 2{INP_R 823 0 "> "{TEXT 0 0 ""}}{OUT_R 826 
0 823{TEXT 2 1 "\012"}}}{SCP_R 828 0 2{INP_R 830 0 "> "{TEXT 0 
137 "Determinante := e**2*x**2 + 2*e*x*f*y + 2*e*x*i + f**2*y**2 \+
+ 2*f*y*i + i**2 -4*c*a*x**2 -4*c*b*y**2 -4*c*d*x*y -4*c*g*x -4*c
*h*y -4*c*j;"}}{OUT_R 833 8192 830{DAG :3n6\`Determinante`j2x0000
}}}{SCP_R 835 0 2{INP_R 837 0 "> "{TEXT 0 221 "Discriminante2 := \+
-e*(x**2)*f*c*d -e*x*f*c*h -f*i*c*d*x -f*i*c*h +c^2*d^2*x^2 +2*c^
2*d*x*h +c**2*h**2 +f**2*c*a*x**2 +f**2*c*g*x +f**2*c*j +c*b*e**2
*x**2 +2*c*b*e*x*i + c*b*i**2 -4*c**2*b*a*x**2 -4*c**2*b*g*x -4*c
**2*b*j:"}}{OUT_R 840 0 837{TEXT 2 1 "\012"}}}{SCP_R 842 0 2
{INP_R 844 0 "> "{TEXT 0 38 "extremox:=solve(Discriminante2=0,x);
  "}}{OUT_R 847 8192 844{DAG :3n5\`extremox`n3\`x`}}}{SCP_R 849 0
 2{INP_R 851 0 "> "{TEXT 0 0 ""}}{OUT_R 854 0 851{TEXT 2 1 "\012"
}}}{SCP_R 856 0 2{INP_R 858 0 "> "{TEXT 0 32 "BuscaY:=solve(Deter
minante=0,x):"}}{OUT_R 861 0 858{TEXT 2 1 "\012"}}}{SCP_R 863 0 2
{INP_R 865 0 "> "{TEXT 0 0 ""}}{OUT_R 868 0 865{TEXT 2 1 "\012"}}
}{SCP_R 870 0 2{INP_R 872 0 "> "{TEXT 0 221 "Discriminante3 := -e
*f*y**2*c*d -e*f*y*c*g -e*i*c*d*y -e*i*c*g +c**2*d**2*y**2 +2*c**
2*d*y*g +c**2*g**2+e**2*c*b*y**2 +e**2*c*h*y +e**2*c*j +c*a*f**2*
y**2 +2*c*a*f*y*i +c*a*i**2 -4*c**2*a*b*y**2 -4*c**2*a*h*y -4*c**
2*a*j:"}}{OUT_R 875 0 872{TEXT 2 1 "\012"}}}{SCP_R 877 0 2{INP_R 
879 0 "> "{TEXT 0 38 "extremoy:=solve(Discriminante3=0,y);  "}}
{OUT_R 882 8192 879{DAG :3n5\`extremoy`n3\`y`}}}{SCP_R 884 0 2
{INP_R 886 0 "> "{TEXT 0 0 ""}}{OUT_R 889 0 886{TEXT 2 1 "\012"}}
}{SCP_R 891 0 2{INP_R 893 0 "> "{TEXT 0 12 "with(plots):"}}{OUT_R
 896 0 893{TEXT 2 1 "\012"}}}{SCP_R 898 0 1{COM_R 900 0{TEXT 1 20
 "Grafica la elipsoide"}}}{SCP_R 902 0 2{INP_R 904 0 "> "{TEXT 0 
82 "plot3d(\{zetas[1],zetas[2]\},x=extremox[1]..extremox[2],y=ext
remoy[1]..extremoy[2]);"}}{OUT_R 907 0 904{TEXT 2 42 "Error, impr
oper op or subscript selector\012\012"}}}{SCP_R 909 0 2{INP_R 911
 0 "> "{TEXT 0 0 ""}}{OUT_R 914 0 911{TEXT 2 1 "\012"}}}{SCP_R 
916 0 1{INP_R 918 0 "> "{TEXT 0 0 ""}}}}{END}
