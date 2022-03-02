extends Movimiento
class_name Salto, "../iconos/salto.png"

export var fuerza = 100
export var accion = "ui_up"
onready var rayo = get_node_or_null("../RayCast2D") as RayCast2D

func _physics_process(_delta):
	if Input.is_action_just_pressed(accion):
		if rayo:
			if rayo.is_colliding():
				saltar()
		else:
			saltar()
			print("Falta RayCast2D para detectar el suelo")

func saltar():
	var fuerza_aplicada = fuerza * Vector2.UP 
	fuerza_aplicada *= sqrt(abs(cuerpo.gravity_scale))
	cuerpo.apply_impulse(Vector2.ZERO, fuerza_aplicada)
