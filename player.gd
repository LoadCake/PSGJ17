extends CharacterBody2D
class_name Player

@export var held_object: HoldableInstance = null
var speed = 300

func pick_up(object: HoldableInstance):
	if held_object != null:
		drop()
	object.get_parent().remove_child(object)
	self.held_object = object

func drop():
	if held_object == null:
		return
	Stage.add_child(self.held_object)
	self.held_object.global_position = global_position
	self.held_object = null

func _physics_process(_delta: float) -> void:
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_dir * speed
	move_and_slide()
