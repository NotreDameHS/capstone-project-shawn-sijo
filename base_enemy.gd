extends Area2D
class_name Mob
@onready var Hitbox := $Hitbox
@export var Hitbox_size := 100
@export var speed := 200
@export var health := 100



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Hitbox.shape = Hitbox.shape.duplicate()
	Hitbox.shape.radius = Hitbox_size
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var player := get_tree().get_nodes_in_group("Player")[0]
	position = position.move_toward(player.global_position, speed * delta)
	look_at(player.global_position)
	pass




# Called every frame. 'delta' is the elapsed time since the previous frame.
