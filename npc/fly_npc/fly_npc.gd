class_name FlyNPC extends NPC

func _update_move(_delta: float) -> void:
	velocity = _get_direction() * speed
