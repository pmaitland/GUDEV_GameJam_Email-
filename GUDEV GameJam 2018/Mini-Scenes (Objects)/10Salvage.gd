extends RigidBody2D

export var value = int()

func _ready():
	set_physics_process(true)

func _physics_process(delta):

	if get_position().y <= 120:
		get_tree().get_root().get_node("World/Score/ScoreText").increase_score(value)
		self.free()
