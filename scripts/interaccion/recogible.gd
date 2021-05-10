extends Interaccion
class_name Recogible

onready var area_propia = get_parent() as Area2D

func _ready():
	area_propia.connect("body_entered", self, "_on_body_entered")

func _on_body_entered(area):
	area_propia.queue_free()
