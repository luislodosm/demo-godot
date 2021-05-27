extends Animacion
class_name ReflejoHorizontal, "res://iconos/reflejo.png"

export var accion_normal = "derecha" 
export var accion_reflejado = "izquierda" 
onready var nodo = get_parent() as Node2D
var escala_inicial

func _ready():
	if not nodo:
		printerr(nodo + " no es Node2D")
		set_process(false)
	else:
		escala_inicial = nodo.scale

func _process(_delta):
	if Input.is_action_just_pressed(accion_normal):
		nodo.scale.x = escala_inicial.x
	if Input.is_action_just_pressed(accion_reflejado):
		nodo.scale.x  = -escala_inicial.x