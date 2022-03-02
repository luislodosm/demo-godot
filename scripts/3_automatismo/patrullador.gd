extends Mecanica

export var puntos: Array
export var fuerza = 100
export var distancia_llegada = 50
var punto_actual = 0
var cuerpo

func _ready():
	cuerpo = get_parent() as RigidBody2D

func _physics_process(_delta):
	
	var nodo_actual = get_node(puntos[punto_actual]) as Node2D
	var distancia = nodo_actual.position - cuerpo.position as Vector2
	var direccion = distancia.normalized()
	cuerpo.applied_force = direccion * fuerza
	
	if (distancia.length() < distancia_llegada):
		if (punto_actual + 1 < puntos.size()):
			punto_actual += 1
		else:
			punto_actual = 0
