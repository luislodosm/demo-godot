extends Movimiento
class_name Propulsion, "res://iconos/propulsion.png"

export var fuerza = 100
export var accion = "arriba" 
export var direccion = Vector2.UP

func _physics_process(_delta):
	if Input.is_action_pressed(accion):
		cuerpo.applied_force = fuerza * direccion.rotated(cuerpo.rotation)
	else:
		cuerpo.applied_force = Vector2.ZERO
