
proc modn1PovRay { numArch } {
	upvar $numArch fileId
	global numline nident
    	for {set i 1} {$i<=$numline} {incr i} {
		global lista$i
	}

	set nc 1
	while {$nc<=$numline} {
		puts $fileId "#declare punto$nc = object { "
		puts $fileId "   sphere { "

		set p1 [lindex [set lista$nc] [expr $nident-1+1]]
		set p2 [lindex [set lista$nc] [expr $nident-1+2]]
		set p3 [lindex [set lista$nc] [expr $nident-1+3]]
		set p4 [lindex [set lista$nc] [expr $nident-1+4]]
		set parte [expr $p4 + 2*$p2 + $p3]
		set x [expr (1.0/4.0)*sqrt(6.0)*$parte ]
		set y $p4
		set z [expr [expr 1.0/4.0]*sqrt(2.0)*[expr $p4 + 3 * $p3] ]
		
		puts $fileId "  <-$x,$y,$z>,0.05"
		puts $fileId "  pigment {color Red} "
		puts $fileId "  } "
		puts $fileId "} "
		incr nc
	}
	close $fileId
}

#
# Modulo principal de la visualizacion en pov
#

proc modpPovRay {} {
	global ncompo	
	global numline validar
    	for {set i 1} {$i<=$numline} {incr i} {
		global lista$i
	}
        if {$ncompo==4} {
	     Validacion
             if ![catch {open [pwd]/puntos.inc {WRONLY CREAT}} fileId] {
		if {$numline>0} {
			modn1PovRay fileId
                       if [catch {open "|cp tetra.pov tetra2.pov |& cat"} er] {
		            error er
                  	}
			if ![catch {open [pwd]/tetra2.pov {RDWR APPEND}} fileId2] {
				modn2PovRay fileId2
				close $fileId2
			} else {
			    error $fileId2	
			}			
		} else {
		    Mensaje "No hay datos"
		}
	     } else {
		Mensaje "$fileId"
	     }
	} else {
		Mensaje "el numero de componentes debe ser igual a 4"
	}
}

proc modn2PovRay { NumArch } {
	upvar $NumArch fileId 
	global numline
    	for {set i 1} {$i<=$numline} {incr i} {
		global lista$i
	}

	set nc 1
	while {$nc<=$numline} {
		puts $fileId "object { punto$nc } "
		incr nc
	}

        if [catch {open "|runpov d320 tetra2 |& cat"} er] {
		error er
	}
	return $fileId
}


