extends Area2D



func _on_monolog3_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("monolog3")
	add_child(dialog)
