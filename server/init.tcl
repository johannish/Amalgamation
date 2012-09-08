# The startup script for Amalgamation

puts "Amalgamation 0.1"
source board.tcl
set gameboard [initBoard 3 4]
set gameboard [placeTile $gameboard 3 B]
puts $gameboard
