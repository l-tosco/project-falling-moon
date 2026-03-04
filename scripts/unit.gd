## Isso aqui é tudo prova de conceito, mudarei depois a estrutura

extends Node2D

var isDragging: bool = false
var mouseOffset: Vector2 = Vector2.ZERO
var actualMap = null

func _ready() -> void:
	pass 

func _process(_delta: float) -> void:
	if isDragging == true:
		global_position = get_global_mouse_position() + mouseOffset

func _on_unit_area_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if manager.movementPhase == true:
				isDragging = true
				mouseOffset = global_position - get_global_mouse_position()
				print("pegou")
			else:
				print("espera caralho")

func _on_unit_area_area_entered(area: Area2D) -> void:
	actualMap = area
	var actualMapName = area.get_parent()
	print("entrou em: ", actualMapName.name)

func _on_unit_area_area_exited(area: Area2D) -> void:
	if actualMap == area:
		actualMap = null
		print("fora de tudo")

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and not event.pressed:
			if isDragging == true:
				isDragging = false
				if actualMap != null:
					global_position = actualMap.global_position
					print("fixada")
				else:
					print("tirei")
				print("soltou")
