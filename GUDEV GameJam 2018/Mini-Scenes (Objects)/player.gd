extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var velocity = Vector2()

var maxSpeed = Vector2(3, 100)
var accel = Vector2(0, 10)

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_physics_process(true)

func _physics_process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	
	if Input.is_mouse_button_pressed(BUTTON_LEFT):
		velocity.y += accel.y
		if velocity.y > maxSpeed.y:
			velocity.y = maxSpeed.y
	else:
		velocity.y -= accel.y
		if velocity.y < -maxSpeed.y * 1.8:
			velocity.y = -maxSpeed.y * 1.8
	
	velocity.x = get_viewport().get_mouse_position().x - self.position.x
	move_and_collide(velocity * delta)
	print(velocity)
	
