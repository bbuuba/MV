extends Area2D



func _on_dupaacte_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("dupaacte")
	add_child(dialog)
