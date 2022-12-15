extends Area2D




func _on_Area2D_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("inceputul")
	add_child(dialog)
