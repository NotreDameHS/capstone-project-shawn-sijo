class_name Projectile extends Area2D

@export var max_distance := 900.0
@export var speed := 300.0
var _distance_traveled := 0.0
@export var damage := 25

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _physics_process(delta: float) -> void:
	position += transform.x * speed * delta 
	_distance_traveled += speed * delta
	if _distance_traveled  > max_distance:
		_explode()

func _explode() -> void:

	queue_free()



func _on_area_entered(area: Area2D) -> void:
	if area is Mob:
		area._take_damage(damage)
		print(area, " is taking ", damage, " damage!")
		_explode()
		pass
	pass # Replace with function body.
