extends KinematicBody2D

var facingRight = true

const ink_scene = preload("res://Mini-Scenes (Objects)/SquidInk.tscn")

var ink = null

const timeBetweenInks = 300
var inkCounter = 0

func _ready():
	var random = randomize()
	random = randi()%2
	if random == 0:
		facingRight = true
	else:
		facingRight = false
		$Sprite.flip_h = true
	set_physics_process(true)

func _physics_process(delta):
	
	inkCounter += 1
	if inkCounter > timeBetweenInks:
		inkCounter = 0
		
		# destroy ink if it exists
		if ink != null:
			ink.free()
			
		# create a new ink
		ink = ink_scene.instance()
		var squidPos = get_position()
		
		if facingRight:
			squidPos.x -= 220
		else:
			squidPos.x -= 360
		squidPos.y -= 155
		
		ink.set_position(squidPos)
		ink.setFacingRight(facingRight)
		get_tree().get_root().add_child(ink)