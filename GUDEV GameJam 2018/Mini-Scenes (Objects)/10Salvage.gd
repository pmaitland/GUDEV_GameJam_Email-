extends RigidBody2D

export var value = int()

func _ready():
	set_physics_process(true)

func _physics_process(delta):
<<<<<<< HEAD:GUDEV GameJam 2018/Mini-Scenes (Objects)/10Salvage.gd
	pass

# to increase score
# get_tree().get_root().get_node("World/CanvasLayer/ScoreText").increase_score(value)

=======
	if get_position().y <= 120:
		get_tree().get_root().get_node("World/Score/ScoreText").increase_score(value)
		self.free()
>>>>>>> a005e13199da0e41725a03e4992dce27033f4efa:GUDEV GameJam 2018/Mini-Scenes (Objects)/Salvage10.gd
