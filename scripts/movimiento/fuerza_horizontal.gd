extends Movimiento
class_name FuerzaHorizontal, "res://scripts/iconos/horizontal.png"

export var aceleracion = 200
export var velocidad_maxima = 100
export var accion_derecha = "derecha" 
export var accion_izquierda = "izquierda" 

func _physics_process(_delta):
	var limitador = abs(cuerpo.linear_velocity.x) < velocidad_maxima
	limitador = float(limitador)
	if Input.is_action_pressed(accion_derecha):
		cuerpo.applied_force.x = aceleracion * limitador
	elif Input.is_action_pressed(accion_izquierda):
		cuerpo.applied_force.x = -aceleracion * limitador
	else:
		cuerpo.applied_force.x = 0
