extends Node2D

onready var Ant: = load('res://src/actors/Ant.tscn')
onready var spawner: = $Spawner/PathFollow2D
onready var cake: = $Cake

func _on_SpawnTimer_timeout() -> void:
	spawner.set_offset(randi())
	
	var ant = Ant.instance()
	add_child(ant)
	
	var direction = cake.position - spawner.position
	
	ant.position = spawner.position
	
	ant.start(direction.normalized())
