extends Control

func _on_obj_button_pressed() -> void:
	manager.movementPhase = !manager.movementPhase
	if manager.movementPhase == true:
		print("move ai")
	else:
		print("espera ai")
