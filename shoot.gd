extends Node2D

func _physics_process(delta):
	#spawn a projectile
	var projectile = load("res://Projectile.tscn")
	var bullet = projectile.instance()
	add_sibling(get_tree().get_root().get_node("MainScene"),bullet)
