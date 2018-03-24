extends KinematicBody2D

export var SPEED = 8
export var max_bob = 72

onready var start_pos = get_position()
onready var bobcount = 0
var velocity = Vector2()

var movingUp = true

func _ready():
	set_physics_process(true)
	
func _physics_process(delta):
	
	bobcount += 1
	if bobcount > max_bob:
		bobcount = 0
		movingUp = !movingUp
		
	if movingUp:
		velocity.y = -SPEED
	else:
		velocity.y = SPEED
	set_position(get_position() + velocity.normalized() * SPEED * delta)
	
