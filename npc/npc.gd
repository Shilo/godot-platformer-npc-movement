class_name NPC extends CharacterBody2D

@export var target: Node2D
@export var target_radius: int = 8
@export var speed = 100.0

func _update_gravity(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

func _update_move(_delta: float) -> void:
	pass

func _get_direction_x() -> int:
	if target:
		var direction: float = target.global_position.x - global_position.x
		var distance: float = abs(direction)
		
		if distance <= target_radius: direction = 0
		if direction != 0:
			return int(direction / distance)
	
	return 0

func _get_direction() -> Vector2:
	if target:
		var distance: float = global_position.distance_squared_to(target.global_position)
		if distance > target_radius:
			return global_position.direction_to(target.global_position)
	
	return Vector2.ZERO

func _physics_process(delta: float) -> void:
	_update_gravity(delta)
	_update_move(delta)
	move_and_slide()
