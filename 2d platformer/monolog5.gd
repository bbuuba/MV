extends Area2D


#

func _on_monolog5_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("monolog5")
	add_child(dialog)
