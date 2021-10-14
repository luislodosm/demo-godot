extends Interaccion
class_name Recogible, "res://scripts/iconos/recogible.png"

export var jugador: NodePath
onready var area = get_parent() as Area2D

func _ready():

	var error = false
	if jugador == "":
		printerr(name + " no tiene esperado")
		error = true
	if not area:
		printerr(get_parent().name + " no es Area2D")
		error = true

	if error:
		queue_free()
	else:
		area.connect("body_entered", self, "_on_body_entered")

func _on_body_entered(body):
	if body == get_node(jugador):
		area.queue_free()
