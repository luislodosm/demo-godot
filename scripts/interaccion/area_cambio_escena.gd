extends Interaccion
class_name AreaCambioEscena, "res://scripts/iconos/escena.png"

export var esperado: NodePath
export(String, FILE, "*.tscn") var ruta_escena
onready var area = get_parent() as Area2D

func _ready():
	var error = false
	if esperado == "":
		printerr(name + " falta objeto esperado")
		error = true
	if load(ruta_escena) == null:
		printerr(name + " escena no encontrada")
		error = true
	if ruta_escena == "":
		printerr(name + " falta ruta de escena")
		error = true
	if not area:
		printerr(area.name + " no es Area2D")
		error = true
	
	if error:
		queue_free()
	else:
		area.connect("body_entered",self,"_on_body_entered")

func _on_body_entered(body):
	if body == get_node(esperado):
		var _error = get_tree().change_scene(ruta_escena)
