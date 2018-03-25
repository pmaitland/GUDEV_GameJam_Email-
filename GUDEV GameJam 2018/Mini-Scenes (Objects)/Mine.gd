extends KinematicBody2D

export var SPEED = 8
export var max_bob = 72

onready var start_pos = get_position()
onready var bobcount = 0
var velocity = Vector2(1, 0)

var movingUp = true

var clawNode

func _ready():
	set_physics_process(true)
	clawNode = get_tree().get_root().get_node("World/Claw")
	
func _physics_process(delta):
	
	bobcount += 1
	if bobcount > max_bob:
		bobcount = 0
		movingUp = !movingUp
		
	if movingUp:
		velocity.y = -SPEED
	else:
		velocity.y = SPEED
	
	velocity.x *= -1
	var collision_info = move_and_collide(velocity * delta)
	if collision_info:

		if clawNode.is_a_parent_of(collision_info.collider) or clawNode == collision_info.collider:
			# Collided with claw
			clawNode.lose_life()
	
