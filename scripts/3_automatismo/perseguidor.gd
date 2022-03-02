extends Automatismo
class_name CuerpoPerseguidor, "../iconos/perseguidor.png"

export var ruta_objetivo: NodePath
export var velocidad = 100
var objetivo 
var cuerpo

func _ready():
	objetivo = get_node(ruta_objetivo)
	cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	var distancia = objetivo.position - cuerpo.position
	var direccion = distancia.normalized()
	cuerpo.applied_force = direccion * velocidad
