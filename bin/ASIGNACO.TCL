proc Busca_Agrega {listaclave NuevoId} {
set estaid [lsearch -exact $listaclave $NuevoId]
    if {$estaid >= 0} {
		return [lappend $listaclave $nuevoId]
    } else { 
		return $listaclave
    }   
}


proc AsignarColorId {} {
        global nident  
        global numline  
        global vselidcolor   
        for {set t 0} {$t<=$nident} {incr t} {
        	global ident$t 
	}
        for {set l 1} {$l<=$numline} {incr l} {
        	global lista$l 
	}

	set ordenCol 0 
        set NomEncabId [set ident$ordenCol]

        # Creando nueva Ventana
	set w .asi
	catch {destroy $w}
	toplevel $w
	wm title $w "Asignar Color a Identificadores"
	wm iconname $w "hola2"

#	label $w.mensaje -font *times-medium-r-*-*-12*  -wraplength 4i -justify left \
#			 -text "Ordenamiento simple para un solo identificador\
#				en forma ascendente o descendente"
#	pack $w.mensaje -side top

	frame $w.left	
	frame $w.right
	pack $w.left $w.right -side left -expand yes -pady .5c -padx .5c
	frame $w.botones  -bd 10
        pack $w.botones -side bottom -fill x

	set Identif [lindex $lista2 $ordenCol]
	set listaid  [list $Identif]

        for {set nc 1} {$nc<=$numline} {incr nc} {
		set Identif [lindex [set lista$nc] $ordenCol]
		Busca_Agrega listaid Identif 
	}

        for {set i 1} {$i<=$nident} {incr i 1} {
		checkbutton $w.left.wasignaCoId$i \
		-text [lindex $listaid [expr $i-1]] -variable vordenid$i -relief flat 
		pack $w.left.wasignaCoId$i -side top -pady 2 -anchor w
	}     

	foreach vcolor {Rojo Verde Azul Amarillo Violeta Celeste Blanco } {
		set AD [string tolower $vcolor]
		radiobutton $w.right.$AD \
		-text $vcolor -variable vforma -relief flat -value $AD
		pack $w.right.$AD -side top -pady 2 -anchor w
	}
      
        button $w.botones.ok -text OK -command {NohaceNada}
        button $w.botones.cancel -text Cancelar -command "destroy $w"
        pack $w.botones.ok $w.botones.cancel -side left  
	
}
