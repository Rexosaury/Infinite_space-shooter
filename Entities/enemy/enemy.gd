class_name Enemy
extends Area2D


# Called when the node enters the scene tree for the first time.
var speed:int = 80

func _ready():
	randomize()
	position=Vector2(randf_range(0,400),0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y+=speed*delta


func _on_area_entered(area:Area2D):
	if area.name == "bulletarea":
		area.get_parent().queue_free()
		queue_free()
