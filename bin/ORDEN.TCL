
proc OrdenarIdent {} {
        global nident arch
    if {$arch !=""} {
     if {$nident > 0} {
        for {set t 0} {$t<$nident} {incr t} {
        	global ident$t 
	}

	set w .od
	catch {destroy $w}
	toplevel $w
	wm title $w "Ordenar Identificador"
        wm geometry .od +100+100
	wm iconname $w "hola"

	label $w.mensaje -font *times-medium-r-*-*-14*  -wraplength 4i -justify left \
			 -text "Ordenamiento simple para un solo identificador\
				en forma ascendente o descendente"
	pack $w.mensaje -side top

	frame $w.left	
	frame $w.right
	pack $w.left $w.right -side left -expand yes -pady .5c -padx .5c
	frame $w.botones  -bd 10
        pack $w.botones -side bottom -fill x

        for {set i 1} {$i<=$nident} {incr i 1} {
		radiobutton $w.left.wordenId$i \
		-text [set ident[expr $i-1]] -variable vorden -relief flat -value $i
		pack $w.left.wordenId$i -side top -pady 2 -anchor w
	}     

	foreach vformaOrden {Ascendente Descendente} {
		set AD [string tolower $vformaOrden]
		radiobutton $w.right.$AD \
		-text $vformaOrden -variable vforma -relief flat -value $AD
		pack $w.right.$AD -side top -pady 2 -anchor w
	}
        button $w.botones.ok -text OK -command Ordenamiento 
        button $w.botones.cancel -text Cancelar -command "destroy $w"
        pack $w.botones.ok $w.botones.cancel -side left 
     } else {
       Mensaje "No existen Identificadores..."
     }
     } else {
       Mensaje "Debe abrir archivo con el cual trabajara..."
     } 
}
 
proc Ordenamiento {} {
     global  vorden vforma nident arch 
     set vorden [expr $vorden-1] 
     set i 0
     while {$i<$nident} {
        global ident$i
        incr i
     }
     set f [open $arch r]
     set i 0
     while {[eof $f] != 1} {
         global lista$i
        gets $f lista$i
        set vacia [llength [set lista$i]]
        if {$i == 0 && $vacia > 0} {
          set numero $vacia
        }
        if {$vacia == 0 || $numero != $vacia} {
          set i [expr $i-1]
        }
        incr i
     }
     close $f
     global numline
     set numline [expr $i-1]
     set lista20 $lista0 
     set listaux [lindex $lista1 $vorden]  
     if {$vforma=="ascendente"} {
       set j 1
       while {$j<=$numline} {
         set longitud [llength $listaux]
         set k 0
         set band 1
         while {$k<$longitud} {
           set identificador1 [lindex [set lista$j] $vorden]
           set identificador2 [lindex $listaux $k]
           if {$identificador1 == $identificador2} {
               set band 0
            }
           incr k
         }
         if {$band==1} {
             lappend listaux $identificador1
         }
         incr j   
       }
       set listaux [lsort $listaux]
       set longaux [llength $listaux]

       set t 0
       set n 1
       while {$t<$longaux} {
         set r 1
         set identifica1 [lindex $listaux $t] 
         while {$r<=$numline} {
             set identifica2 [lindex [set lista$r] $vorden]
             if { $identifica1==$identifica2} {
                 set lista2$n [set lista$r]
                 incr n
             }   
             incr r
         }
         incr t       
        }
set i 1 
while {$i<=$numline} {
    set lista$i [set lista2$i]
     incr i
}
global auto_path cellValue arch maxCol maxRow
catch {destroy .od} 
catch {destroy .orde}
toplevel .orde 
wm geometry .orde +10+10
wm grid .orde 600 300 1 1
wm title .orde "DATOS COMPOSICIONALES."

scrollbar .orde.scroll -command ".orde yview"
pack .orde.scroll -side right -fill y 


# Lectura de cabecera del archivo
###################################

 
set f [open  $arch r]
gets $f line
gets $f otra
set cont [llength $line]
set i 0 
while {$i < $cont} {
   set id$i [lindex $otra $i]
   set nro [string index [set id$i] 1]
   set nro2 [string index [set id$i] 0]
   if {($nro == ".") || ($nro2 == ".") } {
     set aux $i
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
frame .orde.colHdr 
pack .orde.colHdr -side top -fill x -padx 4

set i 0
set j 1
while {$i < $aux} {
 label .orde.colHdr.col$j -width 10 -text [set ident$i] -relief ridge -padx 5
 incr i
 incr j
} 
while {$i <= $cont} {
 label .orde.colHdr.col$j -width 10 -text [set comp$i] -relief ridge -padx 5
 incr i
 incr j
}
set k 1
while {$k <= $cont} {
   pack .orde.colHdr.col$k  -side left -fill x
   incr k
}
 


#Crea celdas 
#######################
frame .orde.wws -relief sunken -borderwidth 4 
pack .orde.wws -side top -fill x -pady 4 -padx 4
set var 1
for {set row 1} { $row <= $numline } {incr row 1} {

	set rowName .orde.wws.$row

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

#ordenamiento descendente
########################

     if {$vforma=="descendente"} {
       set j 1
       while {$j<=$numline} {
         set longitud [llength $listaux]
         set k 0
         set band 1
         while {$k<$longitud} {
           set identificador1 [lindex [set lista$j] $vorden]
           set identificador2 [lindex $listaux $k]
           if {$identificador1 == $identificador2} {
               set band 0
            }
           incr k
         }
         if {$band==1} {
             lappend listaux $identificador1
         }
         incr j   
       }
       set listaux [lsort -decreasing  $listaux]
       set longaux [llength $listaux]

       set t 0
       set n 1
       while {$t<$longaux} {
         set r 1
         set identifica1 [lindex $listaux $t] 
         while {$r<=$numline} {
             set identifica2 [lindex [set lista$r] $vorden]
             if { $identifica1==$identifica2} {
                 set lista2$n [set lista$r]
                 incr n
             }   
             incr r
         }
         incr t       
        }

set i 0
while {$i<=$numline} {
    set lista$i [set lista2$i]
     incr i
}
global auto_path cellValue arch maxCol maxRow
catch {destroy .od} 
catch {destroy .orde}
toplevel .orde 
wm geometry .orde +10+10
wm grid .orde 600 300 1 1
wm title .orde "DATOS COMPOSICIONALES."

scrollbar .orde.scroll -command ".orde yview"
pack .orde.scroll -side right -fill y 


# Lectura de cabecera del archivo
###################################

 
set f [open  $arch r]
gets $f line
gets $f otra
set cont [llength $line]
set i 0 
while {$i < $cont} {
   set id$i [lindex $otra $i]
   set nro [string index [set id$i] 1]
   set nro2 [string index [set id$i] 0]
   if {($nro == ".") || ($nro2 == ".") } {
     set aux $i
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
frame .orde.colHdr 
pack .orde.colHdr -side top -fill x -padx 4

set i 0
set j 1
while {$i < $aux} {
 label .orde.colHdr.col$j -width 10 -text [set ident$i] -relief ridge -padx 5
 incr i
 incr j
} 
while {$i <= $cont} {
 label .orde.colHdr.col$j -width 10 -text [set comp$i] -relief ridge -padx 5
 incr i
 incr j
}
set k 1
while {$k <= $cont} {
   pack .orde.colHdr.col$k  -side left -fill x
   incr k
}
 


#Crea celdas 
#######################
frame .orde.wws -relief sunken -borderwidth 4 
pack .orde.wws -side top -fill x -pady 4 -padx 4
set var 1
for {set row 1} { $row <= $numline } {incr row 1} {

	set rowName .orde.wws.$row

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







}




