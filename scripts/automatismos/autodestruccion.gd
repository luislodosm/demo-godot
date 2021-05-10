extends Automatismo
class_name AutoDestruccion

export var explosion: PackedScene
onready var temporizador = get_parent() as Timer

func _ready():
	temporizador.connect("timeout", self, "explotar")

func explotar():
	var explosion_creada = explosion.instance()
	explosion_creada.position = get_parent().position
	get_parent().get_root().add_child(explosion_creada)
	queue_free()
