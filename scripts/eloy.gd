extends Node2D

@onready var eloy_body = $EloyBody
@onready var eloy_sprites = $EloyBody/AnimatedSprite2D

@export var speed = 70
var input_direction = Vector2(0, 0)

func get_input():
	input_direction = Input.get_vector("left", "right", "up","down")
	eloy_body.velocity = input_direction * speed

	
func change_animation():	
	if Input.is_action_just_pressed("ctrl"):
		eloy_sprites.play("pushP")
		eloy_sprites.flip_h = false
	elif Input.is_action_pressed("ctrl"):
		eloy_sprites.play("pushingS")
		eloy_sprites.flip_h = false
	elif Input.is_action_just_pressed("shift"):
		eloy_sprites.play("crouch")
	elif Input.is_action_pressed("shift"):
		eloy_sprites.play("crouchShaking")
	elif input_direction.x < 0 and input_direction.y < 0:
		eloy_sprites.play("walkN")
		eloy_sprites.flip_h = false
	elif input_direction.x > 0 and input_direction.y < 0:
		eloy_sprites.play("walkN")
		eloy_sprites.flip_h = true
	elif input_direction.x < 0 and input_direction.y > 0:
		eloy_sprites.play("walkSW")
		eloy_sprites.flip_h = false
	elif input_direction.x > 0 and input_direction.y > 0:
		eloy_sprites.play("walkSW")
		eloy_sprites.flip_h = true
	elif input_direction.x < 0:
		eloy_sprites.play("walkW")
		eloy_sprites.flip_h = false
	elif input_direction.x > 0:
		eloy_sprites.play("walkW")
		eloy_sprites.flip_h = true
	elif input_direction.y > 0:
		eloy_sprites.play("walkS")
	elif input_direction.y < 0:
		eloy_sprites.play("walkN")
	else:
		eloy_sprites.play("idle")

func _physics_process(delta):
	get_input()
	change_animation()
	eloy_body.move_and_slide()	
