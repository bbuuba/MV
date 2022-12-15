extends Area2D


func _on_npc01_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		var dialog= Dialogic.start("npc01")
		add_child(dialog)
