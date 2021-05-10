extends Animacion
class_name ReflejoHorizontal, "../iconos/reflejo.png"

export var accion_normal = "derecha" 
export var accion_reflejado = "izquierda" 
onready var sprite = get_parent()

func _process(_delta):
	if "flip_h" in sprite:
		if Input.is_action_just_pressed(accion_normal):
			sprite.flip_h = false
		if Input.is_action_just_pressed(accion_reflejado):
			sprite.flip_h = true
