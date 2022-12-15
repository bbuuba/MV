extends Area2D




func _on_monolog4_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("monolog4")
	add_child(dialog)
