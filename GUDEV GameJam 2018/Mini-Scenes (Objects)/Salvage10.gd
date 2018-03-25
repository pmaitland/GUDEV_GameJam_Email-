extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var value = int()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_physics_process(true)

func _physics_process(delta):
	pass
	
# to increase score
# get_tree().get_root().get_node("World/CanvasLayer/ScoreText").increase_score(value)

