extends Movimiento
class_name FuerzaHorizontal, "../iconos/horizontal.png"

export var fuerza = 100
export var accion_derecha = "derecha" 
export var accion_izquierda = "izquierda" 
onready var cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	if Input.is_action_pressed(accion_derecha):
		cuerpo.applied_force.x = fuerza
	elif Input.is_action_pressed(accion_izquierda):
		cuerpo.applied_force.x = -fuerza
	else:
		cuerpo.applied_force.x = 0
