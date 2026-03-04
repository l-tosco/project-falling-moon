## Isso aqui é tudo prova de conceito, mudarei depois a estrutura

extends Node

var unitIndex: int = 2
var actualPlayer: int
signal createUnit(player: int, unitPos: Vector2)

func trySpawnUnit(player: int, unitPos: Vector2):
	createUnit.emit(player, unitPos)
