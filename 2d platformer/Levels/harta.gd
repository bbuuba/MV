extends Area2D



func _on_harta_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("harta")
		add_child(dialog)
		
