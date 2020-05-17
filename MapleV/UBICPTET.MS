{VERSION 1 1 "MS-Windows" "1.0"}{GLOBALS 1 2}{FONT 0 "Arial" "Ari
al" "Helvetica-Bold" 7 12 0 "Helvetica-Bold" 12{COLOR "0000ff"}}
{FONT 1 "Times New Roman" "Times New Roman" "Times-Roman" 4 12 64
 "Times-Roman" 12{COLOR "000000"}}{FONT 2 "Courier New" "Courier \+
New" "Courier" 4 12 192 "Courier" 12{COLOR "000000"}}{SCP_R 0 0 
56{SCP_R 1 0 1{COM_R 3 0{TEXT 1 78 "C\341lculo de la ubicaci\363n
 en el tetrahedro de una composici\363n de 4 componentes. "}}}
{SCP_R 5 0 2{INP_R 7 0 "> "{TEXT 0 0 ""}}{OUT_R 10 0 7{TEXT 2 1 "
\012"}}}{SCP_R 12 0 2{INP_R 14 0 "> "{TEXT 0 13 "with(linalg):"}}
{OUT_R 17 0 14{TEXT 2 72 "Warning: new definition for   norm\012W
arning: new definition for   trace\012\012"}}}{SCP_R 19 0 1{COM_R
 21 0{TEXT 1 106 "Los vectores a,b,c que est\341n dibujados en la
 figura anterior, esta figura tiene el v\351rtice 1 en el origen.
"}}}{SCP_R 23 0 11{INP_R 25 0 "> "{TEXT 0 83 "i:='i'; j:='j';k:='
k';p1 := 'p1';p2:='p2';p3:='p3';p4:='p4';x :='x';y :='y';z:='z';"
}}{OUT_R 28 8192 25{DAG :3n3\`i`p1}}{OUT_R 31 8192 25{DAG :3n3\`j
`p1}}{OUT_R 34 8192 25{DAG :3n3\`k`p1}}{OUT_R 37 8192 25{DAG :3n3
\`p1`p1}}{OUT_R 40 8192 25{DAG :3n3\`p2`p1}}{OUT_R 43 8192 25{DAG
 :3n3\`p3`p1}}{OUT_R 46 8192 25{DAG :3n3\`p4`p1}}{OUT_R 49 8192 
25{DAG :3n3\`x`p1}}{OUT_R 52 8192 25{DAG :3n3\`y`p1}}{OUT_R 55 
8192 25{DAG :3n3\`z`p1}}}{SCP_R 57 0 2{INP_R 59 0 "> "{TEXT 0 31 
"#a=v2, b=v3, c=v4, d=(0,0,0)=v1"}}{OUT_R 62 0 59{TEXT 2 1 "\012"
}}}{SCP_R 64 0 5{INP_R 66 0 "> "{TEXT 0 151 "a := vector([sqrt(3/
2),0,0]); b := vector([(1/2)*sqrt(3/2),0,(3/2)*sqrt(1/2)]); c := \+
vector([(1/2)*sqrt(3/2),1,(1/2)*sqrt(1/2)]); d := vector([0,0,0])
;"}}{OUT_R 69 8192 66{DAG :3n3\`a`(3n4\`VECTOR`,2[2,4+3*3j2x0006/
3j2x0001j2x0002pEj2x0000p14}}{OUT_R 72 8192 66{DAG :3n3\`b`(3n4\`
VECTOR`,2[2,4+3*3j2x0006/3j2x0001j2x0002/3pFj2x0004j2x0000+3*3p11
pE/3j2x0003p15}}{OUT_R 75 8192 66{DAG :3n3\`c`(3n4\`VECTOR`,2[2,4
+3*3j2x0006/3j2x0001j2x0002/3pFj2x0004pF+3*3p11pEp13}}{OUT_R 78 
8192 66{DAG :3n3\`d`(3n4\`VECTOR`,2[2,4j2x0000pApA}}}{SCP_R 80 0 
1{COM_R 82 0{TEXT 1 0 ""}}}{SCP_R 84 0 2{INP_R 86 0 "> "{TEXT 0 
110 "M1 := matrix([[x-a[1], y-a[2], z-a[3]], [b[1]-a[1], b[2]-a[2
], b[3]-a[3]],[c[1]-a[1], c[2]-a[2], c[3]-a[3]]]);"}}{OUT_R 89 
8192 86{DAG :3n3\`M1`(3n4\`MATRIX`,2[2,4[2,4+5n3\`x`j2x0001*3j2x0
006/3pFj2x0002/3i2x0001p16n3\`y`n3\`z`[2,4+3p11/3p19j2x0004j2x000
0+3*3p16p14/3j2x0003p26[2,4p22pF+3p2B/3pFp26}}}{SCP_R 91 0 2
{INP_R 93 0 "> "{TEXT 0 34 "S1 := solve(det(M1)=0, \{x, y, z\});"
}}{OUT_R 96 8192 93{DAG :3n3\`S1`%2,4=3n3\`x`p6=3n3\`y`pA=3n3\`z`
+3*5j2x0002/3j2x0001p12+7*5j2x0006p14p6p15p15i2x0003p15pAp15p15/3
i2x0001p12}}}{SCP_R 98 0 2{INP_R 100 0 "> "{TEXT 0 0 ""}}{OUT_R 
103 0 100{TEXT 2 1 "\012"}}}{SCP_R 105 0 2{INP_R 107 0 "> "{TEXT 
0 110 "M2 := matrix([[x-d[1], y-d[2], z-d[3]], [b[1]-d[1], b[2]-d
[2], b[3]-d[3]],[c[1]-d[1], c[2]-d[2], c[3]-d[3]]]);"}}{OUT_R 110
 8192 107{DAG :3n3\`M2`(3n4\`MATRIX`,2[2,4[2,4n3\`x`n3\`y`n3\`z`[
2,4+3*3j2x0006/3j2x0001j2x0002/3p19j2x0004j2x0000+3*3p1Bp18/3j2x0
003p1F[2,4p14p19+3p24p1D}}}{SCP_R 112 0 2{INP_R 114 0 "> "{TEXT 0
 34 "S2 := solve(det(M2)=0, \{x, y, z\});"}}{OUT_R 117 8192 114
{DAG :3n3\`S2`%2,4=3n3\`z`+3*5j2x0002/3j2x0001pA+5*5j2x0006pCn3\`
x`pDpDn3\`y`i2x0001pDpC=3p15p15=3p19p19}}}{SCP_R 119 0 2{INP_R 
121 0 "> "{TEXT 0 0 ""}}{OUT_R 124 0 121{TEXT 2 1 "\012"}}}{SCP_R
 126 0 2{INP_R 128 0 "> "{TEXT 0 110 "M3 := matrix([[x-a[1], y-a[
2], z-a[3]], [d[1]-a[1], d[2]-a[2], d[3]-a[3]],[c[1]-a[1], c[2]-a
[2], c[3]-a[3]]]);"}}{OUT_R 131 8192 128{DAG :3n3\`M3`(3n4\`MATRI
X`,2[2,4[2,4+5n3\`x`j2x0001*3j2x0006/3pFj2x0002/3i2x0001p16n3\`y`
n3\`z`[2,4+3p11p18j2x0000p25[2,4+3p11/3p19j2x0004pF+3*3p16p14/3pF
p2E}}}{SCP_R 133 0 2{INP_R 135 0 "> "{TEXT 0 34 "S3 := solve(det(
M3)=0, \{x, y, z\});"}}{OUT_R 138 8192 135{DAG :3n3\`S3`%2,4=3n3\
`x`p6=3n3\`y`pA=3n3\`z`+3*5pAj2x0001j2x0002/3p13p15/3p13j2x0004}}
}{SCP_R 140 0 2{INP_R 142 0 "> "{TEXT 0 0 ""}}{OUT_R 145 0 142
{TEXT 2 1 "\012"}}}{SCP_R 147 0 2{INP_R 149 0 "> "{TEXT 0 110 "M4
 := matrix([[x-a[1], y-a[2], z-a[3]], [b[1]-a[1], b[2]-a[2], b[3]
-a[3]],[d[1]-a[1], d[2]-a[2], d[3]-a[3]]]);"}}{OUT_R 152 8192 149
{DAG :3n3\`M4`(3n4\`MATRIX`,2[2,4[2,4+5n3\`x`j2x0001*3j2x0006/3pF
j2x0002/3i2x0001p16n3\`y`n3\`z`[2,4+3p11/3p19j2x0004j2x0000+3*3p1
6p14/3j2x0003p26[2,4+3p11p18p28p28}}}{SCP_R 154 0 2{INP_R 156 0 "
> "{TEXT 0 32 "S4 := solve(det(M4)=0, \{x,y,z\});"}}{OUT_R 159 
8192 156{DAG :3n3\`S4`%2,4=3n3\`x`p6=3n3\`y`j2x0000=3n3\`z`pF}}}
{SCP_R 161 0 5{INP_R 163 0 "> "{TEXT 0 56 "D1 := det(M1);D2 := de
t(M2);D3 := det(M3);D4 := det(M4);"}}{OUT_R 166 8192 163{DAG :3n3
\`D1`+9*5j2x0002/3j2x0001p5n3\`x`p8/3i2x0003j2x0004*5p5p7j2x0006p
7/3j2x0003j2x0008*7p16p7n3\`y`p8p5p7/3i2x0001p1C*5p16p7n3\`z`p8/3
p27p11}}{OUT_R 169 8192 163{DAG :3n3\`D2`+7*5j2x0002/3j2x0001p5n3
\`x`p8/3i2x0003j2x0004*7j2x0006p7n3\`y`p8p5p7/3p8j2x0008*5p14p7n3
\`z`p8/3p8p11}}{OUT_R 172 8192 163{DAG :3n3\`D3`+3*5j2x0006/3j2x0
001j2x0002+5*5n3\`y`p8pAp7/3p8j2x0004n3\`z`i2x0001p8p7}}{OUT_R 
175 8192 163{DAG :3n3\`D4`+3*7j2x0006/3j2x0001j2x0002n3\`y`p8pAp7
/3i2x0003j2x0008}}}{SCP_R 177 0 2{INP_R 179 0 "> "{TEXT 0 17 "D3 \+
:= expand(D3);"}}{OUT_R 182 8192 179{DAG :3n3\`D3`+5*7j2x0006/3j2
x0001j2x0002n3\`y`p8pAp7/3p8j2x0008*5p5p7n3\`z`p8/3i2x0001pA}}}
{SCP_R 184 0 2{INP_R 186 0 "> "{TEXT 0 12 "simplify(\");"}}{OUT_R
 189 8192 186{DAG +5*5j2x0003/3j2x0001j2x0002n3\`y`p5/3p5j2x0004*
7p7p4p2p4n3\`z`p5/3i2x0001p7}}}{SCP_R 191 0 2{INP_R 193 0 "> "
{TEXT 0 72 "Ec1 := p1= ( (D1) / sqrt(coeff(D1,x)**2+coeff(D1,y)**
2+coeff(D1,z)**2));"}}{OUT_R 196 8192 193{DAG :3n3\`Ec1`=3n3\`p1`
+3*5+9*5j2x0002/3j2x0001pAn3\`x`pD/3i2x0003j2x0004*5pApCj2x0006pC
/3j2x0003j2x0008*7p1BpCn3\`y`pDpApC/3i2x0001p21*5p1BpCn3\`z`pD/3p
2Cp16pDp1FpC/3p16j2x0009}}}{SCP_R 198 0 2{INP_R 200 0 "> "{TEXT 0
 12 "simplify(\");"}}{OUT_R 203 8192 200{DAG =3n3\`p1`+3*5+9*5j2x
0002/3j2x0001p7n3\`x`pAj2x0003*3p10p9i2x0003*5p10p9n3\`y`pApA*7p7
p9p10p9n3\`z`pApApAp10p9/3i2x0001j2x0009}}}{SCP_R 205 0 2{INP_R 
207 0 "> "{TEXT 0 10 "factor(\");"}}{OUT_R 210 8192 207{DAG =3n3\
`p1`+3*5j2x0002/3j2x0001p5+9*5j2x0003p7n3\`x`p8p5*3p5p7i2x0003*5n
3\`y`p8p5p7p8n3\`z`p5p8/3i2x0001j2x0006}}}{SCP_R 212 0 2{INP_R 
214 0 "> "{TEXT 0 74 "Ec2 := p2 = ( (-D2) / sqrt(coeff(D2,x)**2+c
oeff(D2,y)**2+coeff(D2,z)**2));"}}{OUT_R 217 8192 214{DAG :3n3\`E
c2`=3n3\`p2`+3*5+7*5j2x0002/3j2x0001pAn3\`x`pD/3i2x0003j2x0004*7j
2x0006pCn3\`y`pDpApC/3pDj2x0008*5p19pCn3\`z`pD/3pDp16pDj2x0003pC/
3i2x0004j2x0009}}}{SCP_R 219 0 2{INP_R 221 0 "> "{TEXT 0 12 "simp
lify(\");"}}{OUT_R 224 8192 221{DAG =3n3\`p2`+3*5+7*5j2x0002/3j2x
0001p7n3\`x`pAi2x0003*5j2x0003p9n3\`y`pApA*7p7p9p13p9n3\`z`pApApA
p13p9/3i2x0001j2x0009}}}{SCP_R 226 0 2{INP_R 228 0 "> "{TEXT 0 10
 "factor(\");"}}{OUT_R 231 8192 228{DAG =3n3\`p2`+3*5j2x0002/3j2x
0001p5+7*5j2x0003p7n3\`x`p8i2x0002*5n3\`y`p8p5p7p8n3\`z`p5p8/3i2x
0001j2x0006}}}{SCP_R 233 0 2{INP_R 235 0 "> "{TEXT 0 71 "Ec3 := p
3 = ( (-D3) / sqrt(coeff(D3,x)^2+coeff(D3,y)^2+coeff(D3,z)^2));"}
}{OUT_R 238 8192 235{DAG :3n3\`Ec3`=3n3\`p3`+3*5+5*7j2x0006/3j2x0
001j2x0002n3\`y`pDpFpC/3pDj2x0008*5pApCn3\`z`pD/3i2x0001pFpDj2x00
03pC/3i2x0004j2x0009}}}{SCP_R 240 0 2{INP_R 242 0 "> "{TEXT 0 12 
"simplify(\");"}}{OUT_R 245 8192 242{DAG =3n3\`p3`+5n3\`y`/3i2x00
01j2x0003*5j2x0002/3j2x0001pCn3\`z`pF/3pCp9}}}{SCP_R 247 0 2
{INP_R 249 0 "> "{TEXT 0 10 "factor(\");"}}{OUT_R 252 8192 249
{DAG =3n3\`p3`+3*5j2x0002/3j2x0001p5+5*5n3\`y`p8p5p7i2x0001n3\`z`
j2x0004p8/3p8j2x0006}}}{SCP_R 254 0 2{INP_R 256 0 "> "{TEXT 0 74 
" Ec4 := p4= ( (-D4) / sqrt(coeff(D4,x)**2+coeff(D4,y)**2+coeff(D
4,z)**2));"}}{OUT_R 259 8192 256{DAG :3n3\`Ec4`=3n3\`p4`+3*9j2x00
06/3j2x0001j2x0002n3\`y`pBpDpAj2x0003pA/3pBp8}}}{SCP_R 261 0 2
{INP_R 263 0 "> "{TEXT 0 12 "simplify(\");"}}{OUT_R 266 8192 263
{DAG =3n3\`p4`n3\`y`}}}{SCP_R 268 0 2{INP_R 270 0 "> "{TEXT 0 32 
"solve(\{ Ec2, Ec3, Ec4\},\{x,y,z\});"}}{OUT_R 273 8192 270{DAG %
2,4=3n3\`y`+3*9j2x0006/3j2x0001j2x0002pCp9n3\`p4`pAj2x0003p9/3pAp
7=3n3\`x`+3*7+7n3\`p2`pCp10pAn3\`p3`pApApCp9p13p9/3pAj2x0004=3n3\
`z`+3*7p13p9p7p9+5p24p13p10pApA/3pAj2x0012}}}{SCP_R 275 0 2{INP_R
 277 0 "> "{TEXT 0 12 "simplify(\");"}}{OUT_R 280 8192 277{DAG %2
,4=3n3\`x`+3*7+7n3\`p2`j2x0002n3\`p4`j2x0001n3\`p3`pEpEpA/3pEpAj2
x0003p15/3pEj2x0004=3n3\`y`pC=3n3\`z`+3*5pAp15+5p10p18pCpEpEp1B}}
}{SCP_R 282 0 2{INP_R 284 0 "> "{TEXT 0 33 "p1 := 0.0:p2 :=0.0:p3
:=0.0:p4:=1:"}}{OUT_R 287 0 284{TEXT 2 1 "\012"}}}{SCP_R 289 0 2
{INP_R 291 0 "> "{TEXT 0 32 "solve(\{ Ec2, Ec3, Ec4\},\{x,y,z\});
"}}{OUT_R 294 8192 291{DAG %2,4=3n3\`z`+3*5j2x0006/3j2x0001j2x000
2j2x0003p9/3pAj2x0012=3n3\`x`+3*5pCp9pEp9/3pAj2x0004=3n3\`y`+3*7p
7p9pEp9pCp9/3pAp7}}}{SCP_R 296 0 2{INP_R 298 0 "> "{TEXT 0 0 ""}}
{OUT_R 301 0 298{TEXT 2 1 "\012"}}}{SCP_R 303 0 2{INP_R 305 0 "> \+
"{TEXT 0 35 "p1 := 0.0:p2 :=0.0:p3:=1.0:p4:=0.0:"}}{OUT_R 308 0 
305{TEXT 2 1 "\012"}}}{SCP_R 310 0 2{INP_R 312 0 "> "{TEXT 0 32 "
solve(\{ Ec2, Ec3, Ec4\},\{x,y,z\});"}}{OUT_R 315 8192 312{DAG %2
,4=3n3\`z`e3j4x001060660172i2x0009=3n3\`x`e3j4x006123724358i2x001
0=3n3\`y`j2x0000}}}{SCP_R 317 0 2{INP_R 319 0 "> "{TEXT 0 0 ""}}
{OUT_R 322 0 319{TEXT 2 1 "\012"}}}{SCP_R 324 0 2{INP_R 326 0 "> \+
"{TEXT 0 33 "p1 := 0.0:p2 :=0.0:p3:=0.0:p4:=1:"}}{OUT_R 329 0 326
{TEXT 2 1 "\012"}}}{SCP_R 331 0 2{INP_R 333 0 "> "{TEXT 0 32 "sol
ve(\{ Ec2, Ec3, Ec4\},\{x,y,z\});"}}{OUT_R 336 8192 333{DAG %2,4=
3n3\`z`+3*5j2x0006/3j2x0001j2x0002j2x0003p9/3pAj2x0012=3n3\`x`+3*
5pCp9pEp9/3pAj2x0004=3n3\`y`+3*7p7p9pEp9pCp9/3pAp7}}}{SCP_R 338 0
 2{INP_R 340 0 "> "{TEXT 0 0 ""}}{OUT_R 343 0 340{TEXT 2 1 "\012"
}}}{SCP_R 345 0 2{INP_R 347 0 "> "{TEXT 0 33 "p1 := 0.0:p2 :=1.0:
p3:=0.0:p4:=0:"}}{OUT_R 350 0 347{TEXT 2 1 "\012"}}}{SCP_R 352 0 
2{INP_R 354 0 "> "{TEXT 0 32 "solve(\{ Ec2, Ec3, Ec4\},\{x,y,z\})
;"}}{OUT_R 357 8192 354{DAG %2,4=3n3\`x`e3j4x001224744872i2x0009=
3n3\`y`j2x0000=3n3\`z`pF}}}{SCP_R 359 0 2{INP_R 361 0 "> "{TEXT 0
 0 ""}}{OUT_R 364 0 361{TEXT 2 1 "\012"}}}{SCP_R 366 0 2{INP_R 
368 0 "> "{TEXT 0 35 "p1 := 0.5:p2 :=0.3:p3:=0.1:p4:=0.1:"}}
{OUT_R 371 0 368{TEXT 2 1 "\012"}}}{SCP_R 373 0 2{INP_R 375 0 "> \+
"{TEXT 0 32 "solve(\{ Ec2, Ec3, Ec4\},\{x,y,z\});"}}{OUT_R 378 
8192 375{DAG %2,4=3n3\`y`e3j4x009999999997i2x0011=3n3\`x`e3j4x004
898979486i2x0010=3n3\`z`e3j4x001414213562p14}}}{SCP_R 380 0 2
{INP_R 382 0 "> "{TEXT 0 0 ""}}{OUT_R 385 0 382{TEXT 2 1 "\012"}}
}{SCP_R 387 0 2{INP_R 389 0 "> "{TEXT 0 37 "p1 := 0.8:p2 :=0.1:p3
:=0.05:p4:=0.05:"}}{OUT_R 392 0 389{TEXT 2 1 "\012"}}}{SCP_R 394 
0 2{INP_R 396 0 "> "{TEXT 0 32 "solve(\{ Ec2, Ec3, Ec4\},\{x,y,z\
});"}}{OUT_R 399 8192 396{DAG %2,4=3n3\`z`e3j4x007071067810i2x001
1=3n3\`y`e3j4x004999999999pA=3n3\`x`e3j4x001837117307i2x0010}}}
{SCP_R 401 0 1{INP_R 403 0 "> "{TEXT 0 0 ""}}}{SCP_R 405 0 2
{INP_R 407 0 "> "{TEXT 0 35 "p1 := 0.1:p2 :=0.2:p3:=0.3:p4:=0.4:"
}}{OUT_R 410 0 407{TEXT 2 1 "\012"}}}{SCP_R 412 0 2{INP_R 414 0 "
> "{TEXT 0 32 "solve(\{ Ec2, Ec3, Ec4\},\{x,y,z\});"}}{OUT_R 417 
8192 414{DAG %2,4=3n3\`z`e3j4x004596194076i2x0010=3n3\`y`e3j4x003
999999999pA=3n3\`x`e3j4x006736096793pA}}}{SCP_R 419 0 1{INP_R 421
 0 "> "{TEXT 0 0 ""}}}}{END}
