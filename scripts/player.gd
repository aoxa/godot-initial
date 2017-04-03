extends RigidBody2D

# class member variables go here, for example:
var speed = 100
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	
func _fixed_process(delta):
	if Input.is_action_pressed("ui_right"):
		set_linear_velocity(Vector2(speed, get_linear_velocity().y))
	elif Input.is_action_pressed("ui_left"):
		set_linear_velocity(Vector2(-speed, get_linear_velocity().y))
