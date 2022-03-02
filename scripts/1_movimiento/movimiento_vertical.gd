extends Movimiento
class_name FuerzaVertical, "../iconos/vertical.png"

export var aceleracion = 100
export var velocidad_maxima = 100
export var accion_arriba = "ui_up" 
export var accion_abajo = "ui_down" 

func _physics_process(_delta):
	var fuerza_vertical = 0
	
	if Input.is_action_pressed(accion_arriba):
		fuerza_vertical -= aceleracion 
	if Input.is_action_pressed(accion_abajo):
		fuerza_vertical += aceleracion
	
	if abs(cuerpo.linear_velocity.y) > velocidad_maxima:
		fuerza_vertical = 0
	
	cuerpo.applied_force.y = fuerza_vertical * (cuerpo.gravity_scale + 1)
