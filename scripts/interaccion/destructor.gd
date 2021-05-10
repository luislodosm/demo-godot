extends Interaccion
class_name Destructor

export var fuerza = 50
onready var area_propia = get_parent() as Area2D

func _ready():
	area_propia.connect("body_entered",self,"_on_body_entered")

func _on_area_entered(area):
	if area.name == "Destruible":
		area.herir(fuerza)
