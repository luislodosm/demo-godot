extends Automatismo
class_name AutoDestruccion, "res://iconos/autodestruccion.png"

export var explosion: PackedScene
onready var temporizador = get_node("../Timer") as Timer

func _ready():
	if temporizador:
		temporizador.connect("timeout", self, "explotar")
		temporizador.start()
	else:
		printerr(name + " no tiene Timer")

func explotar():
	if explosion:
		var explosion_creada = explosion.instance()
		explosion_creada.position = get_parent().position
		get_tree().get_root().add_child(explosion_creada)
	get_parent().queue_free()
