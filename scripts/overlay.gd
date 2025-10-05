extends CanvasLayer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$points.text = str(Global.people_collected) + " People Collected!"
	$deaths.text = str(Global.deaths) + " Death(s)"
