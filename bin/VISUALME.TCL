proc modpuntosvol { } {
    global ncompo 
    global numline 
    global nident 
   if {$ncompo==4} {

        set w .puntosvol
	catch {destroy $w}
	toplevel $w
	wm title $w "Datos  y volumen"
	wm iconname $w "Datos y Volumen "

 	Validacion        

        label $w.mensaje -font *times-medium-r-*-*-20*  -wraplength 4i -justify left \
			 -text "Ingrese el tamano de la elipsoide y su centro"
	pack $w.mensaje -side top


	 set datos { {a :} {b :} {c :} {h :} {k :} {l :} }
	 foreach i { 0 1 2 3 4 5 } {
		frame $w.$i
		pack  $w.$i -side top -pady 2 -anchor c 
		label $w.$i.label -text [lindex $datos $i]
		entry $w.$i.entry -width 30 -relief sunken -textvariable parametro$i
		pack $w.$i.entry $w.$i.label -side right -fill x  
	 }

	label $w.mensaje2 -font *times-medium-r-*-*-20*  -wraplength 4i -justify left \
			 -text "Matriz de rotacion"
	pack $w.mensaje2 -side top

	 set datos2 { l1: l2: l3: m1: m2: m3: n1: n2: n3: }
         set i 6
	 foreach nfila { 1 2 3 } {
	    frame $w.fila$nfila
	    pack  $w.fila$nfila -side top -pady 2 -anchor e 
	    foreach ncolumna { 1 2 3 } {
	    	label $w.fila$nfila.label$ncolumna -text [lindex $datos2 [expr $i-6]]
	    	entry $w.fila$nfila.entry$ncolumna -width 30 -relief sunken -textvariable parametro$i
               incr i 
            }  
	   pack  $w.fila$nfila.label1 $w.fila$nfila.entry1 \
	         $w.fila$nfila.label2 $w.fila$nfila.entry2 \
	         $w.fila$nfila.label3 $w.fila$nfila.entry3 \
			 -side left -fill x
	 }

	
        
	frame $w.botones  -bd 10
        pack $w.botones -side bottom -fill x

 
        button $w.botones.ok -text Aceptar -command VerPuntosVol 
        button $w.botones.cancel -text Cancelar -command "destroy $w"
        pack $w.botones.ok $w.botones.cancel -side left -anchor center 
  
    } else {
           Mensaje "Numero de componentes no es igual a 3 o 4"
    }
}

proc VerPuntosVol { } {
         global numline nident
         set nl 1
         while {$nl<=$numline} { 
             global lista$nl
             incr nl 
         }
         foreach k {0 1 2 3 4 5 6 7 8 9 10 11 12 13 14} {
	      global parametro$k
	 }
            set nc 1
            while {$nc<=$numline} {
               lappend LineaParam [split [lrange [set lista$nc] $nident end] { }] 2
               incr nc
            }
         set LineaParam [split $LineaParam { }]
           
        set LineaParametros [list $parametro0 $parametro1 $parametro2 $parametro3 $parametro4 $parametro5 \
                                  $parametro6 $parametro7 $parametro8 $parametro9 $parametro10 \
                                  $parametro11 $parametro12 $parametro13 $parametro14 ]


          set LineaParametros [concat $LineaParametros $LineaParam ]
       
          if [catch {open "|mpv $LineaParametros |& cat"} ErrVisTetra] {
                Mensaje $ErrVisTetra
          }
}


