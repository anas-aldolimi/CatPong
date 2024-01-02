extends CharacterBody2D

var speed = 500

	
func movement():
	if Input.is_key_label_pressed(KEY_W):
		velocity.y = -speed
	elif Input.is_key_label_pressed(KEY_S):
		velocity.y = speed
	else: velocity.y = 0
	
func _physics_process(delta):
	movement()
	move_and_slide()
