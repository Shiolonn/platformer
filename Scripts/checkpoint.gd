extends Area2D

var checkpoint_manager

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	checkpoint_manager = get_parent().get_node("checkpointManager")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print("CHECKPOINT:", global_position)
		print("RESPAWN POINT:", $RespawnPoint.global_position)

		checkpoint_manager.last_location = $RespawnPoint.global_position
		print("SAVED:", checkpoint_manager.last_location)
