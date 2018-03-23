extends Sprite

const d_speed = 0.01
const max_speed = 1000
const min_speed = 5

var x_move_speed = min_speed
var y_move_speed = min_speed

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process_input(true)

func _process(delta):
	var curPos = self.get_position()
	
	if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
		if x_move_speed < max_speed: x_move_speed += d_speed
		print(x_move_speed)
		curPos.x += x_move_speed
	elif Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
		if x_move_speed < max_speed: x_move_speed += d_speed
		curPos.x -= x_move_speed
	else:
		if x_move_speed > min_speed: x_move_speed -= d_speed
		
	
		
	if Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_UP):
		if y_move_speed < max_speed: y_move_speed += d_speed
		curPos.y -= y_move_speed
	elif Input.is_key_pressed(KEY_S) or Input.is_key_pressed(KEY_DOWN):
		if y_move_speed < max_speed: y_move_speed += d_speed
		curPos.y += y_move_speed
	else:
		if y_move_speed > min_speed: y_move_speed -= d_speed
		
	self.set_position(curPos)

