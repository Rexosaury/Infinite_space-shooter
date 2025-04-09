extends Node2D


# Called when the node enters the scene tree for the first time.
var bullet_speed = 300
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= bullet_speed*delta
	if position.y<0:
		queue_free()
