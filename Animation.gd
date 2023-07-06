extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if AudioServer.get_bus_peak_volume_right_db(1,0) > -50:
		play("default")
	else:
		set_frame_and_progress(0,0)
		stop()
	
