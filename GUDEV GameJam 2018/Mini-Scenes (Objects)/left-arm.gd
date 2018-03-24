extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var rotation_speed = 50
var openRot = 70
var closedRot = 20

func _ready():
	set_process(true)

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	var rot = self.rotation_degrees
	if Input.is_key_pressed(KEY_SPACE):
		rot += delta * -rotation_speed
		if rot < closedRot:
			rot = closedRot
	else:
		rot += delta *  2 *rotation_speed
		if rot > openRot:
			rot = openRot
	
	self.rotation_degrees = rot

