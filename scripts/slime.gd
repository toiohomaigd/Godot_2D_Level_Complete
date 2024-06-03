extends Node2D

@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

const SPEED = 40
var direction = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# if slime collides with wall on the right change direction to left
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true
	# slime collides with wall on the left change direction to the right
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false
	
	position.x += direction * SPEED * delta
