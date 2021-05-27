extends Mecanica
class_name Interfaz, "res://iconos/interfaz.png"

onready var boton = get_parent() as Button

func _ready():
	if boton:
		var _error = boton.connect("pressed", self, "accionar")