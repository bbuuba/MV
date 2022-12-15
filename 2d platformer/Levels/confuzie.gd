extends Area2D




func _on_confuzie_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("confuzie")
	add_child(dialog)
