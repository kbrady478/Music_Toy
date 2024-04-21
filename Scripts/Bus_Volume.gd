extends Control

@export var bus_Name: String

var bus_Index: int
var volume_Level : float # for use across functions
var mute_Toggle: bool


func _ready() -> void:
	bus_Index = AudioServer.get_bus_index(bus_Name)
	mute_Toggle = false
	volume_Level = .5
	


func _on_volume_slider_value_changed(value) -> void:
	volume_Level = value
	
	if mute_Toggle == true:
		AudioServer.set_bus_volume_db(bus_Index, linear_to_db(0))
	else:
		AudioServer.set_bus_volume_db(bus_Index, linear_to_db(volume_Level))


func _on_mute_button_pressed():
	mute_Toggle = not mute_Toggle
	
	if mute_Toggle == true:
		AudioServer.set_bus_volume_db(bus_Index, linear_to_db(0))
	else:
		AudioServer.set_bus_volume_db(bus_Index, linear_to_db(volume_Level))



