class_name GameMasterComponent
extends Node

@export var player: Node3D
@export var game_over_screen: Control
@export var black_react: ColorRect



func _ready() -> void:
	fade_in()
	EventBus.player_requested.connect(_on_player_requested)
	EventBus.teleport_started.connect(_on_player_requested)

func _on_player_requested(source: Node) -> void:
	if player != null:
		source.player = player

func fade_in() -> void:
	black_react.show()
	black_react.color.a = 1.0
	var tween: Tween = create_tween()
	tween.tween_property(black_react, "color:a", 0.0, 3.0)
	tween.tween_callback(black_react.hide)
	
	#https://gdquest.github.io/learn-gdscript/
	
func fade_out() -> void:
	black_react.show()
	black_react.color.a = 0.0
	var tween: Tween = create_tween()
	tween.tween_property(black_react, "color:a", 1.0, 3.0)
	tween.tween_callback(EventBus.tele)
