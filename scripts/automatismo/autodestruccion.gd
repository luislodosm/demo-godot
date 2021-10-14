extends Automatismo
class_name AutoDestruccion, "res://scripts/iconos/autodestruccion.png"

export var explosion: PackedScene
export var tiempo = 3.0

func _ready():
	yield(get_tree().create_timer(tiempo), "timeout")
	explotar()

func explotar():
	if explosion:
		var explosion_creada = explosion.instance()
		explosion_creada.position = get_parent().position
		get_tree().get_root().add_child(explosion_creada)
	get_parent().queue_free()
