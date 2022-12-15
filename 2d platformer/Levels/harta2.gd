extends Area2D



var ok=0
func _on_Area2D_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		ok= ok+1
		$Sprite.visible= true
		if (ok%2==1):
			$Sprite.visible= false
