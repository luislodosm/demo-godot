extends Interfaz
class_name BotonReiniciadorEscena, "../iconos/reiniciador.png"

export var accion = "ui_home"

func _input(_event):
	if Input.is_action_just_pressed(accion):
		accionar()

func accionar():
	var _error = get_tree().reload_current_scene()
	
