extends Area2D



func _on_instructiuni_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("instructiuni")
	add_child(dialog)
