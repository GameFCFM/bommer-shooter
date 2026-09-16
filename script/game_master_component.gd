class_name GameMasterComponent
extends Node

@export var player: Node3D
@export var game_over_screen: Control


func _on_player_requested(source: Node) -> void:
	if player != null:
		source.player = player
