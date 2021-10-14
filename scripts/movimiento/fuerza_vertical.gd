extends Movimiento
class_name FuerzaVertical, "res://scripts/iconos/vertical.png"

export var fuerza = 100
export var velocidad_maxima = 100
export var accion_arriba = "arriba" 
export var accion_abajo = "abajo" 

func _physics_process(_delta):
	var limitador = abs(cuerpo.linear_velocity.y) < velocidad_maxima
	limitador = float(limitador)
	if Input.is_action_pressed(accion_arriba):
		cuerpo.applied_force.y = -fuerza * limitador
	elif Input.is_action_pressed(accion_abajo):
		cuerpo.applied_force.y = fuerza * limitador
	else:
		cuerpo.applied_force.y = 0
