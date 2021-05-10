extends Animacion
class_name AccionAnimacion, "../iconos/animacion.png"

export var accion = "derecha"
export var animacion = "correr"
export var animacion_retorno = "reposo"
onready var sprite = get_parent() as AnimatedSprite

func _process(_delta):
	
	if not sprite is AnimatedSprite:
		return
	
	if Input.is_action_just_pressed(accion):
		if sprite.frames.has_animation(animacion):
			sprite.play(animacion)
	
	if Input.is_action_just_released(accion):
		if sprite.frames.has_animation(animacion_retorno):
			sprite.play(animacion_retorno)
