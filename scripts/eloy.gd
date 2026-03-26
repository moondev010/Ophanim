extends CharacterBody2D

@export var speed = 60
var input_direction = Vector2(0, 0)


func get_input():
	input_direction = Input.get_vector("left", "right", "up", "down")
	velocity = input_direction * speed
	
func change_animation():
	if input_direction.y < 0:
		$AnimatedSprite2D.play("up")
	elif input_direction.y > 0:
		$AnimatedSprite2D.play("down")
	elif input_direction.x > 0:
		$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.play("front")
		$AnimatedSprite2D.flip_h = false

func _physics_process(_delta: float) -> void:
	get_input()
	change_animation()
	move_and_slide()
