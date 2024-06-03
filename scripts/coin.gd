extends Node

@onready var game_manager = %GameManager
@onready var sound_effect = $AudioStreamPlayer2D
@onready var animated_sprite_2d = $AnimatedSprite2D

func _on_body_entered(body):
	# we have set player collision to layer 2
	# The mask for coin has been to layer 2
	
	# add a point to our score via game_manager
	game_manager.add_score()
	
	# make the sprite invisible
	animated_sprite_2d.visible = false
	
	# play audio clip sound effect
	sound_effect.play()
	
	# remove coin instance from scene after audio clip plays
	await sound_effect.finished
	queue_free()
	
