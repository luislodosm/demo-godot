extends Interfaz
class_name BotonSalir, "../iconos/salir.png"

export var accion = "ui_cancel"

func _input(_event):
	if Input.is_action_just_pressed(accion):
		accionar()

func accionar():
	get_tree().quit()
