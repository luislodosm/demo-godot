extends Animacion
class_name ReflejoHorizontal, "../iconos/reflejo.png"

export var accion_normal = "ui_right" 
export var accion_reflejado = "ui_left" 
onready var nodo = get_parent() as Node2D
var escala_inicial

func _ready():
	escala_inicial = nodo.scale

func _process(_delta):
	if Input.is_action_just_pressed(accion_normal):
		nodo.scale.x = escala_inicial.x
	if Input.is_action_just_pressed(accion_reflejado):
		nodo.scale.x  = -escala_inicial.x
