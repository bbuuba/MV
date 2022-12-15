extends Area2D




func _on_monolog1_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("monolog1")
	
	add_child(dialog)
	
	
