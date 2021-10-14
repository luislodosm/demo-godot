extends Interfaz
class_name BotonCambioEscena, "res://scripts/iconos/boton_escena.png"

export(String, FILE, "*.tscn") var ruta_escena

func accionar():
	if ResourceLoader.exists(ruta_escena):
		var _error = get_tree().change_scene(ruta_escena)
	else:
		print("Escena no encontrada: " + ruta_escena)