extends Control

var game_scene = preload("res://scenes/game.tscn").instantiate();

# Called when the node enters the scene tree for the first time.
func _ready():
	$btnDificuldade.get_popup().connect("id_pressed", _on_btn_dificuldade_item_pressed);

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_btn_dificuldade_item_pressed(id):
	$btnDificuldade.text = $btnDificuldade.get_popup().get_item_text(id);
	if $btnDificuldade.text == "Fácil":
		Main.difficult_level = 0
	elif $btnDificuldade.text == "Médio":
		Main.difficult_level = 1
	else:
		Main.difficult_level = 2

func _on_btn_iniciar_button_up():
	add_child(game_scene);
	$btnIniciar.queue_free();
	$btnDificuldade.queue_free();
	$lblDesenvolvedor.queue_free();
