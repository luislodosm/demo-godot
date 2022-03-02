extends Movimiento
class_name FuerzaHorizontal, "../iconos/horizontal.png"

export var aceleracion = 200
export var velocidad_maxima = 100
export var accion_derecha = "ui_right" 
export var accion_izquierda = "ui_left" 

func _physics_process(_delta):
	var fuerza_horizontal = 0
	
	if Input.is_action_pressed(accion_derecha):
		fuerza_horizontal += aceleracion 
	if Input.is_action_pressed(accion_izquierda):
		fuerza_horizontal -= aceleracion
	
	if abs(cuerpo.linear_velocity.x) > velocidad_maxima:
		fuerza_horizontal = 0
	
	cuerpo.applied_force.x = fuerza_horizontal * (cuerpo.gravity_scale  + 1)
