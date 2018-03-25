extends KinematicBody2D

const dx = 75
var velocity = Vector2()

export var SPEED = 8
export var max_bob = 2

onready var start_pos = get_position()
onready var bobcount = 0

var movingUp = true

var facingRight = true
var clawNode

func _ready():
	var random = randomize()
	random = randi()%2
	if random == 0:
		facingRight = true
		$AnimatedSprite.flip_h = true
	else:
		facingRight = false
	set_physics_process(true)
	
	clawNode = get_tree().get_root().get_node("World/Claw")

func _physics_process(delta):
	
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:

		if clawNode.is_a_parent_of(collision_info.collider) or clawNode == collision_info.collider:
			# Collided with claw
			pass
		facingRight = !facingRight
		$AnimatedSprite.flip_h = !$AnimatedSprite.flip_h
	
	# set velocity to move in correct direction
	if facingRight:
		velocity.x = dx
	else:
		velocity.x = -dx
	
	bobcount += 1
	if bobcount > max_bob:
		bobcount = 0
		movingUp = !movingUp
		
	if movingUp:
		velocity.y = -SPEED
	else:
		velocity.y = SPEED
			
	move_and_collide(velocity * delta)