extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_top_body_entered(body):
	body.direction.y *= -1;

func _on_bottom_body_entered(body):
	body.direction.y *= -1;

func _on_left_body_entered(body):
	#body.direction.x *= -1;
	body.queue_free();
	
	var b = preload("res://scenes/ball.tscn").instantiate();
	b.global_position = Vector2(580, 320);
	add_child(b);


func _on_right_body_entered(body):
	#body.direction.x *= -1;
	body.queue_free();
	
	var b = preload("res://scenes/ball.tscn").instantiate();
	b.global_position = Vector2(580, 320);
	add_child(b);
