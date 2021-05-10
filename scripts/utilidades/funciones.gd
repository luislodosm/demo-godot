extends Node

static func obtener_nodo_tipo(padre: Node, tipo):
	for hijo in padre.get_children():
		if hijo is tipo:
			return hijo
	return null
