extends Automatismo
class_name CreadorObjetos, "../iconos/creador.png"

export var objeto: PackedScene
export var tiempo = 3.0
var contador = 0.0

func _ready():
	contador = tiempo

func _process(delta):
	contador -= delta
	if contador <= 0:
		crear()
		contador = tiempo

func crear():
	var creado = objeto.instance()
	creado.position = get_parent().position
	get_tree().get_root().add_child(creado)
