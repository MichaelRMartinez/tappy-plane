extends CharacterBody2D

const GRAVITY: float = 300.0
const POWER: float = -200.0

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	velocity.y += GRAVITY * delta
	fly()
	move_and_slide()


func fly() -> void:
	if Input.is_action_just_pressed("fly") == true:
		velocity.y = POWER
