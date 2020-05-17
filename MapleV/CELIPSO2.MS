{VERSION 1 1 "MS-Windows" "1.0"}{GLOBALS 1 2}{FONT 0 "Arial" "Ari
al" "Helvetica-Bold" 7 10 0 "Helvetica-Bold" 10{COLOR "800080"}}
{FONT 1 "Times New Roman" "Times New Roman" "Times-Bold" 7 11 64 
"Times-Bold" 11{COLOR "000000"}}{FONT 2 "Courier New" "Courier Ne
w" "Courier" 4 10 192 "Courier" 10{COLOR "000000"}}{SCP_R 0 0 91
{SCP_R 1 0 3{COM_R 3 0{TEXT 1 2 "  "}}{COM_R 6 0{TEXT 1 62 "     \+
Reducci\363n de una ecuacion cuadr\341tica a la forma can\363nica
."}}{COM_R 9 0{TEXT 1 52 "        (pensando principalmente hacia \+
el elipsoide)"}}}{SCP_R 11 0 2{INP_R 13 0 "> "{TEXT 0 35 "#FREsti
mada := b0 + b1*x + b11*x^2;"}}{OUT_R 16 0 13{TEXT 2 1 "\012"}}}
{SCP_R 18 0 2{INP_R 20 0 "> "{TEXT 0 15 "#with(liesymm);"}}{OUT_R
 23 0 20{TEXT 2 1 "\012"}}}{SCP_R 25 0 2{INP_R 27 0 "> "{TEXT 0 
39 "#Primeraderivada := Diff(FREstimada,x);"}}{OUT_R 30 0 27{TEXT
 2 1 "\012"}}}{SCP_R 32 0 2{INP_R 34 0 "> "{TEXT 0 31 "#PD := dva
lue(Primeraderivada);"}}{OUT_R 37 0 34{TEXT 2 1 "\012"}}}{SCP_R 
39 0 2{INP_R 41 0 "> "{TEXT 0 21 "#xm := solve(PD=0,x);"}}{OUT_R 
44 0 41{TEXT 2 1 "\012"}}}{SCP_R 46 0 2{INP_R 48 0 "> "{TEXT 0 27
 "#Funcion Ajustada de 2Orden"}}{OUT_R 51 0 48{TEXT 2 1 "\012"}}}
{SCP_R 53 0 2{INP_R 55 0 "> "{TEXT 0 35 "#ytongo := b0 + (x')*b +
 (x')*B*x; "}}{OUT_R 58 0 55{TEXT 2 1 "\012"}}}{SCP_R 60 0 2
{INP_R 62 0 "> "{TEXT 0 13 "with(linalg);"}}{OUT_R 65 8192 62{DAG
 [2,6An6\`BlockDiagonal`n5\`GramSchmidt`n5\`JordanBlock`n5\`Wrons
kian`n3\`add`n4\`addcol`n4\`addrow`n3\`adj`n4\`adjoint`n4\`angle`
n4\`augment`n4\`backsub`n4\`band`n4\`basis`n4\`bezout`n5\`blockma
trix`n4\`charmat`n5\`charpoly`n3\`col`n4\`coldim`n5\`colspace`n4\
`colspan`n5\`companion`n4\`concat`n4\`cond`n5\`copyinto`n5\`cross
prod`n4\`curl`n5\`definite`n4\`delcols`n4\`delrows`n3\`det`n4\`di
ag`n4\`diverge`n4\`dotprod`n5\`eigenvals`n5\`eigenvects`n5\`enter
matrix`n4\`equal`n5\`exponential`n4\`extend`n5\`ffgausselim`n5\`f
ibonacci`n5\`frobenius`n5\`gausselim`n5\`gaussjord`n5\`genmatrix`
n4\`grad`n5\`hadamard`n4\`hermite`n4\`hessian`n4\`hilbert`n5\`htr
anspose`n5\`ihermite`n5\`indexfunc`n5\`innerprod`n5\`intbasis`n4\
`inverse`n4\`ismith`n4\`iszero`n5\`jacobian`n4\`jordan`n4\`kernel
`n5\`laplacian`n5\`leastsqrs`n5\`linsolve`n4\`matrix`n4\`minor`n4
\`minpoly`n4\`mulcol`n4\`mulrow`n5\`multiply`n4\`norm`n5\`normali
ze`n5\`nullspace`n4\`orthog`n5\`permanent`n4\`pivot`n5\`potential
`n5\`randmatrix`n5\`randvector`n4\`rank`n4\`ratform`n3\`row`n4\`r
owdim`n5\`rowspace`n4\`rowspan`n4\`rref`n5\`scalarmul`n6\`singula
rvals`n4\`smith`n4\`stack`n5\`submatrix`n5\`subvector`n5\`sumbasi
s`n4\`swapcol`n4\`swaprow`n5\`sylvester`n5\`toeplitz`n4\`trace`n5
\`transpose`n5\`vandermonde`n5\`vecpotent`n4\`vectdim`n4\`vector`
}}}{SCP_R 67 0 2{INP_R 69 0 "> "{TEXT 0 7 "k := 3;"}}{OUT_R 72 
8192 69{DAG :3n3\`k`j2x0003}}}{SCP_R 74 0 3{INP_R 76 0 "> "{TEXT 
0 57 "XM := matrix(k,1,[x1,x2, x3]);b:= matrix(k,1,[b1,b2,b3]);"}
}{OUT_R 79 8192 76{DAG :3n3\`XM`(3n4\`MATRIX`,2[2,4[2,2n3\`x1`[2,
2n3\`x2`[2,2n3\`x3`}}{OUT_R 82 8192 76{DAG :3n3\`b`(3n4\`MATRIX`,
2[2,4[2,2e3i4x005252926374i2x0007[2,2e3j4x002821618562p11[2,2e3j4
x002561047300p11}}}{SCP_R 84 0 2{INP_R 86 0 "> "{TEXT 0 165 "BM:=
 matrix(k,k,[b11,b12/2,b13/2,b21/2,b22,b23/2,b31/2,b32/2,b33]);  \+
                                                                 \+
                               "}}{OUT_R 89 8192 86{DAG :3n3\`BM`
(3n4\`MATRIX`,2[2,4[2,4e3j4x009910146422i2x0008e3i4x005491411770p
11e3i4x004334152912p11[2,4p13e3j4x004601642037p11e3j4x00481421213
5i2x0009[2,4p19p28e3j4x006771909333p11}}}{SCP_R 91 0 2{INP_R 93 0
 "> "{TEXT 0 68 "                                                \+
                    "}}{OUT_R 96 0 93{TEXT 2 1 "\012"}}}{SCP_R 98
 0 2{INP_R 100 0 "> "{TEXT 0 0 ""}}{OUT_R 103 0 100{TEXT 2 1 "\01
2"}}}{SCP_R 105 0 2{INP_R 107 0 "> "{TEXT 0 21 "#xo := -((B)^-1)*
b/2;"}}{OUT_R 110 0 107{TEXT 2 1 "\012"}}}{SCP_R 112 0 2{INP_R 
114 0 "> "{TEXT 0 54 "#ytongo := ytongoo + lambda1*w1**2+ ...+lam
bdak*wk**2;"}}{OUT_R 117 0 114{TEXT 2 1 "\012"}}}{SCP_R 119 0 2
{INP_R 121 0 "> "{TEXT 0 10 "#ejemplo :"}}{OUT_R 124 0 121{TEXT 2
 1 "\012"}}}{SCP_R 126 0 2{INP_R 128 0 "> "{TEXT 0 184 "ytongo :=
    99.10146422*x1^2 +46.01642037*x2^2 +67.71909333*x3^2 -109.828
2354*x1*x2 -86.68305824*x1*x3 +9.628424270*x2*x3 -525.2926374*x1 \+
+282.1618562*x2 +256.1047300*x3 +657.7428834;"}}{OUT_R 131 8192 
128{DAG :3n4\`ytongo`+15*3n3\`x1`j2x0002e3j4x009910146422i2x0008*
5p6j2x0001n3\`x2`p13e3i4x001098282354i2x0007*5p6p13n3\`x3`p13e3i4
x008668305824pFp6e3i4x005252926374p1D*3p15p8e3j4x004601642037pF*5
p15p13p22p13e3j4x009628424270i2x0009p15e3j4x002821618562p1D*3p22p
8e3j4x006771909333pFp22e3j4x002561047300p1De3j4x006577428834p1Dp1
3}}}{SCP_R 133 0 2{INP_R 135 0 "> "{TEXT 0 16 "                "}
}{OUT_R 138 0 135{TEXT 2 1 "\012"}}}{SCP_R 140 0 2{INP_R 142 0 ">
 "{TEXT 0 18 "                  "}}{OUT_R 145 0 142{TEXT 2 1 "\01
2"}}}{SCP_R 147 0 2{INP_R 149 0 "> "{TEXT 0 29 "sort(ytongo,[x1,x
2,x3],plex);"}}{OUT_R 152 8192 149{DAG +15*3n3\`x1`j2x0002e3j4x00
9910146422i2x0008*5p2j2x0001n3\`x2`pFe3i4x001098282354i2x0007*5p2
pFn3\`x3`pFe3i4x008668305824pBp2e3i4x005252926374p19*3p11p4e3j4x0
04601642037pB*5p11pFp1EpFe3j4x009628424270i2x0009p11e3j4x00282161
8562p19*3p1Ep4e3j4x006771909333pBp1Ee3j4x002561047300p19e3j4x0065
77428834p19pF}}}{SCP_R 154 0 2{INP_R 156 0 "> "{TEXT 0 21 "b0 := \+
tcoeff(ytongo);"}}{OUT_R 159 8192 156{DAG :3n3\`b0`e3j4x006577428
834i2x0007}}}{SCP_R 161 0 4{INP_R 163 0 "> "{TEXT 0 99 "b1 := tco
eff(coeff(ytongo,x1,1));b2 := tcoeff(coeff(ytongo,x2,1));b3 := tc
oeff(coeff(ytongo,x3,1));"}}{OUT_R 166 8192 163{DAG :3n3\`b1`e3i4
x005252926374i2x0007}}{OUT_R 169 8192 163{DAG :3n3\`b2`e3j4x00282
1618562i2x0007}}{OUT_R 172 8192 163{DAG :3n3\`b3`e3j4x00256104730
0i2x0007}}}{SCP_R 174 0 2{INP_R 176 0 "> "{TEXT 0 28 "b := matrix
(3,1,[b1,b2,b3]);"}}{OUT_R 179 8192 176{DAG :3n3\`b`(3n4\`MATRIX`
,2[2,4[2,2e3i4x005252926374i2x0007[2,2e3j4x002821618562p11[2,2e3j
4x002561047300p11}}}{SCP_R 181 0 4{INP_R 183 0 "> "{TEXT 0 100 "b
11 := coeff(ytongo,x1,2);b12 :=coeff(coeff(ytongo,x1,1),x2,1);b13
 :=coeff(coeff(ytongo,x1,1),x3,1);"}}{OUT_R 186 8192 183{DAG :3n3
\`b11`e3j4x009910146422i2x0008}}{OUT_R 189 8192 183{DAG :3n3\`b12
`e3i4x001098282354i2x0007}}{OUT_R 192 8192 183{DAG :3n3\`b13`e3i4
x008668305824i2x0008}}}{SCP_R 194 0 4{INP_R 196 0 "> "{TEXT 0 72 
"b21 :=b12;b22 :=coeff(ytongo,x2,2);b23 :=coeff(coeff(ytongo,x2,1
),x3,1);"}}{OUT_R 199 8192 196{DAG :3n3\`b21`e3i4x001098282354i2x
0007}}{OUT_R 202 8192 196{DAG :3n3\`b22`e3j4x004601642037i2x0008}
}{OUT_R 205 8192 196{DAG :3n3\`b23`e3j4x009628424270i2x0009}}}
{SCP_R 207 0 4{INP_R 209 0 "> "{TEXT 0 45 "b31 :=b13;b32 :=b23;b3
3 :=coeff(ytongo,x3,2);"}}{OUT_R 212 8192 209{DAG :3n3\`b31`e3i4x
008668305824i2x0008}}{OUT_R 215 8192 209{DAG :3n3\`b32`e3j4x00962
8424270i2x0009}}{OUT_R 218 8192 209{DAG :3n3\`b33`e3j4x0067719093
33i2x0008}}}{SCP_R 220 0 2{INP_R 222 0 "> "{TEXT 0 70 "B:= matrix
(3,3,[b11,b12/2,b13/2,b21/2,b22,b23/2,b31/2,b32/2,b33]);    "}}
{OUT_R 225 8192 222{DAG :3n3\`B`(3n4\`MATRIX`,2[2,4[2,4e3j4x00991
0146422i2x0008e3i4x005491411770p11e3i4x004334152912p11[2,4p13e3j4
x004601642037p11e3j4x004814212135i2x0009[2,4p19p28e3j4x0067719093
33p11}}}{SCP_R 227 0 2{INP_R 229 0 "> "{TEXT 0 46 "ValoresCaracte
risticos := evalf(Eigenvals(B));"}}{OUT_R 232 8192 229{DAG :3n8\`
ValoresCaracteristicos`(3n4\`VECTOR`,2[2,4e3j4x004551081408i2x000
9e3j4x005594171765i2x0008e3j4x001523441791i2x0007}}}{SCP_R 234 0 
2{INP_R 236 0 "> "{TEXT 0 0 ""}}{OUT_R 239 0 236{TEXT 2 1 "\012"}
}}{SCP_R 241 0 2{INP_R 243 0 "> "{TEXT 0 25 "Valores := eigenvect
s(B);"}}{OUT_R 246 8192 243{DAG :3n4\`Valores`,4[2,4e3j4x00152344
1790i2x0007j2x0001%2,2(3n4\`VECTOR`,2[2,4e3i4x007936731953i2x0010
e3j4x004294117002p1Ee3j4x004309158287p1E[2,4e3j4x004551081391i2x0
009pE%2,2(3p13,2[2,4e3j4x005846449067p1Ee3j4x007341902996p1Ee3j4x
003451882642p1E[2,4e3j4x005594171765i2x0008pE%2,2(3p13,2[2,4e3j4x
001681463425p1Ee3i4x005258994176p1Ee3j4x008337605237p1E}}}{SCP_R 
248 0 2{INP_R 250 0 "> "{TEXT 0 16 "singularvals(B);"}}{OUT_R 253
 8192 250{DAG [2,4e3j4x004551082094i2x0009e3j4x005594171772i2x000
8e3j4x001523441791i2x0007}}}{SCP_R 255 0 2{INP_R 257 0 "> "{TEXT 
0 0 ""}}{OUT_R 260 0 257{TEXT 2 1 "\012"}}}{SCP_R 262 0 2{INP_R 
264 0 "> "{TEXT 0 41 "              lambda[1] := Valores[1][1];"}
}{OUT_R 267 8192 264{DAG :3b3n4\`lambda`,2j2x0001e3j4x00152344179
0i2x0007}}}{SCP_R 269 0 2{INP_R 271 0 "> "{TEXT 0 41 "           \+
   lambda[2] := Valores[2][1];"}}{OUT_R 274 8192 271{DAG :3b3n4\`
lambda`,2j2x0002e3j4x004551081391i2x0009}}}{SCP_R 276 0 2{INP_R 
278 0 "> "{TEXT 0 41 "              lambda[3] := Valores[3][1];"}
}{OUT_R 281 8192 278{DAG :3b3n4\`lambda`,2j2x0003e3j4x00559417176
5i2x0008}}}{SCP_R 283 0 2{INP_R 285 0 "> "{TEXT 0 80 "#Condicione
s para los lambdas. Deben tener el mismo signo para que sea elips
oide"}}{OUT_R 288 0 285{TEXT 2 1 "\012"}}}{SCP_R 290 0 3{INP_R 
292 0 "> "{TEXT 0 18 "error:= 0; n := 1;"}}{OUT_R 295 8192 292
{DAG :3n4\`error`j2x0000}}{OUT_R 298 8192 292{DAG :3n3\`n`j2x0001
}}}{SCP_R 300 0 3{INP_R 302 0 "> "{TEXT 0 29 "positivo := 0; nega
tivo := 0;"}}{OUT_R 305 8192 302{DAG :3n5\`positivo`j2x0000}}
{OUT_R 308 8192 302{DAG :3n5\`negativo`j2x0000}}}{SCP_R 310 0 2
{INP_R 312 0 "> "{TEXT 0 15 "while (n<=k) do"}}{OUT_R 315 0 312
{TEXT 2 1 "\012"}}}{SCP_R 317 0 2{INP_R 319 0 "> "{TEXT 0 53 "   \+
    if ( Valores[n][1] >= 0) then positivo   := 1;"}}{OUT_R 322 0
 319{TEXT 2 1 "\012"}}}{SCP_R 324 0 2{INP_R 326 0 "> "{TEXT 0 66 
"       else                                         negativo := \+
1;"}}{OUT_R 329 0 326{TEXT 2 1 "\012"}}}{SCP_R 331 0 2{INP_R 333 
0 "> "{TEXT 0 9 "      fi;"}}{OUT_R 336 0 333{TEXT 2 1 "\012"}}}
{SCP_R 338 0 2{INP_R 340 0 "> "{TEXT 0 59 "     if (positivo = 1 \+
and negativo = 1) then    error := 1;"}}{OUT_R 343 0 340{TEXT 2 1
 "\012"}}}{SCP_R 345 0 2{INP_R 347 0 "> "{TEXT 0 15 "     fi;    \+
   "}}{OUT_R 350 0 347{TEXT 2 1 "\012"}}}{SCP_R 352 0 2{INP_R 354
 0 "> "{TEXT 0 17 "       n := n +1;"}}{OUT_R 357 0 354{TEXT 2 1 
"\012"}}}{SCP_R 359 0 4{INP_R 361 0 "> "{TEXT 0 3 "od;"}}{OUT_R 
364 8192 361{DAG :3n3\`n`j2x0002}}{OUT_R 367 8192 361{DAG :3n3\`n
`j2x0003}}{OUT_R 370 8192 361{DAG :3n3\`n`j2x0004}}}{SCP_R 372 0 
2{INP_R 374 0 "> "{TEXT 0 36 "if ( error = 0 and det(B) <> 0) the
n"}}{OUT_R 377 0 374{TEXT 2 1 "\012"}}}{SCP_R 379 0 2{INP_R 381 0
 "> "{TEXT 0 61 "             XO := scalarmul(multiply(evalm(B^(-
1)),b),-1/2);"}}{OUT_R 384 0 381{TEXT 2 1 "\012"}}}{SCP_R 386 0 2
{INP_R 388 0 "> "{TEXT 0 97 "             YO := b0 + scalarmul(mu
ltiply(transpose(XO),b),1/2)[1,1]; # ytongo0 := b0 + (x')*b/2"}}
{OUT_R 391 0 388{TEXT 2 1 "\012"}}}{SCP_R 393 0 2{INP_R 395 0 "> \+
"{TEXT 0 66 "            if (YO>=0 and positivo=0) then     YO :=
 YO*(-1);     "}}{OUT_R 398 0 395{TEXT 2 1 "\012"}}}{SCP_R 400 0 
2{INP_R 402 0 "> "{TEXT 0 56 "            elif (YO<0 and positivo
=1) then             "}}{OUT_R 405 0 402{TEXT 2 1 "\012"}}}{SCP_R
 407 0 2{INP_R 409 0 "> "{TEXT 0 65 "                         YO \+
:= YO*(-1);       #lambdas negativos;"}}{OUT_R 412 0 409{TEXT 2 1
 "\012"}}}{SCP_R 414 0 2{INP_R 416 0 "> "{TEXT 0 27 "            \+
else error :=1;"}}{OUT_R 419 0 416{TEXT 2 1 "\012"}}}{SCP_R 421 0
 2{INP_R 423 0 "> "{TEXT 0 18 "            fi;   "}}{OUT_R 426 0 
423{TEXT 2 1 "\012"}}}{SCP_R 428 0 2{INP_R 430 0 "> "{TEXT 0 11 "
           "}}{OUT_R 433 0 430{TEXT 2 1 "\012"}}}{SCP_R 435 0 2
{INP_R 437 0 "> "{TEXT 0 43 "           a:= sqrt(YO/lambda[1]);ev
alf(a);"}}{OUT_R 440 0 437{TEXT 2 1 "\012"}}}{SCP_R 442 0 2{INP_R
 444 0 "> "{TEXT 0 43 "           b:= sqrt(YO/lambda[2]);evalf(b)
;"}}{OUT_R 447 0 444{TEXT 2 1 "\012"}}}{SCP_R 449 0 2{INP_R 451 0
 "> "{TEXT 0 43 "           c:= sqrt(YO/lambda[3]);evalf(c);"}}
{OUT_R 454 0 451{TEXT 2 1 "\012"}}}{SCP_R 456 0 2{INP_R 458 0 "> \+
"{TEXT 0 7 "else   "}}{OUT_R 461 0 458{TEXT 2 1 "\012"}}}{SCP_R 
463 0 2{INP_R 465 0 "> "{TEXT 0 28 "         if (error = 1) then"
}}{OUT_R 468 0 465{TEXT 2 1 "\012"}}}{SCP_R 470 0 2{INP_R 472 0 "
> "{TEXT 0 114 "                printf(`lambdas de diferentes sig
nos cada una de ellas u otro error de signos \\n`);      #   quit
;"}}{OUT_R 475 0 472{TEXT 2 1 "\012"}}}{SCP_R 477 0 2{INP_R 479 0
 "> "{TEXT 0 30 "          elif (det(B)=0) then"}}{OUT_R 482 0 
479{TEXT 2 1 "\012"}}}{SCP_R 484 0 2{INP_R 486 0 "> "{TEXT 0 64 "
                 printf(`no es un elipsoide /n`);      #   quit;"
}}{OUT_R 489 0 486{TEXT 2 1 "\012"}}}{SCP_R 491 0 2{INP_R 493 0 "
> "{TEXT 0 13 "         else"}}{OUT_R 496 0 493{TEXT 2 1 "\012"}}
}{SCP_R 498 0 2{INP_R 500 0 "> "{TEXT 0 13 "          fi;"}}
{OUT_R 503 0 500{TEXT 2 1 "\012"}}}{SCP_R 505 0 9{INP_R 507 0 "> \+
"{TEXT 0 3 "fi;"}}{OUT_R 510 8192 507{DAG :3n3\`XO`(3n4\`MATRIX`,
2[2,4[2,2e3j4x002465469135i2x0009[2,2e3i4x009162907000i2x0011[2,2
e3i4x003064725100i2x0010}}{OUT_R 513 8192 507{DAG :3n3\`YO`e3i4x0
00419751521i2x0007}}{OUT_R 516 8192 507{DAG :3n3\`a`e3j4x00524908
0182i2x0010}}{OUT_R 519 8192 507{DAG e3j4x005249080182i2x0010}}
{OUT_R 522 8192 507{DAG :3n3\`b`e3j4x003036958365i2x0009}}{OUT_R 
525 8192 507{DAG e3j4x003036958365i2x0009}}{OUT_R 528 8192 507
{DAG :3n3\`c`e3j4x008662200677i2x0010}}{OUT_R 531 8192 507{DAG e3
j4x008662200677i2x0010}}}{SCP_R 533 0 2{INP_R 535 0 "> "{TEXT 0 
97 "#Obteniendo los valores de la matriz M, obteniendo valores l,
m,n (estan desordenados) en Valores."}}{OUT_R 538 0 535{TEXT 2 1 
"\012"}}}{SCP_R 540 0 2{INP_R 542 0 "> "{TEXT 0 8 "z1 := 1;"}}
{OUT_R 545 8192 542{DAG :3n3\`z1`j2x0001}}}{SCP_R 547 0 2{INP_R 
549 0 "> "{TEXT 0 34 "while (z1 <= k) do  ;             "}}{OUT_R
 552 0 549{TEXT 2 1 "\012"}}}{SCP_R 554 0 2{INP_R 556 0 "> "{TEXT
 0 37 "         z2 := 1;encontrado := false;"}}{OUT_R 559 0 556
{TEXT 2 1 "\012"}}}{SCP_R 561 0 2{INP_R 563 0 "> "{TEXT 0 50 "   \+
     while (z2<= k and not(encontrado)) do    ;"}}{OUT_R 566 0 
563{TEXT 2 1 "\012"}}}{SCP_R 568 0 2{INP_R 570 0 "> "{TEXT 0 55 "
                  if (lambda[z1] = Valores[z2][1]) then"}}{OUT_R 
573 0 570{TEXT 2 1 "\012"}}}{SCP_R 575 0 2{INP_R 577 0 "> "{TEXT 
0 66 "                                    TM[z1,1] := Valores[z2]
[3][1];"}}{OUT_R 580 0 577{TEXT 2 1 "\012"}}}{SCP_R 582 0 2{INP_R
 584 0 "> "{TEXT 0 55 "                                    encont
rado := true;"}}{OUT_R 587 0 584{TEXT 2 1 "\012"}}}{SCP_R 589 0 2
{INP_R 591 0 "> "{TEXT 0 23 "                   fi; "}}{OUT_R 594
 0 591{TEXT 2 1 "\012"}}}{SCP_R 596 0 2{INP_R 598 0 "> "{TEXT 0 
30 "                  z2 := z2 +1;"}}{OUT_R 601 0 598{TEXT 2 1 "\
012"}}}{SCP_R 603 0 2{INP_R 605 0 "> "{TEXT 0 19 "        od;    \+
    "}}{OUT_R 608 0 605{TEXT 2 1 "\012"}}}{SCP_R 610 0 2{INP_R 
612 0 "> "{TEXT 0 20 "       z1 := z1 + 1;"}}{OUT_R 615 0 612
{TEXT 2 1 "\012"}}}{SCP_R 617 0 10{INP_R 619 0 "> "{TEXT 0 3 "od;
"}}{OUT_R 622 8192 619{DAG :3n3\`z2`j2x0001}}{OUT_R 625 8192 619
{DAG :3n5\`encontrado`n4\`false`}}{OUT_R 628 8192 619{DAG :3n3\`z
1`j2x0002}}{OUT_R 631 8192 619{DAG :3n3\`z2`j2x0001}}{OUT_R 634 
8192 619{DAG :3n5\`encontrado`n4\`false`}}{OUT_R 637 8192 619{DAG
 :3n3\`z1`j2x0003}}{OUT_R 640 8192 619{DAG :3n3\`z2`j2x0001}}
{OUT_R 643 8192 619{DAG :3n5\`encontrado`n4\`false`}}{OUT_R 646 
8192 619{DAG :3n3\`z1`j2x0004}}}{SCP_R 648 0 2{INP_R 650 0 "> "
{TEXT 0 9 "eval(TM);"}}{OUT_R 653 8192 650{DAG (3n4\`TABLE`,2[2,4
=3,3j2x0001p9(3n4\`VECTOR`,2[2,4e3i4x007936731953i2x0010e3j4x0042
94117002p18e3j4x004309158287p18=3,3j2x0002p9(3pD,2[2,4e3j4x005846
449067p18e3j4x007341902996p18e3j4x003451882642p18=3,3j2x0003p9(3p
D,2[2,4e3j4x001681463425p18e3i4x005258994176p18e3j4x008337605237p
18}}}{SCP_R 655 0 2{INP_R 657 0 "> "{TEXT 0 0 ""}}{OUT_R 660 0 
657{TEXT 2 1 "\012"}}}{SCP_R 662 0 2{INP_R 664 0 "> "{TEXT 0 49 "
V1 := vector([TM[1,1][1],TM[1,1][2],TM[1,1][3]]);"}}{OUT_R 667 
8192 664{DAG :3n3\`V1`(3n4\`VECTOR`,2[2,4e3i4x007936731953i2x0010
e3j4x004294117002pFe3j4x004309158287pF}}}{SCP_R 669 0 2{INP_R 671
 0 "> "{TEXT 0 21 "V1n := normalize(V1);"}}{OUT_R 674 8192 671
{DAG :3n3\`V1n`(3n4\`VECTOR`,2[2,4e3i4x007936731945i2x0010e3j4x00
4294116998pFe3j4x004309158283pF}}}{SCP_R 676 0 2{INP_R 678 0 "> "
{TEXT 0 49 "V2 := vector([TM[2,1][1],TM[2,1][2],TM[2,1][3]]);"}}
{OUT_R 681 8192 678{DAG :3n3\`V2`(3n4\`VECTOR`,2[2,4e3j4x00584644
9067i2x0010e3j4x007341902996pFe3j4x003451882642pF}}}{SCP_R 683 0 
2{INP_R 685 0 "> "{TEXT 0 21 "V2n := normalize(V2);"}}{OUT_R 688 
8192 685{DAG :3n3\`V2n`(3n4\`VECTOR`,2[2,4e3j4x005846449061i2x001
0e3j4x007341902989pFe3j4x003451882639pF}}}{SCP_R 690 0 2{INP_R 
692 0 "> "{TEXT 0 49 "V3 := vector([TM[3,1][1],TM[3,1][2],TM[3,1]
[3]]);"}}{OUT_R 695 8192 692{DAG :3n3\`V3`(3n4\`VECTOR`,2[2,4e3j4
x001681463425i2x0010e3i4x005258994176pFe3j4x008337605237pF}}}
{SCP_R 697 0 2{INP_R 699 0 "> "{TEXT 0 21 "V3n := normalize(V3);"
}}{OUT_R 702 8192 699{DAG :3n3\`V3n`(3n4\`VECTOR`,2[2,4e3j4x00168
1463423i2x0010e3i4x005258994171pFe3j4x008337605229pF}}}{SCP_R 704
 0 2{INP_R 706 0 "> "{TEXT 0 38 "M := transpose(matrix([V1n,V2n,V
3n]));"}}{OUT_R 709 8192 706{DAG :3n3\`M`(3n4\`MATRIX`,2[2,4[2,4e
3i4x007936731945i2x0010e3j4x005846449061p11e3j4x001681463423p11[2
,4e3j4x004294116998p11e3j4x007341902989p11e3i4x005258994171p11[2,
4e3j4x004309158283p11e3j4x003451882639p11e3j4x008337605229p11}}}
{SCP_R 711 0 2{INP_R 713 0 "> "{TEXT 0 0 ""}}{OUT_R 716 0 713
{TEXT 2 1 "\012"}}}{SCP_R 718 0 1{INP_R 720 0 "> "{TEXT 0 0 ""}}}
}{END}
