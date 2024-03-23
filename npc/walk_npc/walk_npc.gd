class_name WalkNPC extends NPC

func _update_move(_delta: float) -> void:
	velocity.x = _get_direction_x() * speed
