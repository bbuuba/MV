extends KinematicBody2D
class_name Player
enum {MOVE,CLIMB}

export(int) var JUMP_FORCE= -130
export(int) var JUMP_RELEASE_FORCE= -70
export(int) var MAX_SPEED= 65
export(int) var ACCELERATION= 15
export(int) var FRICTION= 15
export(int) var GRAVITY= 4
export(int) var ADDITIONAL_FALL_GRAVITY= 4
export(int) var CLIMB_SPEED= 50
export(int) var DOUBLE_JUMP_COUNT= 1



var velocity = Vector2.ZERO
var state = MOVE
var double_jump = 1

onready var ladderCheck: = $LadderCheck
onready var remoteTransform2D: = $RemoteTransform2D

func connect_camera(camera):
	var camera_path = camera.get_path()
	remoteTransform2D.remote_path = camera_path


func player_die():
	queue_free()
	Events.emit_signal("player_died")
	
	
func _physics_process(delta):
	
	var input = Vector2.ZERO
	input.x = Input.get_axis("ui_left", "ui_right")
	input.y = Input.get_axis("ui_up", "ui_down")
	match state:
		MOVE: move_state(input)
		CLIMB: climb_state(input)
	
func apply_gravity():
	velocity.y+= GRAVITY
	velocity.y = min(velocity.y, 300)

func apply_friction():
	velocity.x= move_toward(velocity.x, 0, FRICTION)

func apply_acceleration(amount):
	velocity.x = move_toward(velocity.x, MAX_SPEED * amount, ACCELERATION)
	pass


func is_on_ladder():
	
	if not ladderCheck.is_colliding(): return false
	var collider = ladderCheck.get_collider()
	if not collider is Ladder: return false
	return true

func move_state(input):
	if is_on_ladder() and Input.is_action_pressed("ui_up"):
		state= CLIMB
	apply_gravity()
	if input.x==0:
		apply_friction()
		$AnimatedSprite.animation ="Idle"
	else:
		apply_acceleration(input.x)
		$AnimatedSprite.animation= "Run"
		if input.x>0:
			$AnimatedSprite.flip_h = false
		elif input.x < 0:
			$AnimatedSprite.flip_h= true
		
		
	if is_on_floor():
		double_jump= DOUBLE_JUMP_COUNT
		if Input.is_action_just_pressed("ui_up"):
			velocity.y= JUMP_FORCE
	else:
		$AnimatedSprite.animation= "Jump"
		if Input.is_action_just_pressed("ui_up") and velocity.y < JUMP_RELEASE_FORCE:
			velocity.y=- JUMP_RELEASE_FORCE
		
		if Input.is_action_just_pressed("ui_up") and double_jump>0:
			velocity.y= JUMP_FORCE
			double_jump-=1
			
		
		if velocity.y > 0:
			velocity.y += ADDITIONAL_FALL_GRAVITY
		
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
func climb_state(input):
	if not is_on_ladder():
		state=MOVE
	velocity= input * CLIMB_SPEED
	velocity = move_and_slide(velocity, Vector2.UP)


