extends Area2D

@onready var MAIN_MENU = load("res://scenes/main_menu.tscn")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	rotation += 0.1


func _on_body_entered(body: Node2D) -> void:
	if body.has_method("player"):
		get_tree().change_scene_to_packed(MAIN_MENU)
