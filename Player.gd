extends CharacterBody2D

const SPEED = 250
const JUMP_FORCE = -400
const GRAVITY = 900

func _physics_process(delta):
	velocity.y += GRAVITY * delta

	var input_dir = Input.get_axis("ui_left", "ui_right")
	velocity.x = input_dir * SPEED

	if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_FORCE

	move_and_slide()
