extends RichTextLabel

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var score

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	score = 0
	pass
	
func set_score(sc):
	score = sc
	text = "Score: " + str(score)
	
func increase_score(sc):
	set_score(score + sc)

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
