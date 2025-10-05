extends CharacterBody2D

@export var init_pos : Vector2
 
const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var double_jump = true

func player(): #identifier class
	pass

func _ready() -> void:
	position = init_pos


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	else:
		double_jump = true

	# Handle jump.
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = JUMP_VELOCITY
		elif double_jump:
			velocity.y=JUMP_VELOCITY
			double_jump = false

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
