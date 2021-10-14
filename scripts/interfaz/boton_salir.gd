extends Interfaz
class_name BotonSalir, "res://scripts/iconos/salir.png"

export var accion = "salir"

func _input(_event):
	if Input.is_action_just_pressed(accion):
		accionar()

func accionar():
	get_tree().quit()
