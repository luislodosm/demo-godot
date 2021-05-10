extends Nivel
class_name CambioEscena

export var nombre_esperado = "Jugador"
export(String, FILE, "*.tscn") var ruta_escena
onready var area = get_parent() as Area2D

func _ready():
	area.connect("body_entered",self,"_on_body_entered")

func _on_body_entered(body):
	if body.name == nombre_esperado:
		var _error = get_tree().change_scene(ruta_escena)
