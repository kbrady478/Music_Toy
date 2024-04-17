extends Control

var bpm: float
var current_Wait_Time: float
var new_Wait_Time: float
var volume_Level: float
var mute_Toggle: bool
var pause_Toggle: bool

@onready var effect_Timer = $"Audio Controller/Timer"
@onready var sound_Effect = $"Audio Controller/Sound_Effect"


func _ready():
	bpm = 180.0
	current_Wait_Time = 0.5
	new_Wait_Time = 0.1
	mute_Toggle = false
	pause_Toggle = false
	effect_Player()

func bpm_Calculation():
	# Ensure both are floats, otherwise it will round to int
	new_Wait_Time = (60.0 / bpm)
	current_Wait_Time = new_Wait_Time
	pass


func effect_Player():
	if mute_Toggle == true:
		pass
	else:
		if current_Wait_Time != new_Wait_Time:
			bpm_Calculation()
		
		print_debug(current_Wait_Time)
		
		sound_Effect.play()
		effect_Timer.set_wait_time(current_Wait_Time)
		effect_Timer.start()


func _on_timer_timeout():
	effect_Player()


func _on_volume_slider_value_changed(value):
	volume_Level = value
	
	if mute_Toggle == true:
		pass
	else:
		sound_Effect.set_volume_db(linear_to_db(volume_Level))



func _on_mute_toggle_pressed():
	mute_Toggle = !mute_Toggle
	
	if mute_Toggle == true:
		sound_Effect.set_volume_db(linear_to_db(0))
	else:
		sound_Effect.set_volume_db(linear_to_db(volume_Level))


func _on_pause_toggle_pressed():
	pause_Toggle = !pause_Toggle
	
	if pause_Toggle == true:
		effect_Timer.paused = true
	else:
		effect_Player()
		effect_Timer.set_wait_time(current_Wait_Time)
		effect_Timer.paused = false
