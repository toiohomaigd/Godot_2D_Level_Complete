extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	# slow time down when player dies
	Engine.time_scale = 0.5
	# get players colliders and remove it.
	# when player 'dies' by hitting enemy player will fall through level.
	body.get_node("CollisionShape2D").queue_free()
	timer.start()

func _on_timer_timeout():
	# set time scale back to default
	Engine.time_scale = 1.0
	# reload current scene
	get_tree().reload_current_scene()
