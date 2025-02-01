extends Node2D



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * 120.0
	check_off_screen()


# in case on_screen_exited() is not fired on minimized game on MacOS
func check_off_screen() -> void:
	if position.x < -500:
		queue_free()


func on_screen_exited() -> void:
	queue_free()
