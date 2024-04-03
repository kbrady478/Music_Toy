extends Node2D

var bpm
var current_Wait_Time
var new_Wait_Time
var metronome_Toggle

@onready var metronome_Timer = $Metronome_Timer
@onready var metronome_Sound = $Metronome_Sound


func _ready():
	bpm = 180.0
	current_Wait_Time = 0.5
	new_Wait_Time = 0.1
	metronome_Toggle = true
	metronome()

func bpm_Calculation():
	# Ensure both are floats, otherwise it will round to int
	new_Wait_Time = (60.0 / bpm)
	current_Wait_Time = new_Wait_Time
	pass

func metronome():
	if metronome_Toggle != true:
		pass
	else:
		if current_Wait_Time != new_Wait_Time:
			bpm_Calculation()
		
		print_debug(current_Wait_Time)
		metronome_Sound.play()
		metronome_Timer.set_wait_time(current_Wait_Time)
		metronome_Timer.start()

func _on_metronome_timer_timeout():
	metronome()
