extends KinematicBody2D

const dx = 100
var velocity = Vector2()

var facingRight = true

# distance to move
const distance = 200
var distanceTravelled = 0

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	
	# turn round if travelled too far
	distanceTravelled += 1
	if distanceTravelled > distance:
		facingRight = !facingRight
		distanceTravelled = 0
	
	# set velocity to move in correct direction
	if facingRight:
		velocity.x = dx
	else:
		velocity.x = -dx
			
	move_and_collide(velocity * delta)