extends Area2D

func _on_ObjectiveArea_body_entered(body: RigidBody2D):
	if (body.name == "NewShip"):
		print("Reached objective Green!")
		get_tree().change_scene_to_file("res://scenes/EndLevel.tscn")
