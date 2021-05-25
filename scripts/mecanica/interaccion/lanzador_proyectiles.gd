extends Interaccion
class_name LanzadorProyectiles, "res://iconos/lanzador_proyectiles.png"

export var proyectil: PackedScene
export var accion = "disparar"
export var accion_derecha = "derecha" 
export var accion_izquierda = "izquierda" 
export var impulso = 300
onready var origen = get_parent() as Node2D
var reflejo = 1
var lanzados = 0

func _process(_delta):

	if Input.is_action_just_pressed(accion_derecha):
		reflejo = 1
	elif Input.is_action_just_pressed(accion_izquierda):
		reflejo = -1

	if Input.is_action_just_pressed(accion):
		
		if not proyectil:
			printerr(name + " no tiene proyectil")
			return	

		var proyectil_lanzado = proyectil.instance() as RigidBody2D
		if not proyectil_lanzado:
			printerr(name + ", su proyectil no es RigidBody2D")
			return

		get_tree().get_root().add_child(proyectil_lanzado)
		
		var posicion = origen.global_position
		var direccion = Vector2.RIGHT.rotated(origen.global_rotation)
		direccion *= reflejo
		var rotacion = direccion.angle()
		if reflejo == -1:
			rotacion += 180
		
		proyectil_lanzado.position = posicion
		proyectil_lanzado.rotation_degrees = rotacion
		proyectil_lanzado.apply_central_impulse(impulso * direccion)
		lanzados += 1
		proyectil_lanzado.name = "Proyectil" + String(lanzados)

		if origen is RigidBody2D:
			proyectil_lanzado.add_collision_exception_with(origen)