extends AnimatedSprite



func _on_Area2D_body_entered(body):
	$".".animation ="1"
	if not body is Player: return
	var dialog= Dialogic.start("andrei bathory")
	add_child(dialog)
	$".".animation ="2"
	if not body is Player: return
	var dialog2= Dialogic.start("andrei bathory2")
	add_child(dialog2)
	
