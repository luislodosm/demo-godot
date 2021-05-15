extends Movimiento
class_name VelocidadHorizontal, "res://iconos/horizontal.png"

export var velocidad = 100
export var accion_derecha = "derecha" 
export var accion_izquierda = "izquierda" 

func _physics_process(_delta):
	if Input.is_action_pressed(accion_derecha):
		cuerpo.linear_velocity.x = velocidad
	elif Input.is_action_pressed(accion_izquierda):
		cuerpo.linear_velocity.x = -velocidad
	else:
		cuerpo.linear_velocity.x = 0
