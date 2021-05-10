extends Accion
class_name LanzadorProyectiles

export var proyectil: PackedScene
export var accion = "atacar"
export var impulso = 300
onready var origen = get_parent() as Node2D

func _process(_delta):
	
	if Input.is_action_just_pressed(accion):
		
		var proyectil_lanzado = proyectil.instance() as RigidBody2D
		get_tree().get_root().add_child(proyectil_lanzado)
		
		var posicion = origen.global_position
		var direccion = Vector2.RIGHT.rotated(origen.global_rotation)
		var rotacion = direccion.angle()
		
		proyectil_lanzado.position = posicion
		proyectil_lanzado.rotation = rotacion
		if proyectil_lanzado is RigidBody2D:
			proyectil_lanzado.apply_central_impulse(impulso * direccion)
