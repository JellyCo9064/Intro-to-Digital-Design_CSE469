onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /victory_testbench/HEX0
add wave -noupdate /victory_testbench/game_over
add wave -noupdate /victory_testbench/L
add wave -noupdate /victory_testbench/R
add wave -noupdate /victory_testbench/L4
add wave -noupdate /victory_testbench/R4
add wave -noupdate /victory_testbench/reset
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1106 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 100
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {1100 ps} {2100 ps}
