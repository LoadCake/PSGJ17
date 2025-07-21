extends HoldableInstance
class_name IngredientInstance
@onready var sprite_2d: Sprite2D = $Sprite2D

# onready set the texture for the sprite from the ingredient
@export var ingredient: Ingredient

func _ready() -> void:
	sprite_2d.texture = ingredient.sprite_tex
