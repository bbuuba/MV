extends Area2D




func _on_Area2D_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("actele")
	add_child(dialog)


func _on_Area2D_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
