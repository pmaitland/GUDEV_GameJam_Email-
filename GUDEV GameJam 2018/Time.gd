extends RichTextLabel

export var time_start = 5
var time_now = 0
var total_time = 300

func _ready():
    time_start = OS.get_unix_time()
    set_process(true)

func _process(delta):
    time_now = OS.get_unix_time()
    var elapsed = time_now - time_start
    var seconds = total_time - (elapsed % 60)
    var str_elapsed = "%02d" % [seconds]
    text = "Time: " + str_elapsed