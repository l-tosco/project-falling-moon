## Isso aqui é tudo prova de conceito, mudarei depois a estrutura

extends Control

var player: int = 0

func _on_obj_button_pressed() -> void:
	var unitPos = Vector2(500,100)
	manager.actualPlayer = 1 - manager.actualPlayer
	manager.trySpawnUnit(manager.actualPlayer, unitPos)
	print(manager.actualPlayer)
