extends Node2D

var bpm
var current_Wait_Time
var new_Wait_Time
var metronome_Toggle
var metronome_Accent
var accent_Tracker

@onready var metronome_Timer = $Metronome_Timer
@onready var metronome_Sound = $Metronome_Sound
@onready var metronome_Accented = $Metronome_Accented
@onready var bpm_Entry = $"../UI Elements/BPM Entry"

func _ready():
	bpm = 180.0
	current_Wait_Time = 0.5
	new_Wait_Time = 0.1
	metronome_Toggle = true
	metronome_Accent = 4
	accent_Tracker = 0
	bpm_Entry.set_placeholder(str(bpm))
	metronome()

func bpm_Calculation():
	# Ensure both are floats, otherwise it will round to int
	new_Wait_Time = (60.0 / bpm)
	current_Wait_Time = new_Wait_Time
	metronome_Timer.set_wait_time(current_Wait_Time)
	pass

func metronome():
	if metronome_Toggle != true:
		pass
	else:
		if current_Wait_Time != new_Wait_Time:
			bpm_Calculation()
		
		#print_debug(current_Wait_Time)
		
		if accent_Tracker == 0:
			metronome_Accented.play()
			metronome_Timer.set_wait_time(current_Wait_Time)
			metronome_Timer.start()
			accent_Tracker += 1
		else:
			metronome_Sound.play()
			metronome_Timer.set_wait_time(current_Wait_Time)
			metronome_Timer.start()
			accent_Tracker += 1
			if accent_Tracker == 4:
				accent_Tracker = 0
			

func _on_metronome_timer_timeout():
	metronome()


func _on_line_edit_text_submitted(new_text):
	bpm = float(new_text)
	bpm_Entry.set_placeholder(str(bpm))
	bpm_Calculation()





#func _on_bpm_entry_text_changed(new_text):

