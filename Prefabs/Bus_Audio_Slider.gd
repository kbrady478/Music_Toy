# Tutorial used: https://www.youtube.com/watch?v=aFkRmtGiZCw

extends HSlider

@export
var bus_Name: String

var bus_Index: int

func _ready() -> void:
	bus_Index = AudioServer.get_bus_index(bus_Name)
	value_changed.connect(On_Value_Changed)
	
func On_Value_Changed(value: float) -> void:
	AudioServer.set_bus_volume_db(
		bus_Index,
		linear_to_db(value)
	)
