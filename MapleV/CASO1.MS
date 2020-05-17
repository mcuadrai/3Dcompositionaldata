{VERSION 1 1 "MS-Windows" "1.0"}{GLOBALS 1 2}{FONT 0 "Arial" "Ari
al" "Helvetica-Bold" 7 11 0 "Helvetica-Bold" 11{COLOR "800080"}}
{FONT 1 "Times New Roman" "Times New Roman" "Times-Bold" 7 12 64 
"Times-Bold" 12{COLOR "000000"}}{FONT 2 "Courier New" "Courier Ne
w" "Courier" 4 10 192 "Courier" 10{COLOR "000000"}}{SCP_R 0 0 198
{SCP_R 1 0 2{INP_R 3 0 "> "{TEXT 0 13 "with(linalg):"}}{OUT_R 6 0
 3{TEXT 2 1 "\012"}}}{SCP_R 8 0 3{COM_R 10 0{TEXT 1 277 "       E
ste archivo lee los datos con el n\372mero de componentes igual 4
, luego estos datos son procesados y como resultado tenemos una c
antidad de valores (a,b,c la matriz de rotaci\363n M y de traslac
i\363n XO) de una ecuaci\363n param\351trica, necesario para dibu
jar un elipsoide en 3D ."}}{COM_R 13 0{TEXT 1 0 ""}}{COM_R 16 0
{TEXT 1 0 ""}}}{SCP_R 18 0 2{INP_R 20 0 "> "{TEXT 0 12 "with(stat
s):"}}{OUT_R 23 0 20{TEXT 2 1 "\012"}}}{SCP_R 25 0 2{COM_R 27 0
{TEXT 1 98 " Atencion :   El archivo leido debe tener identificad
ores y el n\372mero de componentes es igual a 4."}}{COM_R 30 0
{TEXT 1 0 ""}}}{SCP_R 32 0 2{INP_R 34 0 "> "{TEXT 0 32 "NombreArc
hivo := `bayesite.txt`;"}}{OUT_R 37 8192 34{DAG :3n6\`NombreArchi
vo`n6\`bayesite.txt`}}}{SCP_R 39 0 2{INP_R 41 0 "> "{TEXT 0 54 " \+
   line := readline(NombreArchivo);#saltar encabezado"}}{OUT_R 44
 8192 41{DAG :3n4\`line`n4\`A~`B~`C~`D`}}}{SCP_R 46 0 2{INP_R 48 
0 "> "{TEXT 0 36 "    line := readline(NombreArchivo);"}}{OUT_R 
51 8192 48{DAG :3n4\`line`n5\`.3~`.3~`.3~`.1`}}}{SCP_R 53 0 2
{INP_R 55 0 "> "{TEXT 0 17 "    numcaso := 1;"}}{OUT_R 58 8192 55
{DAG :3n4\`numcaso`j2x0001}}}{SCP_R 60 0 2{INP_R 62 0 "> "{TEXT 0
 21 "   while  line <>0 do"}}{OUT_R 65 0 62{TEXT 2 1 "\012"}}}
{SCP_R 67 0 2{INP_R 69 0 "> "{TEXT 0 44 "         temp := sscanf(
line,`%f %f %f %f`);"}}{OUT_R 72 0 69{TEXT 2 1 "\012"}}}{SCP_R 74
 0 2{INP_R 76 0 "> "{TEXT 0 74 "         if (temp[1]<>0 and temp[
2]<>0 and temp[3]<>0 and temp[4]<>0) then"}}{OUT_R 79 0 76{TEXT 2
 1 "\012"}}}{SCP_R 81 0 2{INP_R 83 0 "> "{TEXT 0 36 "            \+
 c[1,numcaso]:= temp[1];"}}{OUT_R 86 0 83{TEXT 2 1 "\012"}}}
{SCP_R 88 0 2{INP_R 90 0 "> "{TEXT 0 36 "             c[2,numcaso
]:= temp[2];"}}{OUT_R 93 0 90{TEXT 2 1 "\012"}}}{SCP_R 95 0 2
{INP_R 97 0 "> "{TEXT 0 36 "             c[3,numcaso]:= temp[3];"
}}{OUT_R 100 0 97{TEXT 2 1 "\012"}}}{SCP_R 102 0 2{INP_R 104 0 ">
 "{TEXT 0 36 "             c[4,numcaso]:= temp[4];"}}{OUT_R 107 0
 104{TEXT 2 1 "\012"}}}{SCP_R 109 0 2{INP_R 111 0 "> "{TEXT 0 44 
"             observar[numcaso,1] := temp[1];"}}{OUT_R 114 0 111
{TEXT 2 1 "\012"}}}{SCP_R 116 0 2{INP_R 118 0 "> "{TEXT 0 44 "   \+
          observar[numcaso,2] := temp[2];"}}{OUT_R 121 0 118{TEXT
 2 1 "\012"}}}{SCP_R 123 0 2{INP_R 125 0 "> "{TEXT 0 44 "        \+
     observar[numcaso,3] := temp[3];"}}{OUT_R 128 0 125{TEXT 2 1 
"\012"}}}{SCP_R 130 0 2{INP_R 132 0 "> "{TEXT 0 44 "             \+
observar[numcaso,4] := temp[4];"}}{OUT_R 135 0 132{TEXT 2 1 "\012
"}}}{SCP_R 137 0 2{INP_R 139 0 "> "{TEXT 0 36 "             numca
so := numcaso + 1;"}}{OUT_R 142 0 139{TEXT 2 1 "\012"}}}{SCP_R 
144 0 2{INP_R 146 0 "> "{TEXT 0 13 "          fi;"}}{OUT_R 149 0 
146{TEXT 2 1 "\012"}}}{SCP_R 151 0 2{INP_R 153 0 "> "{TEXT 0 45 "
             line := readline(NombreArchivo);"}}{OUT_R 156 0 153
{TEXT 2 1 "\012"}}}{SCP_R 158 0 2{INP_R 160 0 "> "{TEXT 0 5 "  od
:"}}{OUT_R 163 0 160{TEXT 2 1 "\012"}}}{SCP_R 165 0 2{INP_R 167 0
 "> "{TEXT 0 17 "n := numcaso - 1;"}}{OUT_R 170 8192 167{DAG :3n3
\`n`j2x0021}}}{SCP_R 172 0 2{INP_R 174 0 "> "{TEXT 0 9 "print(c):
"}}{OUT_R 177 8192 174{DAG (3n4\`TABLE`,2[2,55=3,3j2x0004j2x0008e
3j5x1600000000000000i2x0016=3,3j2x0003j2x0002e3j5x400000000000000
0p13=3,3p9p19e3j5x1000000000000000p13=3,3p19p17p26=3,3j2x0001j2x0
018e3j5x3200000000000000p13=3,3p19p9p1B=3,3p34j2x0005e3j5x5000000
000000000p13=3,3p19p36p38=3,3p19p47e3j5x2000000000000000p13=3,3p1
7p36e3j5x1100000000000000p13=3,3p17p47p26=3,3p34j2x0009e3j5x12000
00000000000p13=3,3p19p73e3j5x3600000000000000p13=3,3p17p73p80=3,3
p17p17p1B=3,3p9j2x0014pD=3,3p9p17p26=3,3p9j2x0017e3j5x25000000000
00000p13=3,3p9j2x0021pA1=3,3p17p9p26=3,3p34j2x0006p59=3,3p19pB6p4
9=3,3p17pB6p59=3,3p34j2x0010p80=3,3p19pC6p75=3,3p17pC6p80=3,3p9p3
6pA1=3,3p9j2x0019pA1=3,3p34j2x0007p59=3,3p19pE1p59=3,3p9j2x0016pA
1=3,3p17pE1p49=3,3p9pB6p26=3,3p34p94e3j5x1800000000000000p13=3,3p
19p94pFD=3,3p34j2x0011p80=3,3p17p94e3j5x4800000000000000p13=3,3p1
9p10Cp80=3,3p9j2x0013pD=3,3p17p10Cp75=3,3p9p10CpD=3,3p34pBe3j5x28
00000000000000p13=3,3p19pBp133=3,3p17pBp133=3,3p34pDBe3j5x3900000
000000000p13=3,3p34j2x0015pA1=3,3p19pDBpFD=3,3p19p152pA1=3,3p17pD
BpFD=3,3p34j2x0012p113=3,3p17p152pA1=3,3p19p167pFD=3,3p17p167pFD=
3,3p9j2x0020pA1=3,3p34p17CpFD=3,3p34pECp64=3,3p19p17Cp148=3,3p19p
ECp38=3,3p17p17CpFD=3,3p34p122pFD=3,3p17pECp38=3,3p19p122p113=3,3
p17p122pFD=3,3p9pE1p26=3,3p34p34e3j5x3000000000000000p13=3,3p19p3
4p1B5=3,3p17p34p1B5=3,3p9p34p26=3,3p9p73pD=3,3p9p152pA1=3,3p34p19
p26=3,3p34pABpFD=3,3p34p17p1B=3,3p34p9Fp38=3,3p19pABpFD=3,3p34p9p
1B=3,3p9p167pD=3,3p19p9Fp64=3,3p17pABp148=3,3p17p9Fp38=3,3p9p9p26
=3,3p9p47p59=3,3p19p19p1B=3,3p9pC6pD}}}{SCP_R 179 0 3{COM_R 181 0
{TEXT 1 11 "           "}}{COM_R 184 0{TEXT 1 20 "               \+
     "}}{COM_R 187 0{TEXT 1 100 "                                \+
     A continuaci\363n est\341n las observaciones leidas desde el
 archivo."}}}{SCP_R 189 0 1{COM_R 191 0{TEXT 1 0 ""}}}{SCP_R 193 
0 2{INP_R 195 0 "> "{TEXT 0 16 "print(observar);"}}{OUT_R 198 
8192 195{DAG (3n4\`TABLE`,2[2,55=3,3j2x0003j2x0002e3j5x1000000000
000000i2x0016=3,3j2x0004pBe3j5x4000000000000000p13=3,3pBp9p1A=3,3
pBp17pD=3,3j2x0005j2x0001e3j5x5000000000000000p13=3,3p2DpBe3j5x20
00000000000000p13=3,3p2Dp9pD=3,3p2Dp17p3C=3,3p9p9p1A=3,3j2x0009p2
Fe3j5x1200000000000000p13=3,3p17p9pD=3,3p54pBe3j5x360000000000000
0p13=3,3p54p9p67=3,3p54p17e3j5x1600000000000000p13=3,3p9p17pD=3,3
j2x0006p2Fp3C=3,3p85pBp31=3,3p85p9p3C=3,3p85p17pD=3,3j2x0010p2Fp6
7=3,3j2x0013p9e3j5x1800000000000000p13=3,3p9ApBp57=3,3pA0p17p77=3
,3p9Ap9p67=3,3p9Ap17p77=3,3j2x0007p2Fp3C=3,3pC0pBp3C=3,3pC0p9p31=
3,3j2x0018p2Fe3j5x3200000000000000p13=3,3pC0p17pD=3,3j2x0014p2FpA
3=3,3pD0pBpD3=3,3pE1pBpA3=3,3pD0p9e3j5x1100000000000000p13=3,3j2x
0011p2Fp67=3,3pE1p9e3j5x4800000000000000p13=3,3pD0p17e3j5x2500000
000000000p13=3,3pFCpBp67=3,3pE1p17p77=3,3pFCp9p57=3,3pFCp17p77=3,
3j2x0008p2Fe3j5x2800000000000000p13=3,3p12CpBp12F=3,3p12Cp9p12F=3
,3j2x0019p2Fe3j5x3900000000000000p13=3,3p12Cp17p77=3,3j2x0015p2Fp
10F=3,3p142pBpA3=3,3p153pBp10F=3,3p142p9pA3=3,3j2x0012p2Fp104=3,3
p153p9p10F=3,3p142p17p10F=3,3p168pBpA3=3,3p153p17p10F=3,3p168p9pA
3=3,3p168p17p77=3,3j2x0020p2FpA3=3,3j2x0016p2FpF3=3,3p18CpBp145=3
,3p192pBpD3=3,3p18Cp9pA3=3,3pA0p2FpA3=3,3p192p9pD3=3,3p18Cp17p10F
=3,3pA0pBp104=3,3p2Fp2Fe3j5x3000000000000000p13=3,3p192p17p10F=3,
3pBp2FpD=3,3p9p2Fp1A=3,3p17p2Fp1A=3,3p2FpBp1BD=3,3p2Fp9p1BD=3,3p2
Fp17pD=3,3j2x0021p2FpA3=3,3p17p17pD=3,3j2x0017p2FpD3=3,3p1E9pBpA3
=3,3p1F4pBpF3=3,3p1E9p9p145=3,3p1F4p9pD3=3,3p1E9p17p10F=3,3p1F4p1
7p10F=3,3pBpBp1A}}}{SCP_R 200 0 3{COM_R 202 0{TEXT 1 0 ""}}{COM_R
 205 0{TEXT 1 0 ""}}{COM_R 208 0{TEXT 1 0 ""}}}{SCP_R 210 0 2
{COM_R 212 0{TEXT 1 64 "                                    Trans
formaci\363n de Aitchison."}}{COM_R 215 0{TEXT 1 66 "            \+
                             Se elige la componente 4."}}}{SCP_R 
217 0 1{COM_R 219 0{TEXT 1 0 ""}}}{SCP_R 221 0 2{INP_R 223 0 "> "
{TEXT 0 20 "tran:=matrix(3,n,0):"}}{OUT_R 226 0 223{TEXT 2 1 "\01
2"}}}{SCP_R 228 0 2{INP_R 230 0 "> "{TEXT 0 15 "numcompo1 := 1:"}
}{OUT_R 233 0 230{TEXT 2 1 "\012"}}}{SCP_R 235 0 2{INP_R 237 0 ">
 "{TEXT 0 15 "numcompo2 := 2:"}}{OUT_R 240 0 237{TEXT 2 1 "\012"}
}}{SCP_R 242 0 2{INP_R 244 0 "> "{TEXT 0 15 "numcompo3 := 3:"}}
{OUT_R 247 0 244{TEXT 2 1 "\012"}}}{SCP_R 249 0 2{INP_R 251 0 "> \+
"{TEXT 0 16 "seleccompo := 4;"}}{OUT_R 254 8192 251{DAG :3n5\`sel
eccompo`j2x0004}}}{SCP_R 256 0 2{INP_R 258 0 "> "{TEXT 0 5 "i:=1:
"}}{OUT_R 261 0 258{TEXT 2 1 "\012"}}}{SCP_R 263 0 2{INP_R 265 0 
"> "{TEXT 0 13 "for i to n do"}}{OUT_R 268 0 265{TEXT 2 1 "\012"}
}}{SCP_R 270 0 2{INP_R 272 0 "> "{TEXT 0 39 "    x1:=c[numcompo1,
i]/c[seleccompo,i]:"}}{OUT_R 275 0 272{TEXT 2 1 "\012"}}}{SCP_R 
277 0 2{INP_R 279 0 "> "{TEXT 0 39 "    x2:=c[numcompo2,i]/c[sele
ccompo,i]:"}}{OUT_R 282 0 279{TEXT 2 1 "\012"}}}{SCP_R 284 0 2
{INP_R 286 0 "> "{TEXT 0 40 "     x3:=c[numcompo3,i]/c[seleccompo
,i]:"}}{OUT_R 289 0 286{TEXT 2 1 "\012"}}}{SCP_R 291 0 2{INP_R 
293 0 "> "{TEXT 0 22 "    tran[1,i]:=ln(x1):"}}{OUT_R 296 0 293
{TEXT 2 1 "\012"}}}{SCP_R 298 0 2{INP_R 300 0 "> "{TEXT 0 22 "   \+
 tran[2,i]:=ln(x2):"}}{OUT_R 303 0 300{TEXT 2 1 "\012"}}}{SCP_R 
305 0 2{INP_R 307 0 "> "{TEXT 0 23 "    tran[3,i ]:=ln(x3):"}}
{OUT_R 310 0 307{TEXT 2 1 "\012"}}}{SCP_R 312 0 2{INP_R 314 0 "> \+
"{TEXT 0 3 "od:"}}{OUT_R 317 0 314{TEXT 2 1 "\012"}}}{SCP_R 319 0
 2{INP_R 321 0 "> "{TEXT 0 12 "print(tran):"}}{OUT_R 324 8192 321
{DAG (3n4\`MATRIX`,2[2,4[2,16e3j4x001098612289i2x0009j2x0000e3j4x
001386294361pEp12e3j4x009162907319i2x0010e3j4x006931471806p1Ep20e
3j4x005596157879p1Ee3i4x002876820725p1Ee3j4x008109302162p1Ep33p9e
3j4x001177830357p1Ep3Bp10e3i4x008209805521p1Ee3j4x002468600779p1E
p49e3j4x004446858213p1Ee3i4x003285040670p1Ep56[2,16p9p12p10p12p10
e3j4x001609437912pEp20p27p33p2Dp33p3Bp9p3Bp10p49p43p49p56p50p56[2
,16p9p12p12p10e3i4x006931471806p1Ep20p64p27p33p33p2Dp3Bp3Bp9p10p4
9p49p43p56p56p50}}}{SCP_R 326 0 2{COM_R 328 0{TEXT 1 106 "Luego d
e realizada la transformacion de Aitchison se debe realizar el c\
341lculo de los m\351todos estad\355sticos."}}{COM_R 331 0{TEXT 1
 0 ""}}}{SCP_R 333 0 2{INP_R 335 0 "> "{TEXT 0 13 "with(linalg):"
}}{OUT_R 338 0 335{TEXT 2 1 "\012"}}}{SCP_R 340 0 3{COM_R 342 0
{TEXT 1 108 "Define un arreglo, en el cual se guardaran las obser
vaciones de cuatro componentes que fueron transformadas."}}{COM_R
 345 0{TEXT 1 0 ""}}{COM_R 348 0{TEXT 1 0 ""}}}{SCP_R 350 0 2
{INP_R 352 0 "> "{TEXT 0 5 "p:=3;"}}{OUT_R 355 8192 352{DAG :3n3\
`p`j2x0003}}}{SCP_R 357 0 2{INP_R 359 0 "> "{TEXT 0 20 "a:=array(
1..p,1..n):"}}{OUT_R 362 0 359{TEXT 2 1 "\012"}}}{SCP_R 364 0 2
{INP_R 366 0 "> "{TEXT 0 8 "a:=tran:"}}{OUT_R 369 0 366{TEXT 2 1 
"\012"}}}{SCP_R 371 0 2{INP_R 373 0 "> "{TEXT 0 15 "r:=array(1..p
):"}}{OUT_R 376 0 373{TEXT 2 1 "\012"}}}{SCP_R 378 0 2{INP_R 380 
0 "> "{TEXT 0 5 "i:=1;"}}{OUT_R 383 8192 380{DAG :3n3\`i`j2x0001}
}}{SCP_R 385 0 2{COM_R 387 0{TEXT 1 32 "Para el caso de tres dime
nsiones"}}{COM_R 390 0{TEXT 1 57 "Realiza la suma de los vectores
 almacenados en una matriz"}}}{SCP_R 392 0 1{COM_R 394 0{TEXT 1 
47 "suma de los primeros elementos de los vectores."}}}{SCP_R 396
 0 2{INP_R 398 0 "> "{TEXT 0 10 "compo1:=0;"}}{OUT_R 401 8192 398
{DAG :3n4\`compo1`j2x0000}}}{SCP_R 403 0 2{INP_R 405 0 "> "{TEXT 
0 40 "for i to n do compo1:=compo1+a[1,i]  od:"}}{OUT_R 408 0 405
{TEXT 2 1 "\012"}}}{SCP_R 410 0 2{INP_R 412 0 "> "{TEXT 0 5 "i:=1
;"}}{OUT_R 415 8192 412{DAG :3n3\`i`j2x0001}}}{SCP_R 417 0 1
{COM_R 419 0{TEXT 1 47 "Suma de los segundos elementos de los vec
tores."}}}{SCP_R 421 0 2{INP_R 423 0 "> "{TEXT 0 10 "compo2:=0;"}
}{OUT_R 426 8192 423{DAG :3n4\`compo2`j2x0000}}}{SCP_R 428 0 2
{INP_R 430 0 "> "{TEXT 0 40 "for i to n do compo2:=compo2+a[2,i] \+
 od:"}}{OUT_R 433 0 430{TEXT 2 1 "\012"}}}{SCP_R 435 0 1{COM_R 
437 0{TEXT 1 47 "Suma de los terceros elementos de los vectores."
}}}{SCP_R 439 0 2{INP_R 441 0 "> "{TEXT 0 10 "compo3:=0;"}}{OUT_R
 444 8192 441{DAG :3n4\`compo3`j2x0000}}}{SCP_R 446 0 2{INP_R 448
 0 "> "{TEXT 0 40 "for i to n do compo3:=compo3+a[3,i]  od:"}}
{OUT_R 451 0 448{TEXT 2 1 "\012"}}}{SCP_R 453 0 1{COM_R 455 0
{TEXT 1 64 "en el resultado seran tres elementos ya que son tres \+
dimensiones"}}}{SCP_R 457 0 2{INP_R 459 0 "> "{TEXT 0 13 "r[1]:=c
ompo1:"}}{OUT_R 462 0 459{TEXT 2 1 "\012"}}}{SCP_R 464 0 2{INP_R 
466 0 "> "{TEXT 0 13 "r[2]:=compo2:"}}{OUT_R 469 0 466{TEXT 2 1 "
\012"}}}{SCP_R 471 0 2{INP_R 473 0 "> "{TEXT 0 13 "r[3]:=compo3:"
}}{OUT_R 476 0 473{TEXT 2 1 "\012"}}}{SCP_R 478 0 2{INP_R 480 0 "
> "{TEXT 0 9 "print(r);"}}{OUT_R 483 8192 480{DAG (3n4\`VECTOR`,2
[2,4e3j4x008862175905i2x0009e3j4x008862175904pCe3j4x008169028723p
C}}}{SCP_R 485 0 3{COM_R 487 0{TEXT 1 0 ""}}{COM_R 490 0{TEXT 1 
41 "                  Obtenci\363n del promedio."}}{COM_R 493 0
{TEXT 1 0 ""}}}{SCP_R 495 0 2{INP_R 497 0 "> "{TEXT 0 47 "prom:=m
atrix(p,1,[1/n*r[1],1/n*r[2],1/n*r[3]]);"}}{OUT_R 500 8192 497
{DAG :3n4\`prom`(3n4\`MATRIX`,2[2,4[2,2e3j4x004220083764i2x0010pB
[2,2e3j4x003890013678p12}}}{SCP_R 502 0 2{INP_R 504 0 "> "{TEXT 0
 18 "convert(a,matrix):"}}{OUT_R 507 0 504{TEXT 2 1 "\012"}}}
{SCP_R 509 0 2{INP_R 511 0 "> "{TEXT 0 27 "promme:=scalarmul(prom
,-1);"}}{OUT_R 514 8192 511{DAG :3n4\`promme`(3n4\`MATRIX`,2[2,4[
2,2e3i4x004220083764i2x0010pB[2,2e3i4x003890013678p12}}}{SCP_R 
516 0 2{INP_R 518 0 "> "{TEXT 0 5 "j:=1;"}}{OUT_R 521 8192 518
{DAG :3n3\`j`j2x0001}}}{SCP_R 523 0 2{INP_R 525 0 "> "{TEXT 0 21 
"total:=matrix(p,p,0);"}}{OUT_R 528 8192 525{DAG :3n4\`total`(3n4
\`MATRIX`,2[2,4[2,4j2x0000pDpDpBpB}}}{SCP_R 530 0 2{INP_R 532 0 "
> "{TEXT 0 21 "resta:=matrix(p,1,0);"}}{OUT_R 535 8192 532{DAG :3
n4\`resta`(3n4\`MATRIX`,2[2,4[2,2j2x0000pBpB}}}{SCP_R 537 0 2
{INP_R 539 0 "> "{TEXT 0 24 "multipli:=matrix(p,p,0);"}}{OUT_R 
542 8192 539{DAG :3n5\`multipli`(3n4\`MATRIX`,2[2,4[2,4j2x0000pEp
EpCpC}}}{SCP_R 544 0 2{INP_R 546 0 "> "{TEXT 0 13 "for j to n do"
}}{OUT_R 549 0 546{TEXT 2 1 "\012"}}}{SCP_R 551 0 2{INP_R 553 0 "
> "{TEXT 0 14 "obs:=col(a,j);"}}{OUT_R 556 0 553{TEXT 2 1 "\012"}
}}{SCP_R 558 0 2{INP_R 560 0 "> "{TEXT 0 24 " resta:=add(obs,prom
me);"}}{OUT_R 563 0 560{TEXT 2 1 "\012"}}}{SCP_R 565 0 2{INP_R 
567 0 "> "{TEXT 0 17 "transpose(resta);"}}{OUT_R 570 0 567{TEXT 2
 1 "\012"}}}{SCP_R 572 0 2{INP_R 574 0 "> "{TEXT 0 43 "multipli:=
multiply(resta,transpose(resta));"}}{OUT_R 577 0 574{TEXT 2 1 "\0
12"}}}{SCP_R 579 0 2{INP_R 581 0 "> "{TEXT 0 31 "    total:=add(t
otal,multipli);"}}{OUT_R 584 0 581{TEXT 2 1 "\012"}}}{SCP_R 586 0
 2{INP_R 588 0 "> "{TEXT 0 3 "od:"}}{OUT_R 591 0 588{TEXT 2 1 "\0
12"}}}{SCP_R 593 0 2{INP_R 595 0 "> "{TEXT 0 13 "print(total);"}}
{OUT_R 598 8192 595{DAG (3n4\`MATRIX`,2[2,4[2,4e3j4x007266460616i
2x0009e3j4x001233102991pEe3j4x008904925692i2x0010[2,4p10e3j4x0085
36709292pEe3j4x002160741244pE[2,4p16p26e3j4x009579311416pE}}}
{SCP_R 600 0 2{INP_R 602 0 "> "{TEXT 0 17 "s:=matrix(p,p,0);"}}
{OUT_R 605 8192 602{DAG :3n3\`s`(3n4\`MATRIX`,2[2,4[2,4j2x0000pCp
CpApA}}}{SCP_R 607 0 2{INP_R 609 0 "> "{TEXT 0 30 "s:=scalarmul(t
otal,(1/(n-1)));"}}{OUT_R 612 8192 609{DAG :3n3\`s`(3n4\`MATRIX`,
2[2,4[2,4e3j4x003633230308i2x0010e3j4x006165514955i2x0011e3j4x004
452462846p18[2,4p13e3j4x004268354646p11e3j4x001080370622p11[2,4p1
Ap29e3j4x004789655708p11}}}{SCP_R 614 0 1{COM_R 616 0{TEXT 1 78 "
NOTA : Si el determinante de la matriz es cero , dicha matriz no \+
tiene inversa"}}}{SCP_R 618 0 2{INP_R 620 0 "> "{TEXT 0 7 "det(s)
;"}}{OUT_R 623 8192 620{DAG e3j4x006796313157i2x0011}}}{SCP_R 625
 0 2{INP_R 627 0 "> "{TEXT 0 20 "invS:=matrix(p,p,0);"}}{OUT_R 
630 8192 627{DAG :3n4\`invS`(3n4\`MATRIX`,2[2,4[2,4j2x0000pDpDpBp
B}}}{SCP_R 632 0 2{INP_R 634 0 "> "{TEXT 0 17 "invS:=inverse(s);"
}}{OUT_R 637 8192 634{DAG :3n4\`invS`(3n4\`MATRIX`,2[2,4[2,4e3j4x
002836353780i2x0009e3i4x003637322660i2x0010e3i4x001816227262p19[2
,4p14e3j4x002531325092p12e3i4x005371615375p19[2,4p1Bp2Ae3j4x00222
5880322p12}}}{SCP_R 639 0 2{INP_R 641 0 "> "{TEXT 0 12 "with(stat
s):"}}{OUT_R 644 0 641{TEXT 2 1 "\012"}}}{SCP_R 646 0 2{INP_R 648
 0 "> "{TEXT 0 47 "f:=stats[statevalf,icdf,fratio[p,(n-p)]](.995)
;"}}{OUT_R 651 8192 648{DAG :3n3\`f`e3j4x006027767597i2x0009}}}
{SCP_R 653 0 2{INP_R 655 0 "> "{TEXT 0 17 "u:=matrix(p,1,0);"}}
{OUT_R 658 8192 655{DAG :3n3\`u`(3n4\`MATRIX`,2[2,4[2,2j2x0000pAp
A}}}{SCP_R 660 0 2{INP_R 662 0 "> "{TEXT 0 10 "u[1,1]:=x;"}}
{OUT_R 665 8192 662{DAG :3b3n3\`u`,3j2x0001p5n3\`x`}}}{SCP_R 667 
0 2{INP_R 669 0 "> "{TEXT 0 10 "u[2,1]:=y;"}}{OUT_R 672 8192 669
{DAG :3b3n3\`u`,3j2x0002j2x0001n3\`y`}}}{SCP_R 674 0 2{INP_R 676 
0 "> "{TEXT 0 10 "u[3,1]:=z;"}}{OUT_R 679 8192 676{DAG :3b3n3\`u`
,3j2x0003j2x0001n3\`z`}}}{SCP_R 681 0 2{INP_R 683 0 "> "{TEXT 0 
25 "nro:=((p*(n-1))/(n-p))*f;"}}{OUT_R 686 8192 683{DAG :3n3\`nro
`e3j4x002009255865i2x0008}}}{SCP_R 688 0 2{INP_R 690 0 "> "{TEXT 
0 24 "resta2:=scalarmul(u,-1);"}}{OUT_R 693 8192 690{DAG :3n4\`re
sta2`(3n4\`MATRIX`,2[2,4[2,2+3n3\`x`i2x0001[2,2+3n3\`y`p10[2,2+3n
3\`z`p10}}}{SCP_R 695 0 2{INP_R 697 0 "> "{TEXT 0 80 "var1:=multi
ply(multiply(n*transpose(add(prom,resta2)),invS),(add(prom,resta2
)));"}}{OUT_R 700 8192 697{DAG :3n4\`var1`(3n4\`MATRIX`,2[2,2[2,2
+15e3j4x001947144470i2x0008j2x0001n3\`x`e3i4x004085825107p13*3p17
j2x0002e3j4x005956342938p13n3\`y`e3i4x002964300178p13*5p29p15p17p
15e3i4x001527675517p13n3\`z`e3i4x002362657542p13*5p3Cp15p17p15e3i
4x007628154500i2x0009*3p29p21e3j4x005315782693p13*5p3Cp15p29p15e3
i4x002256078458p13*3p3Cp21e3j4x004674348676p13}}}{SCP_R 702 0 2
{INP_R 704 0 "> "{TEXT 0 14 "nro=var1[1,1];"}}{OUT_R 707 8192 704
{DAG =3e3j4x002009255865i2x0008+15e3j4x001947144470p6j2x0001n3\`x
`e3i4x004085825107p6*3p11j2x0002e3j4x005956342938p6n3\`y`e3i4x002
964300178p6*5p23pFp11pFe3i4x001527675517p6n3\`z`e3i4x002362657542
p6*5p36pFp11pFe3i4x007628154500i2x0009*3p23p1Be3j4x005315782693p6
*5p36pFp23pFe3i4x002256078458p6*3p36p1Be3j4x004674348676p6}}}
{SCP_R 709 0 1{COM_R 711 0{TEXT 1 38 "Calculo de la ecuacion de l
a elipsoide"}}}{SCP_R 713 0 2{INP_R 715 0 "> "{TEXT 0 19 "equ:=va
r1[1,1]-nro;"}}{OUT_R 718 8192 715{DAG :3n3\`equ`+15e3i3x62111395
i2x0008j2x0001n3\`x`e3i4x004085825107p8*3pCj2x0002e3j4x0059563429
38p8n3\`y`e3i4x002964300178p8*5p1EpApCpAe3i4x001527675517p8n3\`z`
e3i4x002362657542p8*5p31pApCpAe3i4x007628154500i2x0009*3p1Ep16e3j
4x005315782693p8*5p31pAp1EpAe3i4x002256078458p8*3p31p16e3j4x00467
4348676p8}}}{SCP_R 720 0 3{COM_R 722 0{TEXT 1 53 "Obteniendo coef
icientes de la ecuaci\363n del elipsoide."}}{COM_R 725 0{TEXT 1 
54 "Teniendo la ecuaci\363n general de la elipse de la forma "}}
{COM_R 728 0{TEXT 1 56 "     a*x^2+b*y^2+c*z^2+d*x*y+e*x*z+f*z*y+
g*x+h*y+i*z+j=0"}}}{SCP_R 730 0 2{INP_R 732 0 "> "{TEXT 0 18 "a:=
coeff(equ,x,2);"}}{OUT_R 735 8192 732{DAG :3n3\`a`e3j4x0059563429
38i2x0008}}}{SCP_R 737 0 2{INP_R 739 0 "> "{TEXT 0 18 "b:=coeff(e
qu,y,2);"}}{OUT_R 742 8192 739{DAG :3n3\`b`e3j4x005315782693i2x00
08}}}{SCP_R 744 0 2{INP_R 746 0 "> "{TEXT 0 18 "c:=coeff(equ,z,2)
;"}}{OUT_R 749 8192 746{DAG :3n3\`c`e3j4x004674348676i2x0008}}}
{SCP_R 751 0 2{INP_R 753 0 "> "{TEXT 0 30 "d:=coeff(coeff(equ, x,
1),y,1);"}}{OUT_R 756 8192 753{DAG :3n3\`d`e3i4x001527675517i2x00
08}}}{SCP_R 758 0 2{INP_R 760 0 "> "{TEXT 0 30 "e:=coeff(coeff(eq
u, x,1),z,1);"}}{OUT_R 763 8192 760{DAG :3n3\`e`e3i4x007628154500
i2x0009}}}{SCP_R 765 0 2{INP_R 767 0 "> "{TEXT 0 27 "f:=coeff(coe
ff(equ,y,1),z);"}}{OUT_R 770 8192 767{DAG :3n3\`f`e3i4x0022560784
58i2x0008}}}{SCP_R 772 0 2{INP_R 774 0 "> "{TEXT 0 27 "g:=tcoeff(
coeff(equ, x,1));"}}{OUT_R 777 8192 774{DAG :3n3\`g`e3i4x00408582
5107i2x0008}}}{SCP_R 779 0 2{INP_R 781 0 "> "{TEXT 0 26 "h:=tcoef
f(coeff(equ,y,1));"}}{OUT_R 784 8192 781{DAG :3n3\`h`e3i4x0029643
00178i2x0008}}}{SCP_R 786 0 2{INP_R 788 0 "> "{TEXT 0 26 "i:=tcoe
ff(coeff(equ,z,1));"}}{OUT_R 791 8192 788{DAG :3n3\`i`e3i4x002362
657542i2x0008}}}{SCP_R 793 0 2{INP_R 795 0 "> "{TEXT 0 15 "j:=tco
eff(equ);"}}{OUT_R 798 8192 795{DAG :3n3\`j`e3i3x62111395i2x0008}
}}{SCP_R 800 0 2{INP_R 802 0 "> "{TEXT 0 0 ""}}{OUT_R 805 0 802
{TEXT 2 1 "\012"}}}{SCP_R 807 0 2{INP_R 809 0 "> "{TEXT 0 35 "#yt
ongo := b0 + (x')*b + (x')*B*x; "}}{OUT_R 812 0 809{TEXT 2 1 "\01
2"}}}{SCP_R 814 0 2{INP_R 816 0 "> "{TEXT 0 13 "with(linalg):"}}
{OUT_R 819 0 816{TEXT 2 1 "\012"}}}{SCP_R 821 0 2{INP_R 823 0 "> \+
"{TEXT 0 7 "k := 3;"}}{OUT_R 826 8192 823{DAG :3n3\`k`j2x0003}}}
{SCP_R 828 0 4{INP_R 830 0 "> "{TEXT 0 36 "x1 := 'x1'; x2 := 'x2'
; x3 := 'x3'; "}}{OUT_R 833 8192 830{DAG :3n3\`x1`p1}}{OUT_R 836 
8192 830{DAG :3n3\`x2`p1}}{OUT_R 839 8192 830{DAG :3n3\`x3`p1}}}
{SCP_R 841 0 2{INP_R 843 0 "> "{TEXT 0 84 "ytongo :=    a*x1^2 +b
*x2^2 +c*x3^2 +d*x1*x2 +e*x1*x3 +f*x2*x3 +g*x1 +h*x2 +i*x3 +j;"}}
{OUT_R 846 8192 843{DAG :3n4\`ytongo`+15*3n3\`x1`j2x0002e3j4x0059
56342938i2x0008*5p6j2x0001n3\`x2`p13e3i4x001527675517pF*5p6p13n3\
`x3`p13e3i4x007628154500i2x0009p6e3i4x004085825107pF*3p15p8e3j4x0
05315782693pF*5p15p13p21p13e3i4x002256078458pFp15e3i4x00296430017
8pF*3p21p8e3j4x004674348676pFp21e3i4x002362657542pFe3i3x62111395p
Fp13}}}{SCP_R 848 0 2{INP_R 850 0 "> "{TEXT 0 16 "               \+
 "}}{OUT_R 853 0 850{TEXT 2 1 "\012"}}}{SCP_R 855 0 2{INP_R 857 0
 "> "{TEXT 0 18 "                  "}}{OUT_R 860 0 857{TEXT 2 1 "
\012"}}}{SCP_R 862 0 2{INP_R 864 0 "> "{TEXT 0 29 "sort(ytongo,[x
1,x2,x3],plex);"}}{OUT_R 867 8192 864{DAG +15*3n3\`x1`j2x0002e3j4
x005956342938i2x0008*5p2j2x0001n3\`x2`pFe3i4x001527675517pB*5p2pF
n3\`x3`pFe3i4x007628154500i2x0009p2e3i4x004085825107pB*3p11p4e3j4
x005315782693pB*5p11pFp1DpFe3i4x002256078458pBp11e3i4x00296430017
8pB*3p1Dp4e3j4x004674348676pBp1De3i4x002362657542pBe3i3x62111395p
BpF}}}{SCP_R 869 0 2{INP_R 871 0 "> "{TEXT 0 21 "b0 := tcoeff(yto
ngo);"}}{OUT_R 874 8192 871{DAG :3n3\`b0`e3i3x62111395i2x0008}}}
{SCP_R 876 0 4{INP_R 878 0 "> "{TEXT 0 99 "b1 := tcoeff(coeff(yto
ngo,x1,1));b2 := tcoeff(coeff(ytongo,x2,1));b3 := tcoeff(coeff(yt
ongo,x3,1));"}}{OUT_R 881 8192 878{DAG :3n3\`b1`e3i4x004085825107
i2x0008}}{OUT_R 884 8192 878{DAG :3n3\`b2`e3i4x002964300178i2x000
8}}{OUT_R 887 8192 878{DAG :3n3\`b3`e3i4x002362657542i2x0008}}}
{SCP_R 889 0 2{INP_R 891 0 "> "{TEXT 0 29 "bm := matrix(3,1,[b1,b
2,b3]);"}}{OUT_R 894 8192 891{DAG :3n3\`bm`(3n4\`MATRIX`,2[2,4[2,
2e3i4x004085825107i2x0008[2,2e3i4x002964300178p11[2,2e3i4x0023626
57542p11}}}{SCP_R 896 0 4{INP_R 898 0 "> "{TEXT 0 100 "b11 := coe
ff(ytongo,x1,2);b12 :=coeff(coeff(ytongo,x1,1),x2,1);b13 :=coeff(
coeff(ytongo,x1,1),x3,1);"}}{OUT_R 901 8192 898{DAG :3n3\`b11`e3j
4x005956342938i2x0008}}{OUT_R 904 8192 898{DAG :3n3\`b12`e3i4x001
527675517i2x0008}}{OUT_R 907 8192 898{DAG :3n3\`b13`e3i4x00762815
4500i2x0009}}}{SCP_R 909 0 4{INP_R 911 0 "> "{TEXT 0 72 "b21 :=b1
2;b22 :=coeff(ytongo,x2,2);b23 :=coeff(coeff(ytongo,x2,1),x3,1);"
}}{OUT_R 914 8192 911{DAG :3n3\`b21`e3i4x001527675517i2x0008}}
{OUT_R 917 8192 911{DAG :3n3\`b22`e3j4x005315782693i2x0008}}
{OUT_R 920 8192 911{DAG :3n3\`b23`e3i4x002256078458i2x0008}}}
{SCP_R 922 0 2{INP_R 924 0 "> "{TEXT 0 0 ""}}{OUT_R 927 0 924
{TEXT 2 1 "\012"}}}{SCP_R 929 0 4{INP_R 931 0 "> "{TEXT 0 45 "b31
 :=b13;b32 :=b23;b33 :=coeff(ytongo,x3,2);"}}{OUT_R 934 8192 931
{DAG :3n3\`b31`e3i4x007628154500i2x0009}}{OUT_R 937 8192 931{DAG 
:3n3\`b32`e3i4x002256078458i2x0008}}{OUT_R 940 8192 931{DAG :3n3\
`b33`e3j4x004674348676i2x0008}}}{SCP_R 942 0 2{INP_R 944 0 "> "
{TEXT 0 70 "B:= matrix(3,3,[b11,b12/2,b13/2,b21/2,b22,b23/2,b31/2
,b32/2,b33]);    "}}{OUT_R 947 8192 944{DAG :3n3\`B`(3n4\`MATRIX`
,2[2,4[2,4e3j4x005956342938i2x0008e3i4x007638377585i2x0009e3i4x00
3814077250p18[2,4p13e3j4x005315782693p11e3i4x001128039229p11[2,4p
1Ap29e3j4x004674348676p11}}}{SCP_R 949 0 2{INP_R 951 0 "> "{TEXT 
0 46 "ValoresCaracteristicos := evalf(Eigenvals(B));"}}{OUT_R 954
 8192 951{DAG :3n8\`ValoresCaracteristicos`(3n4\`VECTOR`,2[2,4e3j
4x003571285020i2x0008e3j4x005826239094p14e3j4x006548950204p14}}}
{SCP_R 956 0 2{INP_R 958 0 "> "{TEXT 0 0 ""}}{OUT_R 961 0 958
{TEXT 2 1 "\012"}}}{SCP_R 963 0 2{INP_R 965 0 "> "{TEXT 0 25 "Val
ores := eigenvects(B);"}}{OUT_R 968 8192 965{DAG :3n4\`Valores`,4
[2,4e3j4x003571285020i2x0008j2x0001%2,2(3n4\`VECTOR`,2[2,4e3j4x00
3115708998i2x0010e3j4x006084028857p1Ee3j4x007299106136p1E[2,4e3j4
x006548950204pCpE%2,2(3p13,2[2,4e3j4x006949195553p1Ee3i4x00669792
4385p1Ee3j4x002616579853p1E[2,4e3j4x005826239094pCpE%2,2(3p13,2[2
,4e3i4x006480820825p1Ee3i4x004257041456p1Ee3j4x006314788953p1E}}}
{SCP_R 970 0 2{INP_R 972 0 "> "{TEXT 0 16 "singularvals(B);"}}
{OUT_R 975 8192 972{DAG [2,4e3j4x003571285019i2x0008e3j4x00582623
9091p7e3j4x006548950201p7}}}{SCP_R 977 0 2{INP_R 979 0 "> "{TEXT 
0 0 ""}}{OUT_R 982 0 979{TEXT 2 1 "\012"}}}{SCP_R 984 0 2{COM_R 
986 0{TEXT 1 197 "       Nota :  De una matriz podemos obtener lo
s lambdas o valores caracter\355sticos, pero en el Maple no pudim
os indicar que valor caracter\355stico est\341 asociado con su ej
e respectivo ya sea x,y o z. "}}{COM_R 989 0{TEXT 1 4 "    "}}}
{SCP_R 991 0 1{OUT_R 993 0 0{TEXT 2 1 "\012"}}}{SCP_R 995 0 2
{INP_R 997 0 "> "{TEXT 0 41 "              lambda[1] := Valores[1
][1];"}}{OUT_R 1000 8192 997{DAG :3b3n4\`lambda`,2j2x0001e3j4x003
571285020i2x0008}}}{SCP_R 1002 0 2{INP_R 1004 0 "> "{TEXT 0 41 " \+
             lambda[2] := Valores[2][1];"}}{OUT_R 1007 8192 1004
{DAG :3b3n4\`lambda`,2j2x0002e3j4x006548950204i2x0008}}}{SCP_R 
1009 0 2{INP_R 1011 0 "> "{TEXT 0 41 "              lambda[3] := \+
Valores[3][1];"}}{OUT_R 1014 8192 1011{DAG :3b3n4\`lambda`,2j2x00
03e3j4x005826239094i2x0008}}}{SCP_R 1016 0 2{INP_R 1018 0 "> "
{TEXT 0 80 "#Condiciones para los lambdas. Deben tener el mismo s
igno para que sea elipsoide"}}{OUT_R 1021 0 1018{TEXT 2 1 "\012"}
}}{SCP_R 1023 0 3{INP_R 1025 0 "> "{TEXT 0 18 "error:= 0; n := 1;
"}}{OUT_R 1028 8192 1025{DAG :3n4\`error`j2x0000}}{OUT_R 1031 
8192 1025{DAG :3n3\`n`j2x0001}}}{SCP_R 1033 0 3{INP_R 1035 0 "> "
{TEXT 0 29 "positivo := 0; negativo := 0;"}}{OUT_R 1038 8192 1035
{DAG :3n5\`positivo`j2x0000}}{OUT_R 1041 8192 1035{DAG :3n5\`nega
tivo`j2x0000}}}{SCP_R 1043 0 2{INP_R 1045 0 "> "{TEXT 0 15 "while
 (n<=k) do"}}{OUT_R 1048 0 1045{TEXT 2 1 "\012"}}}{SCP_R 1050 0 2
{INP_R 1052 0 "> "{TEXT 0 53 "       if ( Valores[n][1] >= 0) the
n positivo   := 1;"}}{OUT_R 1055 0 1052{TEXT 2 1 "\012"}}}{SCP_R 
1057 0 2{INP_R 1059 0 "> "{TEXT 0 66 "       else                \+
                         negativo := 1;"}}{OUT_R 1062 0 1059{TEXT
 2 1 "\012"}}}{SCP_R 1064 0 2{INP_R 1066 0 "> "{TEXT 0 9 "      f
i;"}}{OUT_R 1069 0 1066{TEXT 2 1 "\012"}}}{SCP_R 1071 0 2{INP_R 
1073 0 "> "{TEXT 0 59 "     if (positivo = 1 and negativo = 1) th
en    error := 1;"}}{OUT_R 1076 0 1073{TEXT 2 1 "\012"}}}{SCP_R 
1078 0 2{INP_R 1080 0 "> "{TEXT 0 15 "     fi;       "}}{OUT_R 
1083 0 1080{TEXT 2 1 "\012"}}}{SCP_R 1085 0 2{INP_R 1087 0 "> "
{TEXT 0 17 "       n := n +1;"}}{OUT_R 1090 0 1087{TEXT 2 1 "\012
"}}}{SCP_R 1092 0 4{INP_R 1094 0 "> "{TEXT 0 3 "od;"}}{OUT_R 1097
 8192 1094{DAG :3n3\`n`j2x0002}}{OUT_R 1100 8192 1094{DAG :3n3\`n
`j2x0003}}{OUT_R 1103 8192 1094{DAG :3n3\`n`j2x0004}}}{SCP_R 1105
 0 2{INP_R 1107 0 "> "{TEXT 0 36 "if ( error = 0 and det(B) <> 0)
 then"}}{OUT_R 1110 0 1107{TEXT 2 1 "\012"}}}{SCP_R 1112 0 2
{COM_R 1114 0{TEXT 1 34 "           Matriz de traslaci\363n XO"}}
{COM_R 1117 0{TEXT 1 0 ""}}}{SCP_R 1119 0 2{INP_R 1121 0 "> "
{TEXT 0 62 "             XO := scalarmul(multiply(evalm(B^(-1)),b
m),-1/2);"}}{OUT_R 1124 0 1121{TEXT 2 1 "\012"}}}{SCP_R 1126 0 2
{INP_R 1128 0 "> "{TEXT 0 98 "             YO := b0 + scalarmul(m
ultiply(transpose(XO),bm),1/2)[1,1]; # ytongo0 := b0 + (x')*b/2"}
}{OUT_R 1131 0 1128{TEXT 2 1 "\012"}}}{SCP_R 1133 0 2{INP_R 1135 
0 "> "{TEXT 0 66 "            if (YO>=0 and positivo=0) then     \+
YO := YO*(-1);     "}}{OUT_R 1138 0 1135{TEXT 2 1 "\012"}}}{SCP_R
 1140 0 2{INP_R 1142 0 "> "{TEXT 0 56 "            elif (YO<0 and
 positivo=1) then             "}}{OUT_R 1145 0 1142{TEXT 2 1 "\01
2"}}}{SCP_R 1147 0 2{INP_R 1149 0 "> "{TEXT 0 65 "               \+
          YO := YO*(-1);       #lambdas negativos;"}}{OUT_R 1152 
0 1149{TEXT 2 1 "\012"}}}{SCP_R 1154 0 2{INP_R 1156 0 "> "{TEXT 0
 27 "            else error :=1;"}}{OUT_R 1159 0 1156{TEXT 2 1 "\
012"}}}{SCP_R 1161 0 2{INP_R 1163 0 "> "{TEXT 0 18 "            f
i;   "}}{OUT_R 1166 0 1163{TEXT 2 1 "\012"}}}{SCP_R 1168 0 2
{INP_R 1170 0 "> "{TEXT 0 11 "           "}}{OUT_R 1173 0 1170
{TEXT 2 1 "\012"}}}{SCP_R 1175 0 2{INP_R 1177 0 "> "{TEXT 0 43 " \+
          a:= sqrt(YO/lambda[1]);evalf(a);"}}{OUT_R 1180 0 1177
{TEXT 2 1 "\012"}}}{SCP_R 1182 0 2{INP_R 1184 0 "> "{TEXT 0 43 " \+
          b:= sqrt(YO/lambda[2]);evalf(b);"}}{OUT_R 1187 0 1184
{TEXT 2 1 "\012"}}}{SCP_R 1189 0 2{INP_R 1191 0 "> "{TEXT 0 43 " \+
          c:= sqrt(YO/lambda[3]);evalf(c);"}}{OUT_R 1194 0 1191
{TEXT 2 1 "\012"}}}{SCP_R 1196 0 2{INP_R 1198 0 "> "{TEXT 0 7 "el
se   "}}{OUT_R 1201 0 1198{TEXT 2 1 "\012"}}}{SCP_R 1203 0 2
{INP_R 1205 0 "> "{TEXT 0 28 "         if (error = 1) then"}}
{OUT_R 1208 0 1205{TEXT 2 1 "\012"}}}{SCP_R 1210 0 2{INP_R 1212 0
 "> "{TEXT 0 113 "                printf(`lambdas de diferentes s
ignos cada una de ellas u otro error de signos \\n`);         qui
t;"}}{OUT_R 1215 0 1212{TEXT 2 1 "\012"}}}{SCP_R 1217 0 2{INP_R 
1219 0 "> "{TEXT 0 30 "          elif (det(B)=0) then"}}{OUT_R 
1222 0 1219{TEXT 2 1 "\012"}}}{SCP_R 1224 0 2{INP_R 1226 0 "> "
{TEXT 0 62 "                 printf(`no es un elipsoide /n`);    \+
    quit;"}}{OUT_R 1229 0 1226{TEXT 2 1 "\012"}}}{SCP_R 1231 0 2
{INP_R 1233 0 "> "{TEXT 0 13 "         else"}}{OUT_R 1236 0 1233
{TEXT 2 1 "\012"}}}{SCP_R 1238 0 2{INP_R 1240 0 "> "{TEXT 0 13 " \+
         fi;"}}{OUT_R 1243 0 1240{TEXT 2 1 "\012"}}}{SCP_R 1245 0
 9{INP_R 1247 0 "> "{TEXT 0 3 "fi;"}}{OUT_R 1250 8192 1247{DAG :3
n3\`XO`(3n4\`MATRIX`,2[2,4[2,2e3j4x004220083761i2x0010[2,2e3j4x00
4220083765p11[2,2e3j4x003890013678p11}}{OUT_R 1253 8192 1247{DAG 
:3n3\`YO`e3i4x002009255865i2x0008}}{OUT_R 1256 8192 1247{DAG :3n3
\`a`e3j4x007500761669i2x0010}}{OUT_R 1259 8192 1247{DAG e3j4x0075
00761669i2x0010}}{OUT_R 1262 8192 1247{DAG :3n3\`b`e3j4x005539005
269i2x0010}}{OUT_R 1265 8192 1247{DAG e3j4x005539005269i2x0010}}
{OUT_R 1268 8192 1247{DAG :3n3\`c`e3j4x005872506023i2x0010}}
{OUT_R 1271 8192 1247{DAG e3j4x005872506023i2x0010}}}{SCP_R 1273 
0 2{INP_R 1275 0 "> "{TEXT 0 97 "#Obteniendo los valores de la ma
triz M, obteniendo valores l,m,n (estan desordenados) en Valores.
"}}{OUT_R 1278 0 1275{TEXT 2 1 "\012"}}}{SCP_R 1280 0 2{INP_R 
1282 0 "> "{TEXT 0 8 "z1 := 1;"}}{OUT_R 1285 8192 1282{DAG :3n3\`
z1`j2x0001}}}{SCP_R 1287 0 2{INP_R 1289 0 "> "{TEXT 0 34 "while (
z1 <= k) do  ;             "}}{OUT_R 1292 0 1289{TEXT 2 1 "\012"}
}}{SCP_R 1294 0 2{INP_R 1296 0 "> "{TEXT 0 37 "         z2 := 1;e
ncontrado := false;"}}{OUT_R 1299 0 1296{TEXT 2 1 "\012"}}}{SCP_R
 1301 0 2{INP_R 1303 0 "> "{TEXT 0 50 "        while (z2<= k and \+
not(encontrado)) do    ;"}}{OUT_R 1306 0 1303{TEXT 2 1 "\012"}}}
{SCP_R 1308 0 2{INP_R 1310 0 "> "{TEXT 0 55 "                  if
 (lambda[z1] = Valores[z2][1]) then"}}{OUT_R 1313 0 1310{TEXT 2 1
 "\012"}}}{SCP_R 1315 0 2{INP_R 1317 0 "> "{TEXT 0 66 "          \+
                          TM[z1,1] := Valores[z2][3][1];"}}{OUT_R
 1320 0 1317{TEXT 2 1 "\012"}}}{SCP_R 1322 0 2{INP_R 1324 0 "> "
{TEXT 0 55 "                                    encontrado := tru
e;"}}{OUT_R 1327 0 1324{TEXT 2 1 "\012"}}}{SCP_R 1329 0 2{INP_R 
1331 0 "> "{TEXT 0 23 "                   fi; "}}{OUT_R 1334 0 
1331{TEXT 2 1 "\012"}}}{SCP_R 1336 0 2{INP_R 1338 0 "> "{TEXT 0 
30 "                  z2 := z2 +1;"}}{OUT_R 1341 0 1338{TEXT 2 1 
"\012"}}}{SCP_R 1343 0 2{INP_R 1345 0 "> "{TEXT 0 19 "        od;
        "}}{OUT_R 1348 0 1345{TEXT 2 1 "\012"}}}{SCP_R 1350 0 2
{INP_R 1352 0 "> "{TEXT 0 20 "       z1 := z1 + 1;"}}{OUT_R 1355 
0 1352{TEXT 2 1 "\012"}}}{SCP_R 1357 0 10{INP_R 1359 0 "> "{TEXT 
0 3 "od;"}}{OUT_R 1362 8192 1359{DAG :3n3\`z2`j2x0001}}{OUT_R 
1365 8192 1359{DAG :3n5\`encontrado`n4\`false`}}{OUT_R 1368 8192 
1359{DAG :3n3\`z1`j2x0002}}{OUT_R 1371 8192 1359{DAG :3n3\`z2`j2x
0001}}{OUT_R 1374 8192 1359{DAG :3n5\`encontrado`n4\`false`}}
{OUT_R 1377 8192 1359{DAG :3n3\`z1`j2x0003}}{OUT_R 1380 8192 1359
{DAG :3n3\`z2`j2x0001}}{OUT_R 1383 8192 1359{DAG :3n5\`encontrado
`n4\`false`}}{OUT_R 1386 8192 1359{DAG :3n3\`z1`j2x0004}}}{SCP_R 
1388 0 2{INP_R 1390 0 "> "{TEXT 0 9 "eval(TM);"}}{OUT_R 1393 8192
 1390{DAG (3n4\`TABLE`,2[2,4=3,3j2x0001p9(3n4\`VECTOR`,2[2,4e3j4x
003115708998i2x0010e3j4x006084028857p18e3j4x007299106136p18=3,3j2
x0002p9(3pD,2[2,4e3j4x006949195553p18e3i4x006697924385p18e3j4x002
616579853p18=3,3j2x0003p9(3pD,2[2,4e3i4x006480820825p18e3i4x00425
7041456p18e3j4x006314788953p18}}}{SCP_R 1395 0 2{INP_R 1397 0 "> \+
"{TEXT 0 0 ""}}{OUT_R 1400 0 1397{TEXT 2 1 "\012"}}}{SCP_R 1402 0
 2{INP_R 1404 0 "> "{TEXT 0 49 "V1 := vector([TM[1,1][1],TM[1,1][
2],TM[1,1][3]]);"}}{OUT_R 1407 8192 1404{DAG :3n3\`V1`(3n4\`VECTO
R`,2[2,4e3j4x003115708998i2x0010e3j4x006084028857pFe3j4x007299106
136pF}}}{SCP_R 1409 0 2{INP_R 1411 0 "> "{TEXT 0 21 "V1n := norma
lize(V1);"}}{OUT_R 1414 8192 1411{DAG :3n3\`V1n`(3n4\`VECTOR`,2[2
,4e3j4x003115708995i2x0010e3j4x006084028851pFe3j4x007299106129pF}
}}{SCP_R 1416 0 2{INP_R 1418 0 "> "{TEXT 0 49 "V2 := vector([TM[2
,1][1],TM[2,1][2],TM[2,1][3]]);"}}{OUT_R 1421 8192 1418{DAG :3n3\
`V2`(3n4\`VECTOR`,2[2,4e3j4x006949195553i2x0010e3i4x006697924385p
Fe3j4x002616579853pF}}}{SCP_R 1423 0 2{INP_R 1425 0 "> "{TEXT 0 
21 "V2n := normalize(V2);"}}{OUT_R 1428 8192 1425{DAG :3n3\`V2n`(
3n4\`VECTOR`,2[2,4e3j4x006949195553i2x0010e3i4x006697924385pFe3j4
x002616579853pF}}}{SCP_R 1430 0 2{INP_R 1432 0 "> "{TEXT 0 49 "V3
 := vector([TM[3,1][1],TM[3,1][2],TM[3,1][3]]);"}}{OUT_R 1435 
8192 1432{DAG :3n3\`V3`(3n4\`VECTOR`,2[2,4e3i4x006480820825i2x001
0e3i4x004257041456pFe3j4x006314788953pF}}}{SCP_R 1437 0 2{INP_R 
1439 0 "> "{TEXT 0 21 "V3n := normalize(V3);"}}{OUT_R 1442 8192 
1439{DAG :3n3\`V3n`(3n4\`VECTOR`,2[2,4e3i4x006480820819i2x0010e3i
4x004257041452pFe3j4x006314788947pF}}}{SCP_R 1444 0 1{COM_R 1446 
0{TEXT 1 21 "   Matriz de rotaci\363n"}}}{SCP_R 1448 0 2{INP_R 
1450 0 "> "{TEXT 0 38 "M := transpose(matrix([V1n,V2n,V3n]));"}}
{OUT_R 1453 8192 1450{DAG :3n3\`M`(3n4\`MATRIX`,2[2,4[2,4e3j4x003
115708995i2x0010e3j4x006949195553p11e3i4x006480820819p11[2,4e3j4x
006084028851p11e3i4x006697924385p11e3i4x004257041452p11[2,4e3j4x0
07299106129p11e3j4x002616579853p11e3j4x006314788947p11}}}{SCP_R 
1455 0 1{INP_R 1457 0 "> "{TEXT 0 0 ""}}}}{END}
