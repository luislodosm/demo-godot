extends Movimiento
class_name FuerzaVertical, "../iconos/vertical.png"

export var fuerza = 100
export var accion_arriba = "arriba" 
export var accion_abajo = "abajo" 
onready var cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	if Input.is_action_pressed(accion_arriba):
		cuerpo.applied_force.y = -fuerza
	elif Input.is_action_pressed(accion_abajo):
		cuerpo.applied_force.y = fuerza
	else:
		cuerpo.applied_force.y = 0
