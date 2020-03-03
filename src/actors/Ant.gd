extends KinematicBody2D

export var velocity: = 25.0
var direction: = Vector2.ZERO

func start(direction: Vector2) -> void:
	self.direction = direction
	rotation = direction.angle() + PI / 2

func _physics_process(delta: float) -> void:
	move_and_slide(direction * velocity)
