extends CharacterBody2D
var speed = 25
# Movement speed
var player_position
var target_position
#look for player reference
@onready var player = get_tree().get_nodes_in_group("player")[0]
func _physics_process(delta):
	#find player
	player_position = player.position
	#move to player and orient towards player
	velocity = position.direction_to(player_position)*speed
	move_and_slide()
