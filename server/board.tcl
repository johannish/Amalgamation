# TODO:
# * implement state -- don't pass "board" and "tiles" around, use upvar/globals, or TCL-OO


# Returns the letter of the alphabet corresponding to the index passed in.
# This will return nothing if i is greater than 25.
proc getLetter {i} {
	set letters [list A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
	return [lindex $letters $i]
}

proc initBoard {x y} {
	for {set i 0} {$i < $x} {incr i} {
		for {set j 0} {$j < $y} {incr j} {
			set y_cord [getLetter $j]
			# X value should be [1] based -- A1, A2, A3, etc.
			set x_cord [expr $i + 1]
			dict set board $x_cord $y_cord ""
		}
	}
	return $board
}

proc initTiles {x y} {
	for {set i 0} {$i < $x} {incr i} {
		for {set j 0} {$j < $y} {incr j} {
			set y_cord [getLetter $j]
			# X value should be [1] based -- A1, A2, A3, etc.
			set x_cord [expr $i + 1]
			dict set tiles $x_cord $y_cord "unused"
		}
	}
	return $tiles
}

proc placeTile {board x y} {
	dict set board $x $y "H"
	# dict set tiles $x $y "used"
}
