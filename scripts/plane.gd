extends CharacterBody2D

const GRAVITY: float = 300.0

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	print(velocity)
	velocity.y += GRAVITY * delta
	move_and_slide()
