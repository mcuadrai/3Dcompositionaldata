proc MIPuntosDiagTernario {} {
    global ncompo 
    global numline 
    global nident validar
    set nl 1
    while {$nl<=$numline} { 
             global lista$nl
             incr nl 
    }
    if {$ncompo==3} {
          Validacion
          if {$numline!=0} {
            set nc 1
            while {$nc<=$numline} {
               lappend LineaParametros [lrange [set lista$nc] $nident end] 2 
               incr nc
            }
            set LineaP [split $LineaParametros { }]	
            if [catch {open "|mpteq $LineaP |& cat"} ErrVisTEquilatero] {
                error $ErrVisTEquilatero
            }
           } else {
            Mensaje " No hay datos "
	    } 
    } else {
	if {$ncompo==4} {
            Validacion
              if {$numline != 0} {
                 set nc 1
                 while {$nc<=$numline} {
                   lappend LineaParametros [lrange [set lista$nc] $nident end] 2
                   incr nc
                 }
                 set LineaP [split $LineaParametros { }]	
                 if [catch {open "|mptetra $LineaP |& cat"} ErrVisTetra] {
                     Mensaje $ErrVisTetra
                 }
             } else {
                Mensaje " No hay datos "
	     } 
	} else {
           Mensaje "Numero de componentes no es igual a 3 o 4"
	}
    }
}
