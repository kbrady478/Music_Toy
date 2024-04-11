extends Control

var metronome_Bus
var bus_Toggle = true

func _ready():
	var metronome_Bus = AudioServer.get_bus_index("Metronome")
	

func _on_texture_button_pressed():
	print_debug("metronome toggled")
	AudioServer.set_bus_mute(AudioServer.Metronome, not bus_Toggle)

