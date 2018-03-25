extends KinematicBody2D

const dx = 150
var velocity = Vector2()

var facingRight = true

func _ready():
	set_physics_process(true)

func _physics_process(delta):
	if facingRight:
		velocity.x = dx
	else:
		velocity.x = -dx
	move_and_collide(velocity * delta)
	
func _on_Area2D_body_enter(body):
    print(str('Body entered: ', body.get_name()))

func setFacingRight(d):
	facingRight = d
	if !facingRight:
		$Sprite.flip_h = true