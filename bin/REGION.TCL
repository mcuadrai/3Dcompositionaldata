proc InterfazArea { numarea } {
        global indice
	set w .area
	catch {destroy $w}
	toplevel $w
	wm title $w "Relacion entre Areas de agrupacion"
	wm iconname $w "Rel. Area"

	label $w.mensaje -font *times-medium-r-*-*-20*  -wraplength 4i -justify left \
			 -text "Ingrese los coeficientes de la ecuacion eliptica"
	pack $w.mensaje -side top

	frame $w.medio  -bd 10
        pack $w.medio -side top -fill x

	set lindice [expr $numarea*7]
	set ind 0 
	while {$ind<$lindice} {
              set Coef$ind 0 
	   incr ind 
	}

	set nv 1
	set indice 0 
	while {$nv<=$numarea} {
       	  frame $w.medio.$nv
	  pack  $w.medio.$nv -side left  -pady 2 -anchor c
 
	  label $w.medio.$nv.mensaje -font *times-medium-r-*-*-14*  -wraplength 4i -justify left \
			 -text "Area $nv"
          pack  $w.medio.$nv.mensaje -side top

          set datos { {a :} {b :} {c :} {d :} {e :} {f :} {color (1/2/3) :}}
          foreach i { 0 1 2 3 4 5 6 } {
		frame $w.medio.$nv.$i
		pack  $w.medio.$nv.$i -side top -pady 2 -anchor c 
		label $w.medio.$nv.$i.label -text [lindex $datos $i]
		entry $w.medio.$nv.$i.entry -width 25 -relief sunken -textvariable Coef$indice
		pack  $w.medio.$nv.$i.entry $w.medio.$nv.$i.label -side right -fill x  
		incr indice	
	  }
          incr nv
	}
 
	frame $w.botones  -bd 10 
        pack $w.botones -side bottom -fill x -anchor c

        button $w.botones.ok -text Aceptar -command  VerArea  
        button $w.botones.cancel -text Cancelar -command "destroy $w"
        pack $w.botones.ok $w.botones.cancel -side left -anchor center	


}

proc VerArea { } {
	global indice

        set ind 0 
	while {$ind<$indice} {
             global Coef$ind
             lappend ListaP [set Coef$ind]
	     incr ind
        }

        if [catch {open "|mareas $ListaP |& cat"} errorv2] { 
               error $errorv2
        }
	
}

proc Ecparam {} { 
	set w .param
	catch {destroy $w}
	toplevel $w
	wm title $w "Datos para ver el volumen"
	wm iconname $w "Volumen parametrico"

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

 
        button $w.botones.ok -text Aceptar -command  VerRegionMallas
        button $w.botones.cancel -text Cancelar -command "destroy $w"
        pack $w.botones.ok $w.botones.cancel -side left -anchor center 
}


proc VerRegionMallas {} {
     foreach k { 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 } {
	global parametro$k 
     }

     set LineaParametros [list $parametro0 $parametro1 $parametro2 $parametro3 $parametro4 $parametro5\
				$parametro6 $parametro7 $parametro8 $parametro9 $parametro10 $parametro11 \
				$parametro12 $parametro13 $parametro14 \
				]    

     if [catch {open "|volumenf $LineaParametros |& cat"} errorv2] { 
              error $errorv2
     }
}


