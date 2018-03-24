extends TextureButton

onready var timer = get_node("TransitionDelay")

func _ready():
	set_process_input(true)


func _input(event):
	if event is InputEventMouseButton and event.is_pressed():
		timer.start()

func _on_TransitionDelay_timeout():
	get_tree().change_scene("res://Scene (Main)/World.tscn")
