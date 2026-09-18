extends AudioStreamPlayer


func fade_volume(_volume: float = 1.0, _duration: float = 1.0) -> void:
	var tween: Tween = create_tween()
	tween.tween_property(self, "volume_linear", _volume, _duration)
