extends Area2D




func _on_npc1_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("nivel1")
		add_child(dialog)
