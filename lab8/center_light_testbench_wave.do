onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /center_light_testbench/light_on
add wave -noupdate /center_light_testbench/L
add wave -noupdate /center_light_testbench/R
add wave -noupdate /center_light_testbench/NL
add wave -noupdate /center_light_testbench/NR
add wave -noupdate /center_light_testbench/reset
add wave -noupdate /center_light_testbench/game_over
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
WaveRestoreZoom {0 ps} {2556 ps}
