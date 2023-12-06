extends Node2D

func _process(delta):
	$Label.text = str(Main.p1_score)
	$Label2.text = str(Main.p2_score)

func _on_top_body_entered(body):
	body.direction.y *= -1;

func _on_bottom_body_entered(body):
	body.direction.y *= -1;

func _on_left_body_entered(body):
	body.queue_free();
	
	var b = preload("res://scenes/ball.tscn").instantiate();
	b.global_position = Vector2(580, 320);
	add_child(b);
	Main.p2_score += 1;


func _on_right_body_entered(body):
	body.queue_free();
	
	var b = preload("res://scenes/ball.tscn").instantiate();
	b.global_position = Vector2(580, 320);
	add_child(b);
	Main.p1_score += 1
