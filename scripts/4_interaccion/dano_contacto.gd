extends Interaccion
class_name DanoContacto, "../iconos/colision.png"

export var fuerza = 50
onready var cuerpo = get_parent() as RigidBody2D

func _ready():
	if not cuerpo:
		printerr(get_parent().name + " no es RigidBody2D")
		set_process(false)
	else:
		cuerpo.connect("body_entered", self, "golpear")
		cuerpo.contact_monitor = true
		cuerpo.contacts_reported = 1

func golpear(otro_cuerpo):
	var vida = otro_cuerpo.get_node_or_null("Vida")
	if vida:
		vida.herir(fuerza)
		cuerpo.queue_free()
