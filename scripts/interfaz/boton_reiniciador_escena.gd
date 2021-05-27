extends Interfaz
class_name BotonReiniciadorEscena, "res://iconos/reiniciador.png"

export var accion = "reiniciar"

func _input(_event):
	if Input.is_action_just_pressed(accion):
		accionar()

func accionar():
	var _error = get_tree().reload_current_scene()
	