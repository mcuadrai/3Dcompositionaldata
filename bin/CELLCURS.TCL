#------------------------------------------------------------------------
# Procedure:
# Description:
# 
# Author		Date		Modification
#------------------------------------------------------------------------
proc CursorRight {} {
global maxRow maxCol row col nextCell cellParent curCell
global numColView

	# Reach last cell in the row wrap back to the
	# first cell of the next row.
	#-----------------------------------------------
	if {$col == $maxCol} {
		set col 1
		if {$row == $maxRow} {
			set row 1
		} else {
			set row [expr $row + 1]
		}
	} else {
		set col [expr $col + 1]
	}

	set nextCell $cellParent.$row,$col 

	focus $nextCell
}

proc CursorUp {} {
global maxRow maxCol row col nextCell cellParent

	if {$row == 1} {
		set row $maxRow
	} else {
		set row [expr $row - 1]
	}
	set nextCell $cellParent.$row,$col 
	focus $nextCell
}
