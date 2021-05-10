extends Nivel
class_name Salir

export var accion = "salir"

func _input(_event):
	if Input.is_action_just_pressed(accion):
		get_tree().quit()
