tool
extends Movimiento
class_name Propulsion, "../iconos/propulsion.png"

export var fuerza = 100
export var accion = "arriba" 
export var direccion = Vector2.UP
onready var cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	get_parent().update()
	if Engine.editor_hint:
		return
	if Input.is_action_pressed(accion):
		cuerpo.applied_force = fuerza * direccion.rotated(cuerpo.rotation)
	else:
		cuerpo.applied_force = Vector2.ZERO
