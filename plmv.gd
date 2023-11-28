extends AnimatedSprite2D
signal hit
var speed = 400 # How fast the player will move (pixels/sec).
var screen_size # Size of the game window.
#load bullet scene
const bulletPath=preload('res://Projectile.tscn')
@export var fire_delay = 0.2
@onready var fire_delay_timer = $FireDelayTimer

var shooting = false
func _physics_process(delta):
	#vector2 being fed with wsad
	position += Vector2(int(Input.is_key_pressed(KEY_D)) - int(Input.is_key_pressed(KEY_A)), int(Input.is_key_pressed(KEY_S)) - int(Input.is_key_pressed(KEY_W)))*4
	
	shoot()
	
func _on_area_2d_body_entered(body):
	#hide()
	emit_signal("hit")
	#$CollisionShape2D.set_deferred("disabled", true)
	
func shoot():
	#instantiate, retrieve player marker2d, then wait before calling again
	if fire_delay_timer.is_stopped():
		fire_delay_timer.start()
		var b = bulletPath.instantiate()
		get_tree().get_root().add_child(b)
		b.position = $Marker2D.position
