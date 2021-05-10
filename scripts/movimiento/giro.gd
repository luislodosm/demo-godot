extends Movimiento
class_name Giro, "../iconos/giro.png"

export var fuerza_giro = 500
export var accion_derecha = "derecha" 
export var accion_izquierda = "izquierda" 
onready var cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	if Input.is_action_pressed(accion_derecha):
		cuerpo.applied_torque = fuerza_giro
	elif Input.is_action_pressed(accion_izquierda):
		cuerpo.applied_torque = -fuerza_giro
	else:
		cuerpo.applied_torque = 0
