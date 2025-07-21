extends Node2D
class_name Player

@export var held_object: HoldableInstance = null

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
