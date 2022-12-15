extends Area2D




func _on_chatbox3_01_body_entered(body):
	if not body is Player: return
	var dialog= Dialogic.start("chatbox3_01")
	add_child(dialog)



