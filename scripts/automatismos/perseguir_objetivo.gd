extends Automatismo
class_name PerseguirObjetivo

export var ruta_objetivo: NodePath
export var velocidad = 100
onready var objetivo = get_node(ruta_objetivo)
onready var cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	if not objetivo:
		return;
	var direccion = objetivo.position - cuerpo.position
	cuerpo.applied_force = direccion.normalized() * velocidad
