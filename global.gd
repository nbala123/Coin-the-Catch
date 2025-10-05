extends Node

var people_collected = 0
var timer = Timer.new()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func collected():
	people_collected += 1
	
func reset():
	people_collected = 0
