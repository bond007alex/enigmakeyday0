extends AnimatedSprite2D
signal hit
var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.
@export var Bullet : PackedScene
func _physics_process(delta):
	#vector2 being fed with wsad
	position += Vector2(int(Input.is_key_pressed(KEY_D)) - int(Input.is_key_pressed(KEY_A)), int(Input.is_key_pressed(KEY_S)) - int(Input.is_key_pressed(KEY_W)))*4
	#don't understand the right way to do packed scenes and stuff, 
	#shoot()
	
func _on_area_2d_body_entered(body):
	#hide()
	emit_signal("hit")
	#$CollisionShape2D.set_deferred("disabled", true)
	
#func shoot():
	#await get_tree().create_timer(.1).timeout
	#var b = Bullet.instantiate()
	#owner.add_child(b)
	#b.transform = $marker2d.global_transform
