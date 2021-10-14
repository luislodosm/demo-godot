extends Interaccion
class_name CuerpoVida, "res://scripts/iconos/vida.png"

export var vida = 100
export var restos: PackedScene

func herir(cantidad):
	vida -= cantidad
	if vida <= 0:
		if restos:
			var creado = restos.instance()
			get_tree().get_root().add_child(creado)
			creado.global_position = get_parent().global_position
		get_parent().queue_free()
