extends Node

const IngredientInstaceScene := preload("res://IngredientInstance.tscn")

@export var ingredient: Ingredient
@export var tool_needed: Tool
var interactable: bool = false
var player_interacting: Player = null
# need to acquire what tool is trying to be used
func produce_ingredient():
	var ingredient_instance := IngredientInstaceScene.instantiate()
	ingredient_instance.ingredient = ingredient
	Stage.add_child(ingredient_instance)

func interaction() -> void:
	if player_interacting == null:
		print("this shouldn't happen")
		return
	if player_interacting.held_object is IngredientInstance or player_interacting.held_object == null:
		print("you need to use a tool to gather this resource")
		return
	if player_interacting.held_object != tool_needed:
		print("%s tool is not correct here" % player_interacting.held_object.name)
		return
	else:
		print("produce ingredient")
		produce_ingredient()
	

func _on_area_2d_body_entered(body: Node2D) -> void:
	self.interactable = true
	if body is Player:
		player_interacting = body


func _on_area_2d_body_exited(body: Node2D) -> void:
	self.interactable = false
	if body is Player:
		player_interacting = null
