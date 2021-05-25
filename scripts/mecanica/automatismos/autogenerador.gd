extends Automatismo
class_name Autogenerador, "res://iconos/autogenerador.png"

export var objeto: PackedScene
export var tiempo = 3.0
var contador = 0.0

func _process(delta):
	contador += delta
	if contador >= tiempo:
		crear()
		contador = 0

func crear():
	if objeto:
		var creado = objeto.instance()
		creado.position = get_parent().position
		get_tree().get_root().add_child(creado)
