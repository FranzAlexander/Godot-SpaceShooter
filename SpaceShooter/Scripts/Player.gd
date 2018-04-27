extends KinematicBody2D

var movement = Vector2()

func _physics_process(delta):
	move_and_collide(Vector2(movement.x,0))
	pass