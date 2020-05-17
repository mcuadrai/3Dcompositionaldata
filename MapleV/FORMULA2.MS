{VERSION 1 1 "MS-Windows" "1.0"}{GLOBALS 1 0}{FONT 0 "Arial" "Ari
al" "Helvetica-Bold" 7 12 0 "Helvetica-Bold" 12{COLOR "0000ff"}}
{FONT 1 "Times New Roman" "Times New Roman" "Times-Roman" 4 12 64
 "Times-Roman" 12{COLOR "000000"}}{FONT 2 "Courier New" "Courier \+
New" "Courier" 4 12 192 "Courier" 12{COLOR "000000"}}{SCP_R 0 0 
12{SCP_R 1 0 2{INP_R 3 0 "> "{TEXT 0 13 "with(linalg):"}}{OUT_R 6
 0 3{TEXT 2 1 "\012"}}}{SCP_R 8 0 2{INP_R 10 0 "> "{TEXT 0 39 "eq
u :=  a*x**2+b*y**2+c*x*y+d*x+e*y+f ;"}}{OUT_R 13 8192 10{DAG :3n
3\`equ`+D*5n3\`a`j2x0001n3\`x`j2x0002p7*5n3\`b`p7n3\`y`pBp7*7n3\`
c`p7p9p7p12p7p7*5n3\`d`p7p9p7p7*5n3\`e`p7p12p7p7n3\`f`p7}}}{SCP_R
 15 0 2{INP_R 17 0 "> "{TEXT 0 21 "Y:=solve(equ=0,y);   "}}{OUT_R
 20 8192 17{DAG :3n4\`exis`,3+3*5n3\`b`i2x0001+7*5n3\`c`j2x0001n3
\`x`pFp9n3\`e`p9*3+D*5pDj2x0002p11p1CpF*7pDpFp11pFp15pFp1C*3p15p1
CpF*7p7pFn3\`a`pFp11p1Ci2x0004*7p7pFn3\`d`pFp11pFp35*5p7pFn3\`f`p
Fp35/3pFp1CpFpFp47+3*5p7p9+7pCp9p15p9p18p9pFp47}}}{SCP_R 22 0 1
{COM_R 24 0{TEXT 1 39 "Ecuacion de mitad superior de la elipse"}}
}{SCP_R 26 0 2{INP_R 28 0 "> "{TEXT 0 5 "Y[1];"}}{OUT_R 31 8192 
28{DAG +3*5n3\`b`i2x0001+7*5n3\`c`j2x0001n3\`x`pAp4n3\`e`p4*3+D*5
p8j2x0002pCp17pA*7p8pApCpAp10pAp17*3p10p17pA*7p2pAn3\`a`pApCp17i2
x0004*7p2pAn3\`d`pApCpAp30*5p2pAn3\`f`pAp30/3pAp17pApAp42}}}
{SCP_R 33 0 1{COM_R 35 0{TEXT 1 42 "Ecuacion de la mitad inferior
 de la elipse"}}}{SCP_R 37 0 2{INP_R 39 0 "> "{TEXT 0 5 "Y[2];"}}
{OUT_R 42 8192 39{DAG +3*5n3\`b`i2x0001+7*5n3\`c`j2x0001n3\`x`pAp
4n3\`e`p4*3+D*5p8j2x0002pCp17pA*7p8pApCpAp10pAp17*3p10p17pA*7p2pA
n3\`a`pApCp17i2x0004*7p2pAn3\`d`pApCpAp30*5p2pAn3\`f`pAp30/3pAp17
p4pAp42}}}{SCP_R 44 0 1{COM_R 46 0{TEXT 1 63 "Buscando los exis c
orrespondientes a los extremos de la elipse."}}}{SCP_R 48 0 2
{INP_R 50 0 "> "{TEXT 0 48 "extremo:=solve((c*x+e)^2-4*b*(a*x^2+d
*x+f)=0,x);"}}{OUT_R 53 8192 50{DAG :3n4\`extremo`,3+3*5+5*3n3\`c
`j2x0002j2x0001*5n3\`b`pDn3\`a`pDi2x0004i2x0001+7*5p9pDn3\`e`pDi2
x0002*5p10pDn3\`d`pDj2x0004*3+B*9p9pDp1EpDp10pDp26pDp18*5p10pBp26
pBpD*7p9pBp10pDn3\`f`pDpD*7p10pDp13pDp1EpBpD*7p10pBp13pDp42pDp16/
3pDpBp29pDp56+3*5p7p18+7p1Bp21p23p29p2Bp16pDp56}}}{SCP_R 55 0 2
{INP_R 57 0 "> "{TEXT 0 11 "extremo[1];"}}{OUT_R 60 8192 57{DAG +
3*5+5*3n3\`c`j2x0002j2x0001*5n3\`b`p8n3\`a`p8i2x0004i2x0001+7*5p4
p8n3\`e`p8i2x0002*5pBp8n3\`d`p8j2x0004*3+B*9p4p8p19p8pBp8p21p8p13
*5pBp6p21p6p8*7p4p6pBp8n3\`f`p8p8*7pBp8pEp8p19p6p8*7pBp6pEp8p3Dp8
p11/3p8p6p24p8p51}}}{SCP_R 62 0 2{INP_R 64 0 "> "{TEXT 0 11 "extr
emo[2];"}}{OUT_R 67 8192 64{DAG +3*5+5*3n3\`c`j2x0002j2x0001*5n3\
`b`p8n3\`a`p8i2x0004i2x0001+7*5p4p8n3\`e`p8i2x0002*5pBp8n3\`d`p8j
2x0004*3+B*9p4p8p19p8pBp8p21p8p13*5pBp6p21p6p8*7p4p6pBp8n3\`f`p8p
8*7pBp8pEp8p19p6p8*7pBp6pEp8p3Dp8p11/3p8p6p11p8p51}}}{SCP_R 69 0 
1{INP_R 71 0 "> "{TEXT 0 0 ""}}}}{END}
