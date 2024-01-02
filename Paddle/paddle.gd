extends CharacterBody2D

var speed = 500
func movement():
	if Input.is_action_pressed("ui_up"):
		velocity.y = -speed
	elif Input.is_action_pressed("ui_down"):
		velocity.y = speed
	else: velocity.y = 0
	
func _physics_process(delta):
	movement()
	move_and_slide()
