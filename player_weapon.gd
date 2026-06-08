extends Node2D

@export var bullet_scene: PackedScene


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.





func _on_timer_timeout() -> void:
	pass # Replace with function body.

#func _physics_process(delta: float) -> void:
	
	
	
	#rotation = lerp_angle(rotation, ( get_global_mouse_position() - global_position).angle(), 6.5*delta)
	#$PlayerWeapon.look_at(rotation)
	#get_node("Sprite2D").rotation = velocity.angle()
	
	#get_node("WeaponSprite").rotation.look_at(rotation)

#func shoot():
	#var new_bullet = bullet_scene.instantiate()
	#new_bullet.global_position = ShootPosition.global_position
	#new_bullet.rotation = ShootPosition.global_rotation
