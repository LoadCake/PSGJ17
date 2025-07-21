class_name Ingredient
extends Resource
@export var name: String
@export var color: Color
@export var effect: Effect
@export var desc: String
@export var sprite_tex: Texture2D
@export var processed: Ingredient = null

enum Effect{
	Detoxifying,
	Energizing,
	Refreshing,
	Regulatory,
	Oxidizing,
	Grounding,
	Protecting,
	Calming,
	Healing,
	Cleansing,
	Demulcing,
	Prebiotic,
}

func _init(_name: String, _color: Color, _effect: Effect, _desc: String, _sprite_tex: Texture2D) -> void:
	name = _name
	color = _color
	effect = _effect
	desc = _desc
	sprite_tex = _sprite_tex
