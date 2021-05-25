extends Interfaz
class_name BotonCambioEscena, "res://iconos/boton_cambio_escena.png"

export(String, FILE, "*.tscn") var ruta_escena
onready var boton = get_parent() as Button

func _ready():
	if boton:
		var _error = boton.connect("pressed", self, "cambiar")

func cambiar():
	if ResourceLoader.exists(ruta_escena):
		var _error = get_tree().change_scene(ruta_escena)
	else:
		print("Escena no encontrada: " + ruta_escena)