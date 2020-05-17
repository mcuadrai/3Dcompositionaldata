#-------------------------------------------
#  Modulo de errores
#-------------------------------------------
proc Mensaje { TipoError } {
	set w .cuidado
	catch {destroy $w}
	toplevel $w
	wm title $w "Atencion"
        wm geometry $w +400+400 
	wm iconname $w "Atencion"

	label $w.mensaje -font *times-medium-r-*-*-20*  -wraplength 4i -justify left \
			 -text "  $TipoError  "
	pack $w.mensaje -side top

	
	frame $w.botones  -bd 10 -height 10 -width 20
        pack $w.botones -side bottom -fill x

        button $w.botones.ok -text Aceptar -command "destroy $w"
        pack $w.botones.ok -side bottom -anchor center 
}
