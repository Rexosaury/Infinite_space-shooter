extends Node
var enemy_scene=preload("res://Entities/enemy/enemy.tscn")



# Called when the node enters the scene tree for the first time.
func _ready():
	get_parent().get_node("Boundary").connect("area_entered", Callable(self,"_the_end"))
	var timer = Timer.new()
	add_child(timer)
	timer.wait_time = 1.5
	timer.timeout.connect(Callable(self,"_create_enemy"))
	
	timer.start()
	
	
	
func _create_enemy():
	var enemy = enemy_scene.instantiate()
	get_parent().get_node("Enemies").add_child(enemy)

func _the_end(body:Node):
	if body is Enemy:
		get_tree().set_pause(true)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
