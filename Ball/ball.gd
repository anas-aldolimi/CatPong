extends CharacterBody2D

var xspeed = 400
var yspeed = 200
var Direction = Vector2(-1,1)


func _ready():
	var randomNum = randi_range(0,1)
	Direction.y = randomNum


func _physics_process(delta):
	
	rotation_degrees += 1
	
	if Direction.x == 1:
		velocity.x = xspeed
	else:
		velocity.x = -xspeed
	
	
	if Direction.y == 0:
		velocity.y = -yspeed
	elif Direction.y == 1:
		velocity.y = yspeed
	
	
	
	move_and_slide()



func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		Direction.x *= -1
	if body.is_in_group("Walls"):
		if Direction.y == 0:
			Direction.y = 1
		elif Direction.y == 1:
			Direction.y = 0 




func _on_timer_timeout():
	xspeed += 10
	yspeed += 10
