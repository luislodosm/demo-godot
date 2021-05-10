extends Movimiento
class_name VelocidadVertical, "../iconos/vertical.png"

export var velocidad = 100
export var accion_arriba = "arriba" 
export var accion_abajo = "abajo" 
onready var cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	if Input.is_action_pressed(accion_arriba):
		cuerpo.linear_velocity.y = -velocidad
	elif Input.is_action_pressed(accion_abajo):
		cuerpo.linear_velocity.y = velocidad
	else:
		cuerpo.linear_velocity.y = 0
