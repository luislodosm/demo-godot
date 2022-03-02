extends Interaccion
class_name AreaAtaque, "../iconos/ataque.png"

export var accion = "ui_select"
export var fuerza = 50
onready var area = get_parent() as Area2D

func _ready():
	if not area:
		printerr(get_parent().name + " no es Area2D")
		set_process(false)

func _process(_delta):
	if Input.is_action_just_pressed(accion):
		print("Atacando")
		var cuerpos = area.get_overlapping_bodies()
		for cuerpo in cuerpos:
			atacar(cuerpo)

func atacar(cuerpo):
	var vida = cuerpo.get_node_or_null("Vida")
	if vida:
		vida.herir(fuerza)
		print("Atacando " + cuerpo.name)
	else:
		print(cuerpo.name + " sin vida")
