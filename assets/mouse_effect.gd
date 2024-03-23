extends Node2D

func _ready() -> void:
	update()

func _process(_delta: float) -> void:
	update()

func update():
	global_position = get_global_mouse_position().clamp(Vector2.ZERO, get_viewport_rect().size)
