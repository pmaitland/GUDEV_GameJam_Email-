extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

# to increase score
# get_tree().get_root().get_node("World/CanvasLayer/ScoreText").increase_score(value)

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	var value = randi(1,5)
	match value:
		1:
			set_texture() # Edit me  set_texture(preload("res://sprite1.png"))
		2:
			set_texture() # Edit me
		3:
			set_texture() # Edit me
		4:
			set_texture() # Edit me
		5:
			set_texture() # Edit me
	set_physics_process(true)

func _physics_process(delta):
	pass
