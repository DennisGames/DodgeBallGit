extends KinematicBody2D

export (int) var max_speed
export (int) var acceleration

var motion = Vector2()

func _ready():
	set_process(true)
	
func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		if motion.x < max_speed:
			motion.x += acceleration
	elif Input.is_action_pressed("ui_left"):
		if motion.x > -max_speed:
			motion.x -= acceleration
		
	else:
		motion.x = 0
		
	if Input.is_action_pressed("ui_right"):
		pass
	elif Input.is_action_pressed("ui_right"):
		pass
		
	else:
		pass
		
	move_and_slide(motion)
		
		
	
