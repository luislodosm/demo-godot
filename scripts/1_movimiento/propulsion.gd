extends Movimiento
class_name PropulsionDireccional, "../iconos/propulsion.png"

export var fuerza = 100
export var accion = "ui_up" 
export var direccion = Vector2.UP

func _physics_process(_delta):
	
	var propulsion = Vector2.ZERO
	
	if Input.is_action_pressed(accion):
		propulsion = fuerza * direccion.rotated(cuerpo.rotation)
	
	cuerpo.applied_force = propulsion
