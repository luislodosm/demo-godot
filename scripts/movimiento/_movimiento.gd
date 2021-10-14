extends Mecanica
class_name Movimiento, "res://scripts/iconos/movimiento.png"

onready var cuerpo = get_parent() as RigidBody2D

func _ready():
	if not cuerpo:
		printerr(get_parent().name + " no es un RigidBody2D")
		set_physics_process(false)
