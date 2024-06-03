extends Node

@onready var coins_collected = %CoinsCollected

var score = 0

func add_score():
	score += 1
	coins_collected.text = str(score)
