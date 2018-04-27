extends KinematicBody2D

export (int) var moveSpeed = 10

var velocity = Vector2()
var movement = Vector2()

#Get input from the arrow keys then applies the movement. Arrow keys where mapped using the built-in Input Map feature.
func get_input():
	
	velocity = Vector2()
	
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	velocity = velocity.normalized() * moveSpeed
	
	pass


func _physics_process(delta):
	get_input()
	move_and_collide(velocity)
	pass