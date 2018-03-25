extends RichTextLabel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var lives

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	
	lives = 3
	pass


func decrease_life():
	lives -= 1
	set_life(lives)
	
func set_life(lives):
	text = "Life: " + str(lives)
#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
