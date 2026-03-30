extends CharacterBody2D

@export var story_script: Node

@export var speed = 70
var input_direction = Vector2(0, 0)

func get_input():
	input_direction = Input.get_vector("left", "right", "up","down")
	velocity = input_direction * speed

	
func change_animation():	
	if Input.is_action_just_pressed("ctrl"):
		$AnimatedSprite2D.play("pushP")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_pressed("ctrl"):
		$AnimatedSprite2D.play("pushingS")
		$AnimatedSprite2D.flip_h = false
	elif Input.is_action_just_pressed("shift"):
		$AnimatedSprite2D.play("crouch")
	elif Input.is_action_pressed("shift"):
		$AnimatedSprite2D.play("crouchShaking")
	elif input_direction.x < 0 and input_direction.y < 0:
		$AnimatedSprite2D.play("walkN")
		$AnimatedSprite2D.flip_h = false
	elif input_direction.x > 0 and input_direction.y < 0:
		$AnimatedSprite2D.play("walkN")
		$AnimatedSprite2D.flip_h = true
	elif input_direction.x < 0 and input_direction.y > 0:
		$AnimatedSprite2D.play("walkSW")
		$AnimatedSprite2D.flip_h = false
	elif input_direction.x > 0 and input_direction.y > 0:
		$AnimatedSprite2D.play("walkSW")
		$AnimatedSprite2D.flip_h = true
	elif input_direction.x < 0:
		$AnimatedSprite2D.play("walkW")
		$AnimatedSprite2D.flip_h = false
	elif input_direction.x > 0:
		$AnimatedSprite2D.play("walkW")
		$AnimatedSprite2D.flip_h = true
	elif input_direction.y > 0:
		$AnimatedSprite2D.play("walkS")
	elif input_direction.y < 0:
		$AnimatedSprite2D.play("walkN")
	else:
		$AnimatedSprite2D.play("idle")

func _physics_process(delta):
	get_input()
	change_animation()
	move_and_slide()	
