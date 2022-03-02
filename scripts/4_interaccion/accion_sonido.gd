extends Interaccion
class_name AccionSonido, "../iconos/sonido.png"

export var sonido: AudioStream
export var accion = "ui_up"
onready var fuente = get_parent() as AudioStreamPlayer

func _process(_delta):
	if Input.is_action_just_pressed(accion):
		if fuente:
			if sonido:
				fuente.stream = sonido
				fuente.play()
		else:
			print(get_parent().name + " no es AudioStreamPlayer")
