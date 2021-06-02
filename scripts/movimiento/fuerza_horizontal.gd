extends Movimiento
class_name FuerzaHorizontal, "res://iconos/horizontal.png"

export var fuerza = 200
export var accion_derecha = "derecha" 
export var accion_izquierda = "izquierda" 

func _physics_process(_delta):	
	if Input.is_action_pressed(accion_derecha):
		cuerpo.applied_force.x = fuerza
	elif Input.is_action_pressed(accion_izquierda):
		cuerpo.applied_force.x = -fuerza
	else:
		cuerpo.applied_force.x = 0
