class_name Collectable
extends Node

@export var message: Dictionary


func _on_collected(body: Node3D) -> void:
	if body.has_method("get_message"):
		var _message: Message = Message.new()
		_message.content = message
		body.get_message(_message)
		
		get_parent().queue_free()
