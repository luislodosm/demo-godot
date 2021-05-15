extends Movimiento
class_name Salto, "res://iconos/salto.png"

export var fuerza = 100
onready var rayo = get_node_or_null("../RayCast2D") as RayCast2D

func _physics_process(_delta):
	if Input.is_action_just_pressed("saltar"):
		if rayo:
			if rayo.is_colliding():
				saltar()
		else:
			printerr("Falta RayCast2D en " + get_parent().name)
			saltar()
			
func saltar():
	var fuerza_aplicada = fuerza * Vector2.UP 
	fuerza_aplicada *= sqrt(cuerpo.gravity_scale)
	cuerpo.apply_impulse(Vector2.ZERO, fuerza_aplicada)
