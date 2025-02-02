extends Node2D

class_name Pipes

const OFF_SCREEN: float = -500

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= delta * GameManager.SCROLL_SPEED
	check_off_screen()


# in case on_screen_exited() is not fired on minimized game on MacOS
func check_off_screen() -> void:
	if position.x < OFF_SCREEN:
		queue_free()


func on_screen_exited() -> void:
	queue_free()
