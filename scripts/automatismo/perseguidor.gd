extends Automatismo
class_name CuerpoPerseguidor, "res://iconos/perseguidor.png"

export var ruta_objetivo: NodePath
export var velocidad = 100
onready var objetivo
onready var cuerpo = get_parent() as RigidBody2D

func _ready():
	
	var error = false
	if ruta_objetivo == "":
		printerr(name + " no tiene objetivo")
		error = true
	if not cuerpo:
		printerr(get_parent().name + " no es RigidBody2D")
		error = true
	
	if error:
		set_physics_process(false)
	else:
		objetivo = get_node(ruta_objetivo)

func _physics_process(_delta):
	var direccion = objetivo.position - cuerpo.position
	cuerpo.applied_force = direccion.normalized() * velocidad
