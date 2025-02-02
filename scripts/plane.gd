extends CharacterBody2D

signal on_plane_died

const GRAVITY: float = 1000.0
const POWER: float = -350.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	#falling
	velocity.y += GRAVITY * delta
	
	fly()
	move_and_slide()
	
	if is_on_floor() == true:
		die()


func fly() -> void:
	if Input.is_action_just_pressed("fly") == true:
		velocity.y = POWER
		animation_player.play("power")


func die() -> void:
	# stop invoking physics process
	set_physics_process(false)
	# stop animation when death
	animated_sprite_2d.stop()
	on_plane_died.emit()
