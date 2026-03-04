## Isso aqui é tudo prova de conceito, mudarei depois a estrutura

extends Node2D

const unitScene = preload("res://scenes/unit_scene.tscn")

func _ready() -> void:
	manager.createUnit.connect(spawn_unit)

func _process(_delta: float) -> void:
	pass

func spawn_unit(playerID: int, unitPos: Vector2):
	var newUnit = unitScene.instantiate()
	newUnit.global_position = unitPos
	newUnit.player = playerID
	add_child(newUnit)
	print("unit adicionada")
