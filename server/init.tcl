proc initGrid {x y} {
	for {set i 0} {$i < $x} {incr i} {
		for {set j 0} {$j < $y} {incr j} {
			set grid($i,$j) "empty"
		}
	}
	return $grid
}
 
