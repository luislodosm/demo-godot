extends Movimiento
class_name Giro, "../iconos/giro.png"

export var fuerza_giro = 500
export var accion_derecha = "ui_right" 
export var accion_izquierda = "ui_left" 

func _physics_process(_delta):
	var torque_aplicado = 0
	
	if Input.is_action_pressed(accion_derecha):
		torque_aplicado += fuerza_giro
	if Input.is_action_pressed(accion_izquierda):
		torque_aplicado -= fuerza_giro
	
	cuerpo.applied_torque = torque_aplicado
