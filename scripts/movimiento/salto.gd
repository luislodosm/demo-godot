extends Movimiento
class_name Salto, "../iconos/salto.png"

export var fuerza = 100
onready var cuerpo = get_parent() as RigidBody2D
onready var rayo = get_node_or_null("../RayCast2D") as RayCast2D

func _physics_process(_delta):
	if Input.is_action_just_pressed("arriba"):
		if rayo and rayo.is_colliding():
			var fuerza_aplicada = fuerza * Vector2.UP 
			fuerza_aplicada *= sqrt(cuerpo.gravity_scale)
			cuerpo.apply_impulse(Vector2.ZERO, fuerza_aplicada)
