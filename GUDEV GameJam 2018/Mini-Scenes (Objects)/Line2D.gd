extends Line2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	points = [Vector2(), position + Vector2(-123, -34)]
	set_process(true)

func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	points[0] = - global_position + get_tree().get_root().get_node("World/Claw").global_position - get_tree().get_root().get_node("World/Claw/Sprite").position
	points[0] *= Vector2(1,1)/get_parent().scale
	points[0] += Vector2(-1, 2)
	# points[1] = position
	
	
	
