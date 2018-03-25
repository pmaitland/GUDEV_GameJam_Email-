extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var velocity = Vector2()

var maxSpeed = Vector2(3, 100)
var accel = Vector2(0, 20)

var controlsInverted = false

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
		if velocity.y < -maxSpeed.y * 1.2:
			velocity.y = -maxSpeed.y * 1.2
	
	if !controlsInverted:
		velocity.x = get_viewport().get_mouse_position().x - self.position.x
	else:
		velocity.x = self.position.x - get_viewport().get_mouse_position().x
		
	move_and_collide(velocity * delta)
	
func _on_Area2D_body_enter(body):
    print(str('Body entered: ', body.get_name()))
	
