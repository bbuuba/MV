extends Area2D



func _on_monolog2_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("monolog2")
	add_child(dialog)
