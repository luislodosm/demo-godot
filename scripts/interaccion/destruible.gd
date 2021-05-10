extends Interaccion
class_name Destruible

export var vida = 100

func herir(cantidad):
	vida -= cantidad
	if vida <= 0:
		get_parent().queue_free()
