proc planilla {} {
global auto_path cellValue arch maxCol maxRow numline aux 
catch {destroy .abre}
catch {destroy .pla}
toplevel .pla
wm geometry .pla +60+60
wm grid .pla 600 300 1 1
wm title .pla "DATOS COMPOSICIONALES."


# Lectura de cabecera del archivo
###################################
set f [open  $arch r]
gets $f line
gets $f otra 
   set cont [llength $line]
   set i 0 
   while {$i < $cont} {
     set id$i [lindex $otra $i]
     set caract [string length [set id$i]]
      set j 0
     while {$j<$caract} {
       set nro [string index [set id$i] $j]
       if {$nro=="."} {
         set aux $i
         break
       }
        incr j
     }
     if {$nro=="."} {
       break
     } 
     incr i
   }
  close $f
  set f [open $arch r]
  gets $f line
  set i 0
  while {$i < $aux} {
    set ident$i [lindex $line $i]
    incr i
  }
  while {$i <= $cont} {
     set comp$i [lindex $line $i]
     incr i
  } 
  close $f

set maxCol $cont
# Create column headers.
#############################
frame .pla.colHdr 
pack .pla.colHdr -side top -fill x -padx 4

set i 0
set j 1
while {$i < $aux} {
 label .pla.colHdr.col$j -width 10 -text [set ident$i] -relief ridge -padx 5
 incr i
 incr j
} 
while {$i <= $cont} {
 label .pla.colHdr.col$j -width 10 -text [set comp$i] -relief ridge -padx 5
 incr i
 incr j
}
set k 1
while {$k <= $cont} {
   pack .pla.colHdr.col$k  -side left -fill x
   incr k
}
 
# Crea listas con las observaciones
####################################
set f [open $arch r]
set i 0
while {[eof $f] != 1} {
   global lista$i
   gets $f lista$i
   set vacia [llength [set lista$i]]
   if {$i==0 && $vacia > 0} {
      set numero $vacia
    }
   if {$vacia == 0 || $numero != $vacia} {
      set i [expr $i-1]
   }
   incr i
   
}
set numline [expr $i-1]
set maxRow [expr $numline - 1]

#Crea celdas 
#######################
  frame .pla.wws -relief sunken -borderwidth 4 
  pack .pla.wws -side top -fill x -pady 4 -padx 4
  set var 1
  for {set row 1} { $row <= $numline } {incr row 1} {
	set rowName .pla.wws.$row
	frame $rowName
	pack $rowName -side top
	for {set col 1} { $col <= $cont} {incr col 1} {
		set cellname $rowName,$col
		entry $cellname -background white -width 10 -bd 4 -relief ridge \
			-textvariable cellValue($cellname)
		if { $col >= 1 } { set cellValue($cellname) 0 }
                set i 1
                set j 0
                while {$i <= $cont} { 
                   set cellValue($rowName,$i) [lindex [set lista$row] $j]
                   incr i
                   incr j
                }
	pack $cellname -in $rowName -side left -anchor w
	}
  }
}

proc subcompo {} {
  global nomarch arch ncompo maxRow maxCol numline
# Crea listas con las observaciones
####################################
if {[file isfile $arch] && $arch != ""} {
  catch {destroy .pla}
  set f [open $arch r]
  set i 0
  while {[eof $f] != 1} {
     global lista$i
     gets $f lista$i
     set vacia [llength [set lista$i]]
     if {$i==0 && $vacia > 0} {
        set numero $vacia
     }
     if {$vacia == 0 || $numero != $vacia} {
       set i [expr $i-1]
     }   
     incr i
   }
   set numline [expr $i-1]
   close $f
   set largo [llength $lista0] 
   set i 0 
  while {$i < $largo} {
     set id$i [lindex $lista1 $i]
     set caract [string length [set id$i]]
     set j 0
     while {$j<$caract} { 
       set nro [string index [set id$i] $j]
       if {$nro=="."} {
         set aux $i
         break
       }
        incr j
     }
     if {$nro=="."} {
       break
     }  
      incr i
   }
  set largo [expr $largo - 1]
  set cuent $aux
  while {$cuent <= $largo} {
     global vc$cuent
     incr cuent
  }
  set cuent $aux
  set band 1
  while {$cuent <= $largo} {
     if {[set vc$cuent] == 1} {
       set band 0
      }
      incr cuent
   }
if {$band == 0} {
  set j 0
  while {$j <= $numline} {
      set cuenta $largo
      while {$cuenta >= $aux} {
        if {[set vc$cuenta] != 1} {
          set lista$j [lreplace [set lista$j] $cuenta $cuenta]
        }
        set cuenta [expr $cuenta - 1]
       }
      incr j
   }    
  set largo [llength $lista0]

#recalcula componentes
######################
  set nro 1
  set ncompo [expr $largo - $aux]
  while {$nro <= $numline} {
    set i $aux
    set suma 0
    while {$i < $largo} {
      set valorcomp [lindex [set lista$nro] $i]
      set suma [expr $suma + $valorcomp]   
      incr i
    }
    set i $aux
    while {$i < $largo} {
      set valorcomp [lindex [set lista$nro] $i]
      set lista$nro [lreplace [set lista$nro] $i $i [expr $valorcomp/$suma]] 
      incr i
     }
     incr nro
    }

# Lectura de cabecera del archivo
###################################
   set i 0
  while {$i < $aux} {
     set ident$i [lindex $lista0 $i]
     incr i
  }
  while {$i <= $largo} {
    set comp$i [lindex $lista0 $i]
    incr i
   }
  global auto_path cellValue 
  set maxCol $largo 
  set maxRow [expr $numline - 1]
  catch {destroy .subc}
  toplevel .subc
   wm geometry .subc +350+60
  wm grid .subc 600 300 1 1
  wm title .subc "SUBCOMPOSICION."

#Crea primera fila  
#############################
  frame .subc.colHdr 
  pack .subc.colHdr -side top -fill x -padx 4
  set i 0
  set j 1
  while {$i < $aux} {
   label .subc.colHdr.col$j -width 10 -text [set ident$i] -relief ridge -padx 5
   incr i
   incr j
   } 
  while {$i <= $largo} {
    label .subc.colHdr.col$j -width 10 -text [set comp$i] -relief ridge -padx 5
    incr i
    incr j
   }
  set k 1
  while {$k <= $largo} {
    pack .subc.colHdr.col$k -side left -fill x
    incr k
  }

#Crea celdas 
#######################
  frame .subc.wws -relief sunken -borderwidth 4 
  pack .subc.wws -side top -fill x -pady 4 -padx 4
  set var 1
  for {set row 1} { $row <= $numline } {incr row 1} {
	set rowName .subc.wws.$row
	frame $rowName
	pack $rowName -side top
	for {set col 1} { $col <= $largo} {incr col 1} {
		set cellname $rowName,$col
		entry $cellname -background white -width 10 -bd 4 -relief ridge \
			-textvariable cellValue($cellname)
		if { $col >= 1 } { set cellValue($cellname) 0 }
                set i 1
                set j 0
                while {$i <= $largo} { 
                   set cellValue($rowName,$i) [lindex [set lista$row] $j]
                   incr i
                   incr j
                }
	pack $cellname -in $rowName -side left -anchor w
	}
   }

   set arch "subcomp.txt"
   set nomarch "subcomp.txt"
   actualizar
  } else {
    Mensaje "Olvido seleccionar componentes"
  }
  } else {
   Mensaje "Debe Abrir archivo con el cual trabajara..."
  }
}


proc amalgamas {} {
  global nomarch arch ncompo maxRow maxCol numline nident numero nco  
# Crea listas con las observaciones
####################################
catch {destroy .agru}
set f [open $arch r]
set i 0
while {[eof $f] != 1} {
   global lista$i 
   gets $f lista$i 
   set vacia [llength [set lista$i]]
   if {$i==0 && $vacia > 0} {
     set num $vacia 
   }
   if {$vacia == 0 || $num != $vacia} {
     set i [expr $i-1]
   }
   incr i
}
set numline [expr $i-1]
close $f
set largo [llength $lista0] 
set j $nident
while {$j <= $nco} {
     global valorco$j
     incr j
}
set i 1
while {$i<=$numero} {
    global grupo$i
    incr i
}
set aux $nident 
set largo [expr $largo - 1]
set j 1
while {$j <= $numline} {
    set k 1
    while {$k <= $numero} {
      set suma$k 0
      incr k
    }
    set cuenta $largo
    while {$cuenta >= $aux} {
      set i 1
      while {$i <= $numero} {
        if {[set valorco$cuenta] == $i} {
            set suma$i [expr [set suma$i] + [lindex [set lista$j] $cuenta]]
          }
        incr i
      }
    set cuenta [expr $cuenta - 1]
    }
    set lis$j ""
    set auxiliar 0 
    while {$auxiliar < $nident} {
      set ident$auxiliar [lindex [set lista$j] $auxiliar]
       lappend lis$j [set ident$auxiliar]
      incr auxiliar
    }
    set auxiliar $nident 
    set i 1
    while {$i <= $numero} {
      lappend lis$j [set suma$i]
      incr auxiliar
      incr i
    }
    incr j
}    
set largo [llength $lis1]
# Lectura de cabecera del archivo
###################################
set i 0
while {$i < $aux} {
    set ident$i [lindex $lista0 $i]
    lappend lis0 [set ident$i]
    incr i
}
set j 1
while {$i < $largo} {
   set comp$i [set grupo$j]
   lappend lis0 [set comp$i] 
   incr i
   incr j 
}
global auto_path cellValue 
set maxCol $largo 
set maxRow [expr $numline - 1]
catch {destroy .amal}
catch {destroy .pla} 
toplevel .amal
wm geometry .amal +350+60
wm grid .amal 600 300 1 1
wm title .amal "AMALGAMAS."
set i 0
while {$i <= $numline} {
   set lista$i [set lis$i]
   incr i
} 
# Create column headers.
#############################
frame .amal.colHdr 
pack .amal.colHdr -side top -fill x -padx 4
set i 0
set j 1
while {$i < $aux} {
 label .amal.colHdr.col$j -width 10 -text [set ident$i] -relief ridge -padx 5
 incr i
 incr j
} 
while {$i < $largo} {
 label .amal.colHdr.col$j -width 10 -text [set comp$i] -relief ridge -padx 5
 incr i
 incr j
}
set k 1
while {$k <= $largo} {
   pack .amal.colHdr.col$k -side left -fill x
   incr k
}

#Crea celdas 
#######################
frame .amal.wws -relief sunken -borderwidth 4 
pack .amal.wws -side top -fill x -pady 4 -padx 4
set var 1
for {set row 1} { $row <= $numline } {incr row 1} {
	set rowName .amal.wws.$row
	frame $rowName
	pack $rowName -side top
	for {set col 1} { $col <= $largo} {incr col 1} {
		set cellname $rowName,$col
		entry $cellname -background white -width 10 -bd 4 -relief ridge \
			-textvariable cellValue($cellname)
		if { $col >= 1 } { set cellValue($cellname) 0 }
                set i 1
                set j 0
                while {$i <= $largo} { 
                   set cellValue($rowName,$i) [lindex [set lis$row] $j]
                   incr i
                   incr j
                }
	pack $cellname -in $rowName -side left -anchor w
	}
}
set arch "amalgama.txt"
set nomarch "amalgama.txt"
actualizar
}
proc Nro-grup {} {
   global arch
   if {[file isfile $arch] && $arch != ""} {
     set f .msg
     catch {destroy $f}
     toplevel $f
     wm title $f "Datos para Amalgamas"
     wm geometry $f +100+100
     label $f.mensaje -font *times-medium-r-*-*-20* -wraplength 4i -justify left\
                      -text "Ingrese numero de grupos en amalgama : "
      pack $f.mensaje -side top
     frame $f.result
     pack $f.result -side top -pady 2 -anchor e
     entry $f.result.entry -textvariable numero
     pack $f.result $f.result.entry  -side top -fill x
     frame $f.botones -bd 10
     pack $f.botones -side top -fill x
     button $f.botones.ok -text Aceptar -command Nom-grup 
     button $f.botones.cancel -text Cancelar -command "destroy $f"
     pack $f.botones.ok $f.botones.cancel -side left -anchor center
    } else {
       Mensaje "Debe Abrir archivo con el cual trabajara..."
    }
}

proc Nom-grup {} {
    global numero nident ncompo cuentite nco  
    set cuentite 1
    if {$ncompo<$numero} {
      Mensaje "No puede hacer mas de $ncompo grupos"
    } else {
    set j $nident
    while {$j<=$nco} {
       global vco$j
       set vco$j "x"
      incr j
    }
    set t .nom
    catch {destroy .msg}
    catch {destroy $t}
    toplevel $t 
    wm title $t "GRUPOS."
    wm geometry $t +100+100
    label $t.mensaje -font *times-medium-r-*-*-20* -wraplength 4i -justify left \
          -text "Ingrese el nombre de cada grupo :"
    pack $t.mensaje -side top
    set i 1
    while {$i<=$numero} {
      frame $t.$i
      pack $t.$i -side top -pady 2 -anchor e
      label $t.$i.label -text "grupo nro. $i"
      entry $t.$i.entry -textvariable grupo$i
      pack $t.$i.entry $t.$i.label -side right -fill x 
      incr i
    }
    frame $t.botones -bd 10
    pack $t.botones -side top -fill x
    set var 0
    button $t.botones.ok -text Aceptar -command Agrupacion  
    button $t.botones.cancel -text Cancelar -command "destroy $t"
    pack $t.botones.ok $t.botones.cancel -side left -anchor center
  }
}
     
proc Agrupacion {} {
    global numero ncompo nident cuentite nco 
    set t $nident
    while {$t<=$nco} {
       global comp$t
       incr t
    } 
       catch {destroy .nom}
       catch {destroy .agru}
       toplevel .agru
       wm title .agru "SELECCION."
       wm geometry .agru +100+100
       label .agru.mensaje -font *times-medium-r-*-*-20* -wraplength 4i -justify left \
                -text "Ingrese seleccion :" 
       pack .agru.mensaje -side top -fill x
       global grupo$cuentite
       frame .agru.left
       frame .agru.right
       pack .agru.left .agru.right -side left -expand yes -pady .5c -padx .5c
       frame .agru.botones -bd 10
       pack .agru.botones -side bottom -fill x
       label .agru.left.grupo$cuentite -font *times-medium-r-*-*-20* -wraplength 4i -justify left -text [set grupo$cuentite]
       pack .agru.left.grupo$cuentite -side top -pady 2 -anchor w
       set j $nident
       while {$j <= $nco} {
           global vco$j
           global valorco$j
          if {[set vco$j] != 1} { 
            checkbutton .agru.right.comp$j \
            -text [set comp$j] -relief flat -variable vco$j
            pack .agru.right.comp$j -side top -pady 2 -anchor w
          }
          if {[set vco$j] == "x"} {  
               set valorco$j $cuentite
          }
            incr j
       }
      if {$cuentite==$numero} {
       button .agru.botones.ok -text Aceptar -command amalgamas
      } else {
        button .agru.botones.ok -text Aceptar -command {  catch {destroy .agru} 
                                                     Agrupacion }
        incr cuentite 
      }
       button .agru.botones.cancel -text Cancelar -command "destroy .agru"
       pack .agru.botones.ok .agru.botones.cancel -side left -anchor center
}     
proc abrir-archivo {} {
     global arch
     catch {destroy .abre}
     toplevel .abre 
     wm title .abre "Abrir Archivo."
     wm geometry .abre +100+100
     label .abre.mensaje -font *times-medium-r-*-*-20* -wraplength 4i -justify left\
                      -text "Ingrese nombre del archivo : "
      pack .abre.mensaje -side top
     frame .abre.result
     pack .abre.result -side top -pady 2 -anchor e
     entry .abre.result.entry -textvariable arch 
     pack .abre.result .abre.result.entry  -side top -fill x
     frame .abre.botones -bd 10
     pack .abre.botones -side top -fill x
     button .abre.botones.ok -text Aceptar -command {if {[file isfile $arch]} {
                                                    catch {destroy .amal}
                                                    catch {destroy .subc}
                                                    catch {destroy .mbar}
                                                    inicio
                                                    planilla
                                               } else {
                                                 Mensaje "Archivo  $arch  NO EXISTE !!!"
                                               }
                                               } 
     button .abre.botones.cancel -text Cancelar -command "destroy .abre"
     pack .abre.botones.ok .abre.botones.cancel -side left -anchor center
}

proc salvar-como {} {
  global nomarch numline
  if {$numline>0} { 
     catch {destroy .salvar}
     toplevel .salvar 
     wm title .salvar "Salvar Archivo."
     wm geometry .salvar +100+100
     label .salvar.mensaje -font *times-medium-r-*-*-20* -wraplength 4i -justify left\
                      -text "Ingrese nombre del archivo : "
      pack .salvar.mensaje -side top
     frame .salvar.result
     pack .salvar.result -side top -pady 2 -anchor e
     entry .salvar.result.entry -textvariable nomarch 
     pack .salvar.result .salvar.result.entry  -side top -fill x
     frame .salvar.botones -bd 10
     pack .salvar.botones -side top -fill x
     button .salvar.botones.ok -text Aceptar -command {catch {destroy .salvar}
                                                salvarcomo}
     button .salvar.botones.cancel -text Cancelar -command "destroy .salvar"
     pack .salvar.botones.ok .salvar.botones.cancel -side left -anchor center
   } else {
      Mensaje "Debe Abrir Archivo con el cual trabajara..."
   }
}

proc salvarcomo {} {
global nomarch numline
   set i 0 
    while {$i<=$numline} {
      global lista$i
      incr i
    } 
   set i 0 
   set t [open $nomarch w]
   while {$i <= $numline} {
     puts $t [set lista$i] 
     incr i
   }
  close $t 
}

proc actualizar {} {
    global nomarch arch
     salvar-como
     set arch $nomarch 
     abrir-archivo
}



proc salvar {} {
   global arch numline
 if {$numline > 0} {
   set i 0
    while {$i<=$numline} {
      global lista$i
      incr i
    } 
   set i 0
   set t [open $arch w]
   while {$i <= $numline} {
     puts $t [set lista$i] 
     incr i
   }
  close $t  
  } else {
   Mensaje "Debe abrir archivo con el cual trabajara..."
  }
}

proc Validacion {} {
  global aux arch ncompo maxRow maxCol numline validar
# Crea listas con las observaciones
####################################
if {[file isfile $arch] && $arch !=""} {
  set f [open $arch r]
  set i 0
  while {[eof $f] != 1} {
     global lista$i
     gets $f lista$i
     set vacia [llength [set lista$i]]
     if {$i==0 && $vacia > 0} {
        set numero $vacia
     }
     if {$vacia == 0 || $numero != $vacia} {
       set i [expr $i-1]
     }   
     incr i
   }
   set numline [expr $i-1]
   close $f
   set largo [llength $lista0] 

#recalcula componentes
######################
  set nro 1
  set ncompo [expr $largo - $aux]
  while {$nro <= $numline} {
    set i $aux
    set suma 0
    while {$i < $largo} {
      set valorcomp [lindex [set lista$nro] $i]
      set suma [expr $suma + $valorcomp]   
      incr i
    }
    set i $aux
    if {$suma!=1} {
      while {$i < $largo} {
        set valorcomp [lindex [set lista$nro] $i]
        set lista$nro [lreplace [set lista$nro] $i $i [expr $valorcomp/$suma]] 
        incr i
      }
     }
      incr nro
    }
  set validar 1
  } else {
   Mensaje "Debe Abrir archivo con el cual trabajara..."
  }
}



proc Version {} {
	set w .version
	catch {destroy $w}
	toplevel $w
	wm title $w "Acerca de la version."
        wm geometry $w +400+400 
	wm iconname $w "Version"

	label $w.mensaje -font *times-medium-r-*-*-20*  -wraplength 4i -justify left \
			 -text "  Mario de la Cuadra I. & Candy Valencia T.  " 
	pack $w.mensaje -side top
	frame $w.botones  -bd 10 -height 10 -width 20
        pack $w.botones -side bottom -fill x
        button $w.botones.ok -text Aceptar -command "destroy $w"
        pack $w.botones.ok -side bottom -anchor center 
}



