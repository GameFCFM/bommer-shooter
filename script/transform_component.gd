class_name TransformComponent
extends Node

@export var speed: float = 0.1
@export var rotation_axis: Vector3 = Vector3.UP

var target: Node3D


func _ready() -> void:
	target = get_parent()


func _process(delta: float) -> void:
	if target:
		target.rotate(rotation_axis, speed * delta)
